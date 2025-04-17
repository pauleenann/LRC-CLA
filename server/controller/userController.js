import dotenv from 'dotenv';
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
import { db } from "../config/db.js";
import { logAuditAction } from "./auditController.js";
import { generateToken } from '../utils/generateToken.js';
import { transporter } from '../mailer/mailer.js';
import { mailOptions } from '../email/verifyUpdatedEmail.js';

dotenv.config();

export const login = async (req, res) => {
    const { username, password } = req.body;

    if (!username || !password) {
        return res.status(400).json({ message: 'Username and password are required' });
    }
    
    const query = `
        SELECT staff_id, staff_uname, staff_password, role_name
        FROM staffaccount
        JOIN roles ON staffaccount.role_id = roles.role_id
        WHERE staff_uname = ? AND staff_status = 'active'`;

    try {
        db.query(query, [username], async (err, results) => {
            if (err) {
                return res.status(500).json({ error: 'Database query failed' });
            }

            if (results.length === 0) {
                return res.status(404).json({ message: 'Invalid username or password' });
            }

            const user = results[0];
            const role = user.role_name;

            // Compare provided password with hashed password from the database
            const isMatch = await bcrypt.compare(password, user.staff_password);

            if (!isMatch) {
                return res.status(401).json({ message: 'Invalid username or password' });
            }

            // Generate a JWT for the user
            const payload = { id: user.staff_id, username: user.staff_uname, role };
            const token = jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: '24h' });

            // Optionally store the token as a secure cookie
            res.cookie('authToken', token, {
                httpOnly: true,
                secure: process.env.NODE_ENV === 'production',
                sameSite: 'strict',
                maxAge: 24 * 60 * 60 * 1000, // 24 hours
            });

            logAuditAction(
                username,
                'SELECT',
                'staffaccount',
                null,
                null,
                JSON.stringify("Logged In ")
            );

            // Send the response
            return res.status(200).json({
                message: 'Login successful',
                token, // Send the token (if needed for client-side use)
                user: { id: user.staff_id, username: user.staff_uname, role },
            });
        });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: 'Internal server error' });
    }
};

export const logout = (req, res) => {
    // Clear the authToken cookie
    const username = req.body.username;
    res.clearCookie('authToken', {
        httpOnly: true,
        secure: process.env.NODE_ENV === 'production', // Secure cookie for HTTPS only in production
        sameSite: 'strict',
    });
    logAuditAction(
        username,
        'SELECT',
        'staffaccount',
        null,
        null,
        JSON.stringify("Logged Out ")
    );

    // Send response indicating successful logout
    return res.status(200).json({ message: 'Logged out successfully' });
};

// Check Session Route
export const checkSession = (req, res) => {
    const token = req.cookies.authToken;

    if (!token) {
        return res.status(401).json({ loggedIn: false });
    }

    jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
        if (err) {
            return res.status(401).json({ loggedIn: false });
        }

        // Check if token has expired
        const currentTime = Math.floor(Date.now() / 1000);
        if (decoded.exp < currentTime) {
            return res.status(401).json({ loggedIn: false });
        }

        return res.status(200).json({ loggedIn: true, userID:decoded.id, userRole: decoded.role, username: decoded.username });
    });
};

export const profile = (req,res)=>{
    const {id} = req.params
    console.log(id)

    const q = `
        SELECT 
            s.staff_uname,
            s.staff_fname,
            s.staff_lname,
            staff_email,
            r.role_name,
            r.role_id
        FROM staffaccount s
        JOIN roles r ON r.role_id = s.role_id
        WHERE s.staff_id = ?
    `

    db.query(q,id,(err,results)=>{
        if(err) return res.send(err)
           return res.json(results)
    })
}

export const checkUsername = (req, res) => {
    const { username } = req.params;
    const { excludeId } = req.query;

    let q = 'SELECT * FROM staffaccount WHERE staff_uname = ?';
    const params = [username];

    // Optional: Exclude the current user from the check
    if (excludeId) {
        q += ' AND staff_id != ?';
        params.push(excludeId);
    }

    db.query(q, params, (err, results) => {
        if (err) return res.status(500).json({ error: err });
    
        // Return the opposite of your current logic for clarity
        if (results.length > 0) {
            return res.json({ exists: true });  // Username is already taken
        } else {
            return res.json({ exists: false });  // Username is available
        }
    });    
};

