import React, { useState } from 'react'
import './AuthorInput.css'
import AuthorModal from '../AuthorModal/AuthorModal'

const AuthorInput = () => {
    const [open, setOpen] = useState(false)
  return (
    <div className="author-box">
        {/* authors */}
        <div className="authors">
            {/* author name */}
                <div className="author">
                    <span>Stan Lee</span>
                    <button>
                        <i class="fa-solid fa-xmark"></i>
                    </button>
                </div>
        </div>
        {/* button */}
        <button className='add-new-author' onClick={()=>setOpen(true)}>
            <i class="fa-solid fa-plus"></i>
            <span>Add new author</span>
        </button>

        <AuthorModal open={open} close={()=>setOpen(!open)}/>
    </div>
  )
}

export default AuthorInput
