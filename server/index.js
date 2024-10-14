import express from "express"
import mysql from "mysql"
import cors from "cors"
import axios from 'axios'

const app = express()
app.use(express.json())
app.use(cors())

// api key for google books
const apikey = "AIzaSyDq8MNGVWbLp-R-SFFe-SGL7Aa8CuMak0s";

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

app.listen(3001,()=>{
    console.log('this is the backend')
})