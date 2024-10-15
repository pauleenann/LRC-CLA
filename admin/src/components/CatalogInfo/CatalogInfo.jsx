import React, { useEffect, useState } from 'react'
import './CatalogInfo.css'
import BookInput from '../BookInput/BookInput'
// for the multi select input
import Select from 'react-select'
import JournalInput from '../JournalInput/JournalInput'
import ThesisInput from '../ThesisInput/ThesisInput'
import axios from 'axios'

const CatalogInfo = ({disabled,handleChange,bookData,addAuthor,setType,addGenre,addAdviser,setBookData}) => {
    // disabled is passed by the viewItem component. This disables the input fields so users can only access the page in view mode 
    const [resourceType, setResourceType] = useState('')

    const handleType = (e)=>{
        setResourceType(e.target.value);
    }
    
    // sample data for multi select options
    // should be retrieved sa database
    const options = [
        { value: 'chocolate', label: 'Chocolate' },
        { value: 'strawberry', label: 'Strawberry' },
        { value: 'vanilla', label: 'Vanilla' }
    ]

  return (
    <div className='cat-info'>
        <div className="row">
            {/* header */}
            <div className="col-12 cat-info-header">Information</div>

            <div className="row catalog-inputs">
                {/* first column - media-genre*/}
                <div className="col-9 ">
                    <div className="row">
                        {/* media type */}
                        <div className="col-4 info-input-box">
                            <label htmlFor="">Media Type *</label>
                            <select name="mediaType" id="" className='form-select' onClick={handleType} disabled={disabled?true:false} onChange={handleChange}>
                                <option value="book">Book</option>
                                <option value="journal" >Journal</option>
                                <option value="newsletter">Newsletter</option>
                                <option value="thesis">Thesis</option>
                            </select>
                        </div>
                        {/* quantity */}
                        <div className="col-4 info-input-box">
                            <label htmlFor="">Quantity *</label>
                            <input type="number" placeholder='Enter quantity' min='0' disabled={disabled?true:false} name='quantity' onChange={handleChange} value={bookData.quantity?bookData.quantity:''}/>
                        </div>
                        {/* status */}
                        <div className="col-4 info-input-box">
                            <label htmlFor="">Status *</label>
                            <select name="status" id="" className='form-select' disabled={disabled?true:false} onChange={handleChange}>
                                <option selected disabled>Select item status</option>
                                <option value="available">Available</option>
                                <option value="lost">Lost</option>
                                <option value="damaged">Damaged</option>
                            </select>
                        </div>
                        {/* title */}
                        <div className="col-12 info-input-box my-3">
                            <label htmlFor="">Title</label>
                            <input type="text" placeholder='Enter title' disabled={disabled?true:false} name='title' onChange={handleChange} value={bookData.title?bookData.title:''}/>
                        </div>
                        {/* input field changes depending on type */}
                        <div className="col-12">
                            {resourceType==='journal'||resourceType==='newsletter'?<JournalInput disabled={disabled} handleChange={handleChange} bookData={bookData} addAuthor={addAuthor}/>:resourceType==='thesis'?<ThesisInput disabled={disabled} handleChange={handleChange} bookData={bookData} addAuthor={addAuthor} addAdviser={addAdviser}/>:<BookInput disabled={disabled} handleChange={handleChange} bookData={bookData} addAuthor={addAuthor} setBookData={setBookData}/>}
                        </div>
                        {/* genre */}
                        {bookData.mediaType==='book'?
                        <div className="col-12 info-input-box mb-3">
                            <label htmlFor="">Genre</label>
                            <Select
                                isMulti
                                name="genre"
                                options={options}
                                className="basic-multi-select"
                                classNamePrefix="select"
                                placeholder="Enter to add genre/s"
                                isDisabled={disabled?true:false}
                                onChange={addGenre}
                                
                            />
                        </div> 
                        :''}
                                         
                    </div>

                </div>

                {/* for cover */}
                <div className="col-3">
                    {/* cover */}
                    <div className="col-12 info-input-box mb-3">
                        <label htmlFor="">Cover</label>
                        <input type="file" src="" alt="" className='cover-upload' id='cover-upload'disabled={disabled?true:false}/>
                        <div className="cover-upload-box">
                            <button>
                                <i class="fa-solid fa-plus"></i>
                                <span>Add Photo</span>
                            </button>
                        </div>
                    </div>
                </div>

                {/* description */}
                <div className="col-12">
                    {/* description */}
                    <div className="col-12 info-input-box mb-3">
                        <label htmlFor="">Description</label>
                        <textarea name="description" id="" disabled={disabled?true:false} onChange={handleChange} value={bookData.description?bookData.description:''}></textarea>
                    </div>
                </div>

            </div>


        </div>
        
    </div>
  )
}

export default CatalogInfo
