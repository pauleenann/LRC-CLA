import React, { useEffect, useState } from 'react'
import ReactDom from 'react-dom'
import './PublisherModal.css'
import Select from 'react-select'

const PublisherModal = ({open,close,handleChange,bookData,setBookData,publishers,publisherDetails,handlePublisher}) => {
    
    const [selectedPublisher,setSelectedPublisher] = useState('')
    const [error,setError] = useState({})

    if(!open){
        return null
    }else{
        console.log('author-modal')
    }

    const formValidation=()=>{
        const err={}
        if(!selectedPublisher){
            if(!publisherDetails.publisher){
                err.publisher='Please enter publisher name'
            }
            if(!publisherDetails.publisher_address){
                err.address='Please enter publisher address'
            }
            if(!publisherDetails.publisher_email){
                err.email='Please enter publisher email'
            }
            if(!publisherDetails.publisher_website){
                err.website='Please enter publisher website'
            }
            if(!publisherDetails.publisher_number){
                err.phone='Please enter publisher phone'
            }
        }
        
        if(Object.keys(err).length!=0){
            setError(err)
            return false
        }else{
            return true
        }
        
    }

    // handle save.Pag clinick ung save, masstore ung publisherdetails sa bookdata
    const handleSave = ()=>{
        if(formValidation()===true){
            setBookData((prevdata)=>({
                ...prevdata,
                publisher: publisherDetails.publisher,
                publisher_address:publisherDetails.publisher_address,
                publisher_email:publisherDetails.publisher_email,
                publisher_number:publisherDetails.publisher_number,
                publisher_website:publisherDetails.publisher_website,
                publisher_id:0
            }))
            close()
        }else{
            console.log('enter complete details')
        }
    }

    console.log(publisherDetails)

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
                {/* add manually */}
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher name</label>
                    <input type="text" name="publisher" id="" placeholder="Enter publisher's name " value={publisherDetails.publisher?publisherDetails.publisher:''} onChange={handlePublisher} onBlur={formValidation}/>
                    <p className='pub-error'>{error.publisher}</p>
                </div>
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher address</label>
                    <textarea name="publisher_address" id="" placeholder="Enter publisher's address " value={publisherDetails.publisher_address?publisherDetails.publisher_address:''} onChange={handlePublisher}></textarea>
                    <p className='pub-error'>{error.address}</p>
                </div>
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher website</label>
                    <input type="text" name="publisher_website" id="" placeholder="Enter publisher's website " value={publisherDetails.publisher_website?publisherDetails.publisher_website:''} onChange={handlePublisher} />
                    <p className='pub-error'>{error.website}</p>
                </div>
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher number</label>
                    <input type="text" name="publisher_number" id="" placeholder="Enter publisher's number " value={publisherDetails.publisher_number?publisherDetails.publisher_number:''} onChange={handlePublisher} />
                    <p className='pub-error'>{error.number}</p>
                </div>
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher email</label>
                    <input type="text" name="publisher_email" id="" placeholder="Enter publisher's email " value={publisherDetails.publisher_email?publisherDetails.publisher_email:''} onChange={handlePublisher} />
                    <p className='pub-error'>{error.email}</p>
                </div>
                {/* button */}
                <div className="col-12 publisher-button">
                    <button className="publisher-cancel" onClick={close}>
                    Cancel
                    </button>
                    <button className="publisher-save" onClick={handleSave}>
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
