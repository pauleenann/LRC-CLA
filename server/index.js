import express from "express"
import mysql from "mysql"
import cors from "cors"
import axios from 'axios'
import multer from 'multer' // This is a tool that helps us upload files (like images or documents) from a form to our server.
import fs from 'fs'

const app = express()
app.use(express.json())
app.use(cors())

// api key for google books
const apikey = "AIzaSyDq8MNGVWbLp-R-SFFe-SGL7Aa8CuMak0s";

// connect server to database
const db = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'lrc-cla'
})

db.connect((err) => {
    if (err) {
        console.error('Error connecting to the database:', err);
        return;
    }
    console.log('Connected to the database');
});

const storage = multer.diskStorage({
    destination: function(req,file,cb){
        return cb(null,"./public/images")
    },
    filename:function(req,file,cb){
        return cb(null,`${Date.now()}_${file.originalname}`)
    }
})

//upload: This is an instance of multer, configured to use the storage we just defined. It's ready to handle file uploads now!
const upload = multer({ storage });

app.post('/save', upload.single('file'), (req, res) => {
    const mediaType = req.body.mediaType;
    const filePath = req.file.path; // Get the file path
    const existingPublisher = req.body.publisher_id; //this is not 0 if pinili niya ay existing na publisher

   const authors = req.body.authors.split(',')

    //insert data in resources data
    const q = 'INSERT INTO resources (resource_title, resource_description, resource_published_date, resource_quantity, resource_is_circulation, dept_id, cat_id) VALUES (?, ?, ?, ?, ?, ?, ?)';

    const resources = [
        req.body.title,
        req.body.description,
        req.body.publishedDate,
        req.body.quantity,
        req.body.isCirculation,
        req.body.department,
        req.body.course
    ];

    db.query(q, resources, (err, results) => {
        if (err) {
            return res.status(500).send(err); 
        }

        // Get the resource_id of the newly inserted row
        const resourceId = results.insertId;

        //insert authors
        const authorQ = 'INSERT INTO author (author_fname, author_lname) VALUES (?, ?)'
        const resourceAuthorQ = 'INSERT INTO resourceauthors (resource_id, author_id) VALUES (?, ?)'
        authors.forEach(element => {
            const nameParts = element.split(' '); 
            const fname = nameParts[0]; // First name
            const lname = nameParts.length > 1 ? nameParts.slice(1).join(' ') : ''; // Last name (handles multiple words)

            const authorValue = [
                fname,
                lname
            ]
            
            db.query(authorQ,authorValue,(err,results)=>{
                if (err) {
                    return res.status(500).send(err); 
                }

                //author Id nung author info na kakainsert lang
                const authorId = results.insertId;

                //if author is inserted, insert sa resourceAuthor table
                db.query(resourceAuthorQ,[resourceId,authorId],(req,res)=>{
                    if (err) {
                        return res.status(500).send(err); 
                    }
                })
            })
        });

        //if resource is inserted in resources table, check mediaType and insert the rest of the data to their corresponding media type.
        // For example, if mediaType is book, the rest of the data will be inserted sa book table and etc

        // however, before inserting the rest of the data inside the book table, we need to insert the publisher info if the mediaType is book
        if (mediaType === 'book') {
            const checkPubIdQ = "SELECT * FROM publisher WHERE pub_id = ?"
            
            db.query(checkPubIdQ,existingPublisher,(err,results)=>{
                if (err) {
                    return res.status(500).send(err); 
                }

                //if no results found
                if(results.length===0){
                    const pubQ = 'INSERT INTO publisher (pub_name, pub_address, pub_email, pub_phone, pub_website) VALUES (?, ?, ?, ?, ?)';

                    const publisher = [
                        req.body.publisher,
                        req.body.publisher_address,
                        req.body.publisher_email,
                        req.body.publisher_number,
                        req.body.publisher_website
                    ];

                    db.query(pubQ, publisher, (err, results) => {
                        if (err) {
                            return res.status(500).send(err); 
                        }

                        // Get the publisherId of the data you just inserted
                        const publisherId = results.insertId;
                    });
                }else{
                    // Read the file data
                    fs.readFile(filePath, (err, data) => {
                        if (err) {
                            return res.status(500).send(err); 
                        }
                        //data
                        // ganitong form mo siya isstore sa database
                        //<Buffer ff d8 ff e1 5a 84 45 78 69 66 00 00 49 49 2a 00 08 00 00 00 0c 00 0f 01 02 00 09 00 00 00 9e 00 00 00 10 01 02 00 13 00 00 00 a8 00 00 00 12 01 03 00 ... 2437749 more bytes>
                        
                        // Insert the file data into the database
                        const q = 'INSERT INTO book (book_cover, book_isbn, resource_id, pub_id) VALUES (?, ?, ?, ?)';
                        const book = [
                            data,
                            req.body.isbn,
                            resourceId,
                            existingPublisher
                        ];

                        db.query(q, book, (err, result) => {
                            if (err) {
                                return res.status(500).send(err); 
                            }

                            // Optionally, delete the file from disk after saving it to the database
                            // fs.unlink() method is used to delete files in Node.js
                            // filePath - a string, Buffer or URL that, represents the file or symbolic link that has to be removed.
                            fs.unlink(filePath, (unlinkErr) => {
                                if (unlinkErr) console.error('Error deleting file:', unlinkErr);
                            });

                            // Successfully inserted image, send response
                            return res.send('Successful');
                        });
                    });
                }
            })
            
        }
    });
});


// retrieve book information from google books api using isbn
app.get('/bookData/:isbn',async (req,res)=>{
    const isbn = req.params.isbn
    try{
        const response = await axios.get(`https://www.googleapis.com/books/v1/volumes?q=isbn:${isbn}&key=${apikey}`);
        console.log(response.data)
        res.json(response.data);
        
    }catch(err){
        console.log(err)
    }
})


//retrieve list of department from database
app.get('/departments',(req,res)=>{
    const q = 'SELECT * FROM department'

    db.query(q,(err,results)=>{
        if(err) res.send(err)
            res.send(results)
    })
})

//retrieve list of catalog from database
app.get('/catalog',(req,res)=>{
    const q = 'SELECT * FROM catalog'

    db.query(q,(err,results)=>{
        if(err) res.send(err)
            res.send(results)
    })
})

//retrieve list of genre from database
app.get('/genre',(req,res)=>{
    const q = 'SELECT * FROM genre'

    db.query(q,(err,results)=>{
        if(err) res.send(err)
            res.send(results)
    })
})

//retrieve list of genre from database
app.get('/publishers',(req,res)=>{
    const q = 'SELECT * FROM publisher'

    db.query(q,(err,results)=>{
        if(err) res.send(err)
            res.send(results)
    })
})

//retrieve list of genre from database
app.get('/authors',(req,res)=>{
    const q = 'SELECT * FROM author'

    db.query(q,(err,results)=>{
        if(err) res.send(err)
            res.send(results)
    })
})




app.listen(3001,()=>{
    console.log('this is the backend')
})
