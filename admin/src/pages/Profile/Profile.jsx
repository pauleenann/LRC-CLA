import React, { useEffect, useState } from 'react';
import AdminNavbar from '../../components/AdminNavbar/AdminNavbar';
import AdminTopNavbar from '../../components/AdminTopNavbar/AdminTopNavbar';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { 
  faUser, 
  faLock, 
  faChevronRight
} from '@fortawesome/free-solid-svg-icons';
import './Profile.css';
import { useDispatch, useSelector } from 'react-redux';
import axios from 'axios';
import Swal from 'sweetalert2';

const Profile = () => {
    const { userId } = useSelector(state => state.username);
    const [userData, setUserData] = useState({
        username: '',
        firstName: '',
        lastName: '',
        role: '',
        role_id:'',
        email:''
    });
    const [passwordData, setPasswordData] = useState({
        currentPassword: '',
        newPassword: '',
        confirmPassword: ''
    });
    const [activeTab, setActiveTab] = useState('account'); // 'account' or 'password'
    const [originalUserData, setOriginalUserData] = useState(null);
    const [usernameValid, setUsernameValid] = useState(true);
    const [usernameChecking, setUsernameChecking] = useState(false);
    const [isCurrentPasswordCorrect, setIsCurrentPasswordCorrect] = useState(false);
    const [passwordError, setPasswordError] = useState('')
    const [newPasswordError, setNewPasswordError] = useState('');
    const [confirmPasswordError, setConfirmPasswordError] = useState('');
    const [emailError, setEmailError] = useState('');
    const [isEmailExist, setIsEmailExist] = useState(false);
    const [isEmailValid, setIsEmailValid] = useState(false);
    const [isEmailVerified,setIsEmailVerified] = useState(true);
    const [token,setToken] = useState(null)

    useEffect(() => {
        if(!userId) return;
        getUserProfile();
    }, [userId]);

    useEffect(() => {
        if (!userData.username.trim() || userData.username === originalUserData?.username) {
            setUsernameValid(true);
            return;
        }
    
        const delayDebounce = setTimeout(() => {
            validateUsername(userData.username);
        }, 500); // debounce
    
        return () => clearTimeout(delayDebounce);
    }, [userData.username, originalUserData]);    

    useEffect(() => {
        if (!userData.email) return;
        setEmailError('');
        setIsEmailValid(false);
    
        const delayDebounce = setTimeout(() => {
            if (validateEmail(userData.email)) {
                checkEmail(userData.email);
            } else {
                setEmailError('Invalid email format');
            }
        }, 500); // Wait 500ms after user stops typing
    
        return () => clearTimeout(delayDebounce); // Clean up on new keystroke
    }, [userData.email]);

    useEffect(() => {
        if (!passwordData.currentPassword || passwordData.currentPassword.length < 3) {
            setIsCurrentPasswordCorrect(false);
            return;
        }
    
        setPasswordError('');
        const delayDebounce = setTimeout(() => {
            verifyPassword(passwordData.currentPassword, userData.username);
        }, 500);
    
        return () => clearTimeout(delayDebounce);
    }, [passwordData.currentPassword]);
    

    const verifyPassword = async (password, uname) => {
        try {
            const response = await axios.get(`http://localhost:3001/api/user/verify-password`, {
                params: {
                    password,
                    username: uname
                }
            });
    
            if (response.status === 200) {
                setIsCurrentPasswordCorrect(true);
            }
        } catch (error) {
            console.log('Cannot verify password: ', error);
            setIsCurrentPasswordCorrect(false);
    
            // Get message from backend if available
            if (error.response?.data?.error) {
                setPasswordError(error.response.data.error);
            } else {
                setPasswordError('Unable to verify password.');
            }
        }
    };

    const validateNewPassword = () => {
        setNewPasswordError('');
        setConfirmPasswordError('');
    
        const { currentPassword, newPassword, confirmPassword } = passwordData;
    
        if (newPassword === currentPassword) {
            setNewPasswordError('New password must be different from current password.');
            return false;
        }
    
        const strongRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$/;
        if (!strongRegex.test(newPassword)) {
            setNewPasswordError('Password must be at least 8 characters, include upper & lower case, a number, and a special character.');
            return false;
        }
    
        if (newPassword !== confirmPassword) {
            setConfirmPasswordError('Passwords do not match.');
            return false;
        }
    
        return true;
    };
    
    const handlePasswordSubmit = async (e) => {
        e.preventDefault();
    
        if (!validateNewPassword()) return;
    
        try {
            await axios.put(`http://localhost:3001/api/user/change-password/${userId}`, {
                currentPassword: passwordData.currentPassword,
                newPassword: passwordData.newPassword
            });
    
            Swal.fire({
                title: "Password Updated!",
                text: "Your password has been changed successfully.",
                icon: "success",
                confirmButtonColor: "#54CB58"
            });
    
            // Reset fields
            setPasswordData({
                currentPassword: '',
                newPassword: '',
                confirmPassword: ''
            });
    
        } catch (error) {
            console.error('Password update failed:', error);
            Swal.fire({
                title: "Error!",
                text: "There was a problem updating your password.",
                icon: "error",
                confirmButtonColor: "#94152b"
            });
        }
    };
    

    const validateEmail = (email) => {
        const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        return emailRegex.test(email);
    }

    const getUserProfile = async() => {
        try {
            console.log(userId);
            const response = await axios.get(`http://localhost:3001/api/user/profile/${userId}`);
            const data = response.data[0];
            const fetchedData = {
                username: data.staff_uname,
                firstName: data.staff_fname,
                lastName: data.staff_lname,
                role: data.role_name,
                role_id: data.role_id,
                email: data.staff_email
            };
    
            setUserData(fetchedData);
            setOriginalUserData(fetchedData); // Save the original for comparison
        } catch (error) {
            console.error("Error fetching user profile:", error);
        }
    }

    const validateUsername = async (username) => {
        setUsernameChecking(true);
        try {
            const response = await axios.get(
                `http://localhost:3001/api/user/check-username/${username}?excludeId=${userId}`
            );
            setUsernameValid(!response.data.exists); // true if username is available
        } catch (error) {
            console.error('Username validation error:', error);
            setUsernameValid(false);
        } finally {
            setUsernameChecking(false);
        }
    };

    const checkEmail = async (email) => {
        try {
          const response = await axios.get(
            `http://localhost:3001/api/user/check-email/${email}?excludeId=${userId}`
          );
      
          setIsEmailExist(response.data.exists);
          setEmailError(response.data.error || '');
          setIsEmailValid(userData.email !== originalUserData.email);
          setIsEmailVerified(response.data.verified)
        } catch (error) {
          console.error('Email validation error:', error);
        }
      };

    const handleUserDataChange = (e) => {
        const { name, value } = e.target;
        setUserData(prev => ({
            ...prev, 
            [name]: value
        }));
    };

    const handlePasswordChange = (e) => {
        const { name, value } = e.target;
        setPasswordData({...passwordData, [name]: value});
    };

    const handleUserDataSubmit = (e) => {
        e.preventDefault();
        // Handle form submission
        console.log('Updated user data:', userData);
        // Add API call to update user data
    };

    const isEdited = () => {
        if (!originalUserData) return false;

        const isChanged = (
            userData.username !== originalUserData.username ||
            userData.firstName !== originalUserData.firstName ||
            userData.lastName !== originalUserData.lastName ||
            userData.email !== originalUserData.email ||
            userData.role !== originalUserData.role
        );
    
        const hasEmptyField = (
            !userData.username.trim() ||
            !userData.firstName.trim() ||
            !userData.lastName.trim() ||
            !userData.role.trim()
        );
    
        return isChanged && !hasEmptyField && isEmailVerified;
    };

    const updateAccount = async () => {
        const result = await Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "question",
            showCancelButton: true,
            confirmButtonColor: "#54CB58",
            cancelButtonColor: "#94152b",
            confirmButtonText: "Yes, update!"
        });
    
        if (!result.isConfirmed) return;
    
        try {
            await axios.put(`http://localhost:3001/api/user/update/${userId}`, userData);
    
            await Swal.fire({
                title: "Updated!",
                text: "Your account has been updated.",
                icon: "success",
                confirmButtonColor: "#54CB58"
            });
    
            window.location.reload();
        } catch (error) {
            console.error("Cannot update account:", error);
            Swal.fire({
                title: "Error!",
                text: "There was a problem updating your account.",
                icon: "error",
                confirmButtonColor: "#94152b"
            });
        } 
    };

    useEffect(() => {
        if (!token) return;

        // Set up an interval to check periodically (every 5 seconds)
        const intervalId = setInterval(() => {
          checkIfVerified();
        }, 5000);
        
        // Clean up interval on component unmount
        return () => clearInterval(intervalId);
      }, [token]);

    const verifyEmail = async () => {
        try {
          const response = await axios.post(`http://localhost:3001/api/user/verify-email`, userData);
          // Store token in localStorage for persistence
          if (response.data.token) {
            setToken(response.data.token);
          }
          
          Swal.fire({
            title: "Verification Email Sent!",
            text: "Please check your email inbox to complete verification.",
            icon: "success",
            confirmButtonColor: "#54CB58"
          });
        } catch (error) {
          console.log('Cannot verify email. An error occurred: ', error);
          
          Swal.fire({
            title: "Error!",
            text: "There was a problem sending the verification email.",
            icon: "error",
            confirmButtonColor: "#94152b"
          });
        }
      };

    const checkIfVerified = async () => {
        try {
          const res = await axios.get("http://localhost:3001/api/user/check-verified", {
            params: { token: token, username:userData.username }
          });
          
          if (res.status === 200) {
            setIsEmailVerified(true);
          }
        } catch (err) {
          console.log('Cannot check if email is verified: ', err);
        } 
      };

      console.log(passwordData)

    return (
        <div className='profilepage bg-light'>
            <div>
                <AdminNavbar />
            </div>
            <div>
                <AdminTopNavbar />
                <div className="settings-container">
                    <div className="settings-sidebar">
                        <div className="settings-menu">
                            <a 
                                href="#" 
                                className={`menu2 ${activeTab === 'account' ? 'active' : ''}`}
                                onClick={(e) => {
                                    e.preventDefault();
                                    setActiveTab('account');
                                }}
                            >
                                <FontAwesomeIcon icon={faUser} className="menuicon" />
                                <span>Account Details</span>
                                <FontAwesomeIcon icon={faChevronRight} className="arrow-icon" />
                            </a>
                            <a 
                                href="#" 
                                className={`menu2 ${activeTab === 'password' ? 'active' : ''}`}
                                onClick={(e) => {
                                    e.preventDefault();
                                    setActiveTab('password');
                                }}
                            >
                                <FontAwesomeIcon icon={faLock} className="menuicon" />
                                <span>Change Password</span>
                                <FontAwesomeIcon icon={faChevronRight} className="arrow-icon" />
                            </a>
                        </div>
                    </div>
                    
                    <div className="settings-content">
                        {activeTab === 'account' ? (
                            <>
                                <h1 className="settings-title">Account Settings</h1>
                                
                                <form onSubmit={handleUserDataSubmit} className="settings-form">
                                    <div className="form-group">
                                        <label htmlFor="username">Username</label>
                                        <input 
                                            type="text" 
                                            id="username" 
                                            name="username" 
                                            value={userData.username} 
                                            onChange={handleUserDataChange} 
                                            className={`form-control ${!usernameValid ? 'is-invalid' : ''}`}
                                        />
                                        {!usernameValid && (
                                            <div className="invalid-feedback">
                                                Username is already taken.
                                            </div>
                                        )}
                                    </div>
                                    
                                    <div className="form-group">
                                        <label htmlFor="firstName">First name</label>
                                        <input 
                                            type="text" 
                                            id="firstName" 
                                            name="firstName" 
                                            value={userData.firstName} 
                                            onChange={handleUserDataChange} 
                                            className="form-control text-capitalize"
                                        />
                                    </div>
                                    
                                    <div className="form-group">
                                        <label htmlFor="lastName">Last name</label>
                                        <input 
                                            type="text" 
                                            id="lastName" 
                                            name="lastName" 
                                            value={userData.lastName} 
                                            onChange={handleUserDataChange} 
                                            className="form-control text-capitalize"
                                        />
                                    </div>
                                    <div className="form-group">
                                        <label htmlFor="email">Email</label>
                                        <div>
                                            <input 
                                                type="email" 
                                                id="email" 
                                                name="email" 
                                                value={userData.email} 
                                                onChange={handleUserDataChange} 
                                                className={`form-control ${emailError ? 'is-invalid' : ''}`}
                                            />
                                            {!isEmailExist && isEmailValid && !isEmailVerified && (
                                            <button 
                                                type="button"
                                                className="btn btn-success mt-1 verify"
                                                onClick={verifyEmail}
                                            >
                                                Verify now
                                            </button>
                                            )}
                                            {isEmailValid && isEmailVerified && (
                                                <div className="text-success mt-1 verified">
                                                    Your email is verified
                                                </div>
                                            )}
                                            {emailError && (
                                            <div className="invalid-feedback">
                                                {emailError}
                                            </div>
                                            )}
                                        </div>
                                    </div>
                                    
                                    <div className="form-group">
                                        <label htmlFor="role">Role</label>
                                        <input 
                                            type="text" 
                                            id="role" 
                                            name="role" 
                                            value={userData.role}
                                            className="form-control text-capitalize"
                                            disabled
                                        />
                                    </div>
                                    
                                    <div className="form-actions">
                                        <button 
                                            type="button" 
                                            className="btn-save" 
                                            disabled={!isEdited() || !usernameValid || !!emailError}
                                            onClick={updateAccount}
                                        >
                                            Save Changes
                                        </button>
                                    </div>
                                </form>
                            </>
                        ) : (
                            <>
                                <h1 className="settings-title">Change Password</h1>
                                
                                <form onSubmit={handlePasswordSubmit} className="settings-form">
                                    <div className="form-group">
                                        <label htmlFor="currentPassword">Current Password</label>
                                        <input 
                                            type="password" 
                                            id="currentPassword" 
                                            name="currentPassword" 
                                            autoComplete="new-password" // <-- prevent autofill
                                            value={passwordData.currentPassword} 
                                            onChange={handlePasswordChange} 
                                            className={`form-control ${passwordError ? 'is-invalid' : ''}`}
                                            required
                                        />
                                        {passwordError && (
                                            <div className="invalid-feedback">
                                                {passwordError}
                                            </div>
                                        )}
                                    </div>
                                    
                                    <div className="form-group">
                                        <label htmlFor="newPassword">New Password</label>
                                        <input 
                                            type="password" 
                                            id="newPassword" 
                                            name="newPassword" 
                                            value={passwordData.newPassword} 
                                            onChange={handlePasswordChange} 
                                            className={`form-control ${newPasswordError ? 'is-invalid' : ''}`}
                                            disabled={!isCurrentPasswordCorrect}
                                        />
                                        {newPasswordError && (
                                            <div className="invalid-feedback">
                                                {newPasswordError}
                                            </div>
                                        )}
                                    </div>
                                    <div className="form-group">
                                        <label htmlFor="confirmPassword">Confirm New Password</label>
                                        <input 
                                            type="password" 
                                            id="confirmPassword" 
                                            name="confirmPassword" 
                                            value={passwordData.confirmPassword} 
                                            onChange={handlePasswordChange} 
                                            className={`form-control ${confirmPasswordError ? 'is-invalid' : ''}`}
                                            disabled={!isCurrentPasswordCorrect}
                                        />
                                        {confirmPasswordError && (
                                            <div className="invalid-feedback">
                                                {confirmPasswordError}
                                            </div>
                                        )}
                                    </div>
                                    <div className="form-actions">
                                        <button 
                                            type="submit" 
                                            className="btn-save"
                                        >
                                            Update Password
                                        </button>
                                    </div>
                                </form>
                            </>
                        )}
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Profile;