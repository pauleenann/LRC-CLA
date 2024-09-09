import React from 'react'
import './AuthorInput.css'

const AuthorInput = () => {
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
            <button className='add-new-author'>
                <i class="fa-solid fa-plus"></i>
                <span>Add new author</span>
            </button>
        </div>
  )
}

export default AuthorInput
