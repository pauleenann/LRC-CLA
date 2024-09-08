import express from "express"
import mysql from "mysql"
import cors from "cors"

const app = express()
app.use(express.json())
app.use(cors())

app.listen(8000,()=>{
    console.log('this is the backend')
})