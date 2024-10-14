import React, { useEffect, useState } from 'react'
import './BookInput.css'
import AuthorInput from '../AuthorInput/AuthorInput'
import PublisherModal from '../PublisherModal/PublisherModal'
import axios from 'axios'

const BookInput = ({disabled, setBook, handleChange,bookData,addAuthor}) => {
    const [isbn, setIsbn] = useState("");
    const [open, setOpen] = useState(false)
    
    useEffect(()=>{
        getBookData();
    },[bookData.isbn])

    console.log(bookData.isbn)

    const getBookData = async()=>{
        // create an object na katulad bookData tapos ilalagay nalang siya doon using setBookData
        const book = {}
        
        if(bookData.isbn.length==13){
            try{
                const response = await fetch(`http://localhost:3001/bookData/${bookData.isbn}`).then(data=>data.json()).then(data=>data.items[0].volumeInfo)
                console.log(response);
                // store retrieve data sa book object
                book.title = response.title
                book.authors = response.authors
                book.publishedDate = response.publishedDate
                book.publisher = response.publisher
                book.cover = response.imageLinks.thumbnail
                book.description = response.description
                // setBookData(book)
                // setBook ay para sa catalogInfo component para madisplay niya ung title, description and cover
                // setBook(book)
            }catch(err){
                console.log(err.message)
            }
        }
    }

    // allows ung pagbabago ng retrieved data
    // const handleChange=(property)=>(e)=>{
    //     const changes = e.target.value

    //     setBookData((prevData)=>({
    //         ...prevData,
    //         [property]: changes
    //     }))
    // }
    
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
                    <input type="number" placeholder='Enter ISBN' disabled={disabled?true:false} onChange={handleChange} name='isbn'/>
                </div>
                {/* publisher */}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Publisher</label>
                    <input type="text" placeholder='Enter Publisher' disabled={disabled?true:false} name='publisher' onChange={handleChange}/>  
                    <span className='add-publisher'>Publisher not listed? Please <button className='add-publisher-button' onClick={()=>{disabled?setOpen(false):setOpen(true)}} >"add publisher here"</button> first.</span>
                </div>
                {/* publisher date*/}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Publish Date *</label>
                    {/* <input type="date" name="" id="" placeholder='Select date' disabled={disabled?true:false}/> */}
                    <input type="text" name="publishedDate" id="" placeholder='Select date' disabled={disabled?true:false} onChange={handleChange}/>

                </div>
            </div>
        </div>
        <PublisherModal open={open} close={()=>setOpen(!open)} handleChange={handleChange}/>
    </div>
  )
}

export default BookInput
