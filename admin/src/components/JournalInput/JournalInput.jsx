import React from 'react'
import './JournalInput.css'
import AuthorInput from '../AuthorInput/AuthorInput'

const JournalInput = ({disabled}) => {
    
  return (
    <div className='row'>
        {/* author */}
        <div className="col-6 info-input-box">
            <label htmlFor="">Author/s *</label>
            {/* author box */}
            <AuthorInput disabled={disabled}/>
        </div>

        {/* volume, issue, publish date */}
        <div className="col-6 info-input-box">
            <div className="row">
                {/* volume */}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Volume</label>
                    <input type="text" placeholder='Enter volume' disabled={disabled?true:false}/>
                </div>
                {/* issue */}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Issue</label>
                    <input type="text" placeholder='Enter issue' disabled={disabled?true:false}/>  
                </div>
                {/* publisher date*/}
                <div className="col-12 info-input-box mb-3">
                    <label htmlFor="">Publish Date *</label>
                    <input type="date" name="" id="" placeholder='Select date' disabled={disabled?true:false}/>
                </div>
            </div>
        </div>
    </div>
  )
}

export default JournalInput
