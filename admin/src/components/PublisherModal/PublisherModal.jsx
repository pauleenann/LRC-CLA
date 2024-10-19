import React, { useState } from 'react'
import ReactDom from 'react-dom'
import './PublisherModal.css'
import Select from 'react-select'

const PublisherModal = ({open,close,handleChange,bookData,setBookData}) => {
    // dito ko muna isstore ung publisher details then kapag clinick ung save, tsaka lang sya masstore sa bookdata
    const [publisherDetails, setPublisherDetails] = useState({
        publisher: bookData?bookData.publisher:''
    })
    const [selectedPublisher,setSelectedPublisher] = useState('')
    const [error,setError] = useState({})
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

    // handle publisher
    const handlePublisher = (e) =>{
        const {name,value} = e.target
        setPublisherDetails({...publisherDetails,[name]:value
        })
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
        console.log(formValidation())
        if(selectedPublisher&&formValidation()){
            setBookData((prevdata)=>({
                 ...prevdata,
                 publisher: selectedPublisher
            }))
            close()
        }else if(formValidation()===true){
            setBookData((prevdata)=>({
                ...prevdata,
                publisher: publisherDetails.publisher,
                publisher_address:publisherDetails.publisher_address,
                publisher_email:publisherDetails.publisher_email,
                publisher_number:publisherDetails.publisher_number,
                publisher_website:publisherDetails.publisher_website
            }))
            close()
        }
    }

    //handles selected publisher
    const handleSelectedPublisher=(item)=>{
        if(item){
            setSelectedPublisher(item.value)
        }else{
            setSelectedPublisher('')
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
                {/* search author */}
                <div className="col-12 publisher-search">
                    <label htmlFor="">Search for existing publisher</label>
                    <Select 
                    options={options}
                    placeholder="Search publisher's name"
                    classNamePrefix="select"
                    isClearable
                    isDisabled={publisherDetails.publisher}
                    onChange={handleSelectedPublisher}/>
                </div>
                <div className="col-12 modal-reminder">
                    Can’t find publisher? Add manually below
                </div>
                {/* add manually */}
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher name</label>
                    <input type="text" name="publisher" id="" placeholder="Enter publisher's name " value={publisherDetails.publisher?publisherDetails.publisher:''} onChange={handlePublisher} disabled={selectedPublisher}/>
                    <p className='pub-error'>{error.publisher}</p>
                </div>
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher address</label>
                    <textarea name="publisher_address" id="" placeholder="Enter publisher's address " value={publisherDetails.publisher_address?publisherDetails.publisher_address:''} onChange={handlePublisher}disabled={selectedPublisher}></textarea>
                    <p className='pub-error'>{error.address}</p>
                </div>
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher website</label>
                    <input type="text" name="publisher_website" id="" placeholder="Enter publisher's website " value={publisherDetails.publisher_website?publisherDetails.publisher_website:''} onChange={handlePublisher} disabled={selectedPublisher}/>
                    <p className='pub-error'>{error.website}</p>
                </div>
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher number</label>
                    <input type="text" name="publisher_number" id="" placeholder="Enter publisher's number " value={publisherDetails.publisher_number?publisherDetails.publisher_number:''} onChange={handlePublisher} disabled={selectedPublisher}/>
                    <p className='pub-error'>{error.number}</p>
                </div>
                <div className="col-12 publisher-input">
                    <label htmlFor="">Publisher email</label>
                    <input type="text" name="publisher_email" id="" placeholder="Enter publisher's email " value={publisherDetails.publisher_email?publisherDetails.publisher_email:''} onChange={handlePublisher} disabled={selectedPublisher}/>
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
