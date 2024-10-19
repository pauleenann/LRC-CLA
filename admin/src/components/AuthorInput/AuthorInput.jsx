import React, { useState } from 'react'
import './AuthorInput.css'
import AuthorModal from '../AuthorModal/AuthorModal'
import PublisherModal from '../PublisherModal/PublisherModal'

const AuthorInput = ({disabled,authors,handleChange,bookData, addAuthor,formValidation,error}) => {
  const [open, setOpen] = useState(false)

  return (
    <div className="author-box">
        {/* authors */}
        <div className="authors">
            {/* author name */}
                <div className="author">
                    {bookData.authors?bookData.authors.map((item,key)=>{
                        console.log(item)
                        return <span>{item}</span>
                    }):''}
                    <button>
                        <i class="fa-solid fa-xmark"></i>
                    </button>
                </div>
        </div>
        {/* button */}
        <button className='add-new-author' onClick={()=>{disabled?setOpen(false):setOpen(true)}}>
            <i class="fa-solid fa-plus"></i>
            <span>Add new author</span>
        </button>
        <AuthorModal open={open} close={()=>setOpen(!open)} handleChange={handleChange} bookData={bookData} addAuthor={addAuthor}/>
    </div>
  )
}

export default AuthorInput
