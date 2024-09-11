import React, { useState } from 'react'
import './ThesisInput.css'
import AuthorInput from '../AuthorInput/AuthorInput'
import PublisherModal from '../PublisherModal/PublisherModal'
const ThesisInput = () => {
    
  return (
    <div className='row'>
        {/* author */}
        <div className="col-6 info-input-box">
            <label htmlFor="">Author/s *</label>
            {/* author box */}
            <AuthorInput/>
        </div>

        {/* thesis adviser*/}
        <div className="col-6 info-input-box">
            <label htmlFor="">Adviser *</label>
            <div className="adviser-box">
                {/* adviser */}
                <div className="advisers">
                    {/* adviser name */}
                        <div className="adviser">
                            <span>Stan Lee</span>
                                <button>
                                <i class="fa-solid fa-xmark"></i>
                            </button>
                        </div>
                </div>
                    {/* button */}
                    <button className='add-adviser'>
                        <i class="fa-solid fa-plus"></i>
                        <span>Add adviser</span>
                    </button>
                </div>
        </div>

        {/* publish date */}
        <div className="col-6 info-input-box my-3">
            <label htmlFor="">Publish Date *</label>
            <input type="date" name="" id="" placeholder='Select date'/>
        </div>
    </div>
  )
}

export default ThesisInput
