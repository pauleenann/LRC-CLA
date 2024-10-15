import React, { useEffect, useState } from 'react'
import './BookInput.css'
import AuthorInput from '../AuthorInput/AuthorInput'
import PublisherModal from '../PublisherModal/PublisherModal'
import axios from 'axios'

const BookInput = ({disabled,handleChange,bookData,addAuthor,setBookData}) => {
    const [isbn, setIsbn] = useState("");
    const [open, setOpen] = useState(false)
    
    useEffect(()=>{
        getBookData();
    },[bookData.isbn])

    console.log(bookData.isbn)

    const getBookData = async()=>{
        // create an object na katulad bookData tapos ilalagay nalang siya doon using setBookData
        const book = {}
        
        if(bookData.isbn){
            try{
                const response = await fetch(`http://localhost:3001/bookData/${bookData.isbn}`).then(data=>data.json()).then(data=>data.items[0].volumeInfo)
                console.log(response);
                // // store retrieve data sa book object
                setBookData((prevdata)=>({
                    ...prevdata,
                    title: response.title || '',
                    authors: response.authors || [],
                    publishedDate: response.publishedDate || '',
                    publisher: response.publisher || '',
                    cover: response.imageLinks.thumbnail || '',
                    description: response.description || ''
                }))
            }catch(err){
                console.log(err.message)
            }
        }
    }
  return (
    <div className='row'>
        {/* author */}
        <div className="col-6 info-input-box">
            <label htmlFor="">Author/s *</label>
            {/* author box */}
            <AuthorInput disabled={disabled} handleChange={handleChange} bookData={bookData} addAuthor={addAuthor}/>
        </div>
        {/* isbn, publisher, publish date */}
        <div className="col-6 info-input-box">
            <div className="row">
                {/* isbn */}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">ISBN</label>
                    <input type="number" placeholder='Enter ISBN' disabled={disabled?true:false} onChange={handleChange} name='isbn' value={bookData.isbn?bookData.isbn:''}/>
                </div>
                {/* publisher */}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Publisher</label>
                    <input type="text" placeholder='Enter Publisher' disabled={disabled?true:false} name='publisher' onChange={handleChange} value={bookData.publisher?bookData.publisher:''}/>  
                    <span className='add-publisher'>Publisher not listed? Please <button className='add-publisher-button' onClick={()=>{disabled?setOpen(false):setOpen(true)}} >"add publisher here"</button> first.</span>
                </div>
                {/* publisher date*/}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Publish Date *</label>
                    {/* <input type="date" name="" id="" placeholder='Select date' disabled={disabled?true:false}/> */}
                    <input type="text" name="publishedDate" id="" placeholder='Select date' disabled={disabled?true:false} onChange={handleChange} value={bookData.publishedDate?bookData.publishedDate:''}/>

                </div>
            </div>
        </div>
        <PublisherModal open={open} close={()=>setOpen(!open)} handleChange={handleChange}/>
    </div>
  )
}

export default BookInput