export const checkEmail = (req, res) => {
    const { email } = req.params;
    const { excludeId } = req.query;

    let q = 'SELECT * FROM staffaccount WHERE staff_email = ?';
    const params = [email];

    // Optional: Exclude the current user from the check
    if (excludeId) {
        q += ' AND staff_id != ?';
        params.push(excludeId);
    }

    db.query(q, params, (err, results) => {
        if (err) return res.status(500).json({ error: err });
    
        // Return the opposite of your current logic for clarity
        if (results.length > 0) {
            return res.json({ exists: true, error: 'This email is already taken. Please another email.' });  // email is already taken
        } else {
            return res.json({ exists: false, verified: false });  // email is available
        }
    });    
};

export const updateAccount = (req,res)=>{
    const {id} = req.params
    const {
        username,
        firstName,
        lastName,
        email
    } = req.body

    const q = `
        UPDATE staffaccount
        SET
            staff_uname = ?,
            staff_fname = ?,
            staff_lname = ?,
            staff_email = ?
        WHERE staff_id = ?
    `

    logAuditAction(
        username,
        'UPDATE',
        'staffaccount',
        null,
        null,
        JSON.stringify("Updated an account: " + firstName + " " + lastName))

    db.query(q,[username,firstName,lastName,email,id],(err,results)=>{
        if(err) return res.send(err)
           return res.json(results)
    })
}

export const verifyEmail = (req,res)=>{
    const {
        username,
        firstName,
        lastName,
        email,
        role_id
    } = req.body

    const token = generateToken();

    const expiresAt = new Date(Date.now() + 60 * 1000); // 1 minute

    const invValues = [
        firstName,
        lastName,
        username,
        role_id,
        email,
        token,
        expiresAt
    ]

    const query = `
            INSERT INTO invitation (fname, lname, uname, role_id, email, token, token_expires_at) VALUES (?, ?, ?, ?, ?, ?, ?)`;

    db.query(query, invValues, (err, results) => {
        if (err) {
            console.error(err);
            return res.status(500).send({ error: 'Database query failed' });
        }
        
        // // Log the audit action
        // logAuditAction(username, 'UPDATE', 'staffaccount', staffUname, 'active', JSON.stringify("Deactivated a user: " + staffUname));
    
        const verificationLink = `http://localhost:3000/verify?token=${token}`;
    
        // Send email
        transporter.sendMail(mailOptions(email,firstName,verificationLink), function(err, data) {
            if (err) {
                console.log("Error " + err);
            } else {
                console.log("Email sent successfully");
                return res.status(200).json({ success: true });
            }
        });
        return res.status(200).json({ token: token });
    });
}

export const verifyToken = async (req, res) => {
    const { token } = req.query;
    console.log('Received token:', token);
  
    if (!token) return res.status(400).json({ message: 'Token is required.' });
  
    const query = `SELECT * FROM invitation WHERE token = ? AND is_used = false`;
  
    db.query(query, [token], (err, results) => {
      if (err) {
        console.error('Database error:', err);
        return res.status(500).send({ error: 'Database query failed' });
      }
  
      if (results.length === 0) {
        return res.status(400).json({ message: 'Invalid or already used token.' });
      }
  
      const invitation = results[0];
  
      if (new Date(invitation.token_expires_at) < new Date()) {
        return res.status(400).json({ message: 'Token expired.' });
      }
  
    //   return res.status(200).json({ message: 'Token is valid.', email: invitation.email });

     const updateQuery = `UPDATE invitation SET is_used = true WHERE inv_id = ?`;
    
     db.query(updateQuery, [invitation.inv_id], (updateErr) => {
        if (updateErr) {
            console.error('Failed to update invitation:', updateErr);
            return res.status(500).json({ message: 'Failed to update invitation.' });
        }
      
        return res.status(200).json({ message: 'Account activated successfully.' });
    });
    });
  };
;

export const checkIsEmailVerified = (req,res)=>{
    const { token, username } = req.query;
    console.log('Received token:', token);
  
    if (!token) return res.status(400).json({ message: 'Token is required.' });
  
    const query = `SELECT * FROM invitation WHERE token = ? AND is_used = true AND uname = ?`;
  
    db.query(query, [token,username], (err, results) => {
      if (err) {
        console.error('Database error:', err);
        return res.status(500).send({ error: 'Database query failed' });
      }
  
      if (results.length === 0) {
        return res.status(400).json({ message: 'Invalid or already used token.' });
      }
  
      const invitation = results[0];
  
      if (new Date(invitation.token_expires_at) < new Date()) {
        return res.status(400).json({ message: 'Token expired.' });
      }
  
      return res.status(200).json({ message: 'Token is valid.', email: invitation.email });
    })
}