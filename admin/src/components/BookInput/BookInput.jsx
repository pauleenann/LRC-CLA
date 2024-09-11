import React, { useState } from 'react'
import './BookInput.css'
import AuthorInput from '../AuthorInput/AuthorInput'
import PublisherModal from '../PublisherModal/PublisherModal'

const BookInput = () => {
    const [open, setOpen] = useState(false)
    
  return (
    <div className='row'>
        {/* author */}
        <div className="col-6 info-input-box">
            <label htmlFor="">Author/s *</label>
            {/* author box */}
            <AuthorInput/>
        </div>

        {/* isbn, publisher, publish date */}
        <div className="col-6 info-input-box">
            <div className="row">
                {/* isbn */}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">ISBN</label>
                    <input type="number" placeholder='Enter ISBN'/>
                </div>
                {/* publisher */}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Publisher</label>
                    <input type="text" placeholder='Enter Publisher'/>  
                    <span className='add-publisher'>Publisher not listed? Please <button className='add-publisher-button' onClick={()=>setOpen(!open)}>"add publisher here"</button> first.</span>
                </div>
                {/* publisher date*/}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Publish Date *</label>
                    <input type="date" name="" id="" placeholder='Select date'/>

                </div>
            </div>
        </div>
        <PublisherModal open={open} close={()=>setOpen(!open)}/>
    </div>
  )
}

export default BookInput
