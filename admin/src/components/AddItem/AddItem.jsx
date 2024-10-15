import React, { useEffect, useState } from 'react'
import './AddItem.css'
import { Link } from 'react-router-dom'
import CatalogInfo from '../CatalogInfo/CatalogInfo'
import Cataloging from '../Cataloging/Cataloging'



const AddItem = () => {
    const [type,setType] = useState('')
    const [bookData, setBookData]=useState({
        mediaType:'book',
        authors:[],
        genre:[],
        isActive:false,
        isPublished:false,
        isCirculation:false
    })

    useEffect(() => {
            // Reset bookData when mediaType changes
        if(bookData.mediaType==='thesis'){
            setBookData({
                mediaType: bookData.mediaType, // keep the changed mediaType
                authors: [],
                advisers:[],
                isActive: false,
                isPublished: false,
                isCirculation: false,
            });
        }else if(bookData.mediaType==='book'){
             setBookData({
                mediaType: bookData.mediaType, // keep the changed mediaType
                authors: [],
                genre: [],
                isActive: false,
                isPublished: false,
                isCirculation: false,
            });
        }else{
            setBookData({
                mediaType: bookData.mediaType, // keep the changed mediaType
                authors: [],
                isActive: false,
                isPublished: false,
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
            <CatalogInfo handleChange={handleChange} bookData={bookData} addAuthor={addAuthor} setType={setType} addGenre={addGenre} addAdviser={addAdviser} setBookData={setBookData}/>
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
