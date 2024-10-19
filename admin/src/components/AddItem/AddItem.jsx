import React, { useEffect, useState } from 'react'
import './AddItem.css'
import { Link } from 'react-router-dom'
import CatalogInfo from '../CatalogInfo/CatalogInfo'
import Cataloging from '../Cataloging/Cataloging'
import axios from 'axios'


const AddItem = () => {
    const [type,setType] = useState('')
    const [bookData, setBookData]=useState({
        mediaType:'book',
        authors:[],
        genre:[],
        isCirculation:false
    })
    const [error, setError]=useState({})

    useEffect(() => {
            // Reset bookData when mediaType changes
        if(bookData.mediaType==='thesis'){
            setBookData({
                mediaType: bookData.mediaType, // keep the changed mediaType
                authors: [],
                advisers:[],
                isCirculation: false,
            });
        }else if(bookData.mediaType==='book'){
             setBookData({
                mediaType: bookData.mediaType, // keep the changed mediaType
                authors: [],
                genre: [],
                isCirculation: false,
            });
        }else{
            setBookData({
                mediaType: bookData.mediaType, // keep the changed mediaType
                authors: [],
                isCirculation: false,
            });
        }
    }, [bookData.mediaType]);

    console.log(bookData)
    
    const handleChange = (e)=>{
        const {name,value} = e.target
        setBookData({...bookData,[name]:value})
    }

    // add author
    const addAuthor=(author)=>{
        if(author.length!=1){
            setBookData((prevdata)=>({
                ...prevdata,
                authors:[...prevdata.authors,author]
            }))
        }else{
            console.log('enter data')
        }
    }

    // add publisher
    const addPublisher=(author)=>{
        if(author.length!=1){
            setBookData((prevdata)=>({
                ...prevdata,
                authors:[...prevdata.authors,author]
            }))
        }else{
            console.log('enter data')
        }
    }

    // add adviser
    const addAdviser=(adviser)=>{
        if(adviser.length!=1){
            setBookData((prevdata)=>({
                ...prevdata,
                advisers:[...prevdata.advisers,adviser]
            }))
        }else{
            console.log('enter data')
        }
    }

    // handling chosen genre
    const addGenre=(selectedGenre)=>{
        // console.log(selectedGenre[0].value)\
        const genre = selectedGenre.map(item=>{
           return item.value
        })
        console.log(genre)
        setBookData((prevdata)=>({
         ...prevdata,
                genre:genre
        }))
    }

    // handle file
    const handleFileChange = (e)=>{
        setBookData((prevData)=>({
          ...prevData,
          file:e.target.files[0]
        }))
      }

      //form validation
      const formValidation = ()=>{
        const err = {}

        if(!bookData.quantity||bookData.quantity===0){
            err.quantity = 'Please enter quantity'
        }
        if(!bookData.status){
            err.status = 'Please select status'
        }
        if(!bookData.title){
            err.title = 'Please enter title'
        }
        if(bookData.authors.length===0){
            err.authors = 'Please specify author/s'
        }
        
        setError(err)
      }

    // handle upload
    const handleSaveResource = async()=>{
        formValidation()
        if(typeof bookData.file === 'string'){
            // Fetch the image from the URL
            const response = await fetch(bookData.file);
            const blob = await response.blob(); // Convert response to Blob
            //convert link to vlog in order to store in database
            bookData.file = blob
        }

        // try{
        //     const formData = new FormData();
        //     //iterates throu bookdata
        //     Object.entries(bookData).map(([key,value])=>{
        //         formData.append(key,value)
        //     })

        //     // send data to endpoint
        //     const response = await axios.post('http://localhost:3001/upload',formData)

        // }catch(err){
        //     console.log(err.message)
        // }
        
        
    }

    // handle toggle buttons
    const handleToggle = (e)=>{
        const {name, checked} = e.target
        console.log(checked)
        if(name==='isActive'){
            setBookData((prevdata)=>({
                ...prevdata,
                isActive:checked
            }))
        }else if(name==='isPublished'){
            setBookData((prevdata)=>({
                ...prevdata,
                isPublished:checked
            }))
        }else{
            setBookData((prevdata)=>({
                ...prevdata,
                isCirculation:checked
            }))
        }
        
    }

    Object.entries(bookData).map(([key,value])=>console.log(value))
  return (
    <div className='add-item-container'>
        <h1 className='m-0'>Cataloging</h1>

        <div className='add-item-path-button'>
            <Link to='/catalog'>
                <button className='add-item-back-button'>
                    <i class="fa-solid fa-arrow-left"></i>
                    <p>Back</p>
                </button>
            </Link>
            <div className="add-item-path">
                <p>Cataloging / <span>Add new Item</span></p>
            </div>
        </div>

        <div className='item-information'>
            <CatalogInfo handleChange={handleChange} bookData={bookData} addAuthor={addAuthor} setType={setType} addGenre={addGenre} addAdviser={addAdviser} setBookData={setBookData} handleFileChange={handleFileChange} formValidation={formValidation} error={error}/>
        </div>
                  
        <div className="cataloging">
            <Cataloging handleChange={handleChange} bookData={bookData} handleToggle={handleToggle}/>
        </div>

        <div className="cancel-save">
            <button className="add-item-cancel">
                Cancel
            </button>
            <button className="add-item-save" onClick={handleSaveResource}>
                <i class="fa-regular fa-floppy-disk"></i>
                <span>Save</span>
            </button>
        </div>
      
    </div>
  )
}

export default AddItem
