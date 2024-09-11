import React from 'react'
import ReactDom from 'react-dom'
import './PublisherModal.css'
import Select from 'react-select'

const PublisherModal = ({open,close}) => {

    // sample data for multi select options
    // should be retrieved sa database
    const options = [
        { value: 'chocolate', label: 'Chocolate' },
        { value: 'strawberry', label: 'Strawberry' },
        { value: 'vanilla', label: 'Vanilla' }
    ]

    if(!open){
        return null
    }else{
        console.log('author-modal')
    }

  return ReactDom.createPortal(
    <div className='publisher-modal-container'>
        {/* overlay */}
        <div className="publisher-modal-overlay"></div>

        {/* modal box */}
        <div className="publisher-modal-box">
            {/* header */}
            <div className="publisher-modal-header">
                <span>Add new publisher</span>
                <i class="fa-solid fa-xmark" onClick={close}></i>
            </div>
            {/* add publisher input */}
            <div className="row publisher-inputs">
                {/* search author */}
                <div className="col-12 publisher-search">
                    <label htmlFor="">Search for existing publisher</label>
                    <Select 
                    options={options}
                    placeholder="Search publisher's name"
                    classNamePrefix="select"
                    isClearable/>
                </div>
                <div className="col-12 modal-reminder">
                    Can’t find publisher? Add manually below
                </div>
                {/* add manually */}
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher name</label>
                    <input type="text" name="" id="" placeholder="Enter publisher's name "/>
                </div>
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher address</label>
                    <textarea name="" id="" placeholder="Enter publisher's address "></textarea>
                </div>
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher website</label>
                    <input type="text" name="" id="" placeholder="Enter publisher's website "/>
                </div>
                {/* button */}
                <div className="col-12 publisher-button">
                    <button className="publisher-cancel" onClick={close}>
                    Cancel
                    </button>
                    <button className="publisher-save">
                        Save
                    </button>
                </div>

            </div>
        </div>      
    </div>,
    document.getElementById('portal')
  )
}

export default PublisherModal
