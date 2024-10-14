import React, { useState } from 'react'
import './AddItem.css'
import { Link } from 'react-router-dom'
import CatalogInfo from '../CatalogInfo/CatalogInfo'
import Cataloging from '../Cataloging/Cataloging'



const AddItem = () => {
    const [bookData, setBookData]=useState({
        mediaType:'Book',
        quantity:0,
        status:'',
        title:'',
        authors:[],
        isbn:'',
        publisher:'',
        publishedDate:'',
        genre:'',
        description:'',
        department:'',
        course:'',
        shelfNo:'',
        isActive:false,
        isPublished:false,
        isCirculation:false
    })

    console.log(bookData.isbn)

    console.log(bookData)
    
    const handleChange = (e)=>{
        const {name,value} = e.target
        setBookData({...bookData,[name]:value})
    }

    const handleAuthor=(selectedAuthor)=>{
        setBookData((prevdata)=>({
            ...prevdata,
            authors:[...prevdata.authors,selectedAuthor.value]
        }))
    }

    const addAuthor=(author)=>{
        setBookData((prevdata)=>({
            ...prevdata,
            authors:[...prevdata.authors,author]
        }))
    }

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
            <CatalogInfo handleChange={handleChange} bookData={bookData} addAuthor={addAuthor}/>
        </div>
                  
        <div className="cataloging">
            <Cataloging handleChange={handleChange}/>
        </div>

        <div className="cancel-save">
            <button className="add-item-cancel">
                Cancel
            </button>
            <button className="add-item-save">
                <i class="fa-regular fa-floppy-disk"></i>
                <span>Save</span>
            </button>
        </div>
      
    </div>
  )
}

export default AddItem
