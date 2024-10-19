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

const storage = multer.diskStorage({
    destination: function(req,file,cb){
        return cb(null,"./public/images")
    },
    filename:function(req,file,cb){
        return cb(null,`${Date.now()}_${file.originalname}`)
    }
})

//upload: This is an instance of multer, configured to use the storage we just defined. It's ready to handle file uploads now!
const upload = multer({storage})

app.post('/save',upload.single('file'),(req,res)=>{
    console.log(req.body.mediaType)

    const q = 'INSERT INTO resources (resource_title, resource_description, resource_published_date, resource_quantity, resource_is_circulation, dept_id, cat_id) VALUES (?, ?, ?, ?, ?, ?, ?)'

    const resources = [
        req.body.title,
        req.body.description,
        req.body.publishedDate,
        req.body.quantity,
        req.body.isCirculation,
        req.body.department,
        req.body.course
    ]

    db.query(q,resources,(err,results)=>{
        if(err) res.send(err)
            res.send(results)
    })

    
    
})

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



app.listen(3001,()=>{
    console.log('this is the backend')
})