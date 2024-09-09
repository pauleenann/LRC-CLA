import React from 'react'
import './JournalInput.css'
import AuthorInput from '../AuthorInput/AuthorInput'

const JournalInput = () => {
  return (
    <div className='row'>
        {/* author */}
        <div className="col-6 info-input-box">
            <label htmlFor="">Author/s *</label>
            {/* author box */}
            <AuthorInput/>
        </div>

        {/* volume, issue, publish date */}
        <div className="col-6 info-input-box">
            <div className="row">
                {/* volume */}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Volume</label>
                    <input type="text" placeholder='Enter volume'/>
                </div>
                {/* issue */}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Issue</label>
                    <input type="text" placeholder='Enter issue'/>  
                </div>
                {/* publisher date*/}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Publish Date *</label>
                    <input type="date" name="" id="" placeholder='Select date'/>
                </div>
            </div>
        </div>
    </div>
  )
}

export default JournalInput
