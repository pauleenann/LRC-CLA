import React, { useEffect, useState } from 'react'
import './CatalogInfo.css'
import BookInput from '../BookInput/BookInput'
// for the multi select input
import Select from 'react-select'
import JournalInput from '../JournalInput/JournalInput'
import ThesisInput from '../ThesisInput/ThesisInput'

const CatalogInfo = () => {
    const [resourceType, setResourceType] = useState('')

    const handleType = (e)=>{
        setResourceType(e.target.value);
    }

    console.log(resourceType)

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
                            <select name="" id="" className='form-select' onClick={handleType}>
                                <option value="book" >Book</option>
                                <option value="journal" >Journal</option>
                                <option value="newsletter">Newsletter</option>
                                <option value="thesis">Thesis</option>
                            </select>
                        </div>
                        {/* quantity */}
                        <div className="col-4 info-input-box">
                            <label htmlFor="">Quantity *</label>
                            <input type="number" placeholder='Enter quantity' min='0'/>
                        </div>
                        {/* status */}
                        <div className="col-4 info-input-box">
                            <label htmlFor="">Status *</label>
                            <select name="" id="" className='form-select'>
                                <option selected disabled>Select item status</option>
                                <option value="available">Available</option>
                                <option value="lost">Lost</option>
                                <option value="damaged">Damaged</option>
                            </select>
                        </div>
                        {/* title */}
                        <div className="col-12 info-input-box my-3">
                            <label htmlFor="">Title</label>
                            <input type="text" placeholder='Enter title'/>
                        </div>
                        {/* input field changes depending on type */}
                        <div className="col-12">
                            {resourceType==='journal'||resourceType==='newsletter'?<JournalInput/>:resourceType==='thesis'?<ThesisInput/>:<BookInput/>}
                                                        
                        </div>
                        {/* genre */}
                        <div className="col-12 info-input-box mb-3">
                            <label htmlFor="">Genre</label>
                            <Select
                                isMulti
                                name="genre"
                                options={options}
                                className="basic-multi-select"
                                classNamePrefix="select"
                                placeholder="Enter to add genre/s"/>
                        </div>
                        
                    </div>

                </div>

                {/* for cover */}
                <div className="col-3">
                    {/* cover */}
                    <div className="col-12 info-input-box mb-3">
                        <label htmlFor="">Cover</label>
                        <input type="file" src="" alt="" className='cover-upload' id='cover-upload'/>
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
                    {/* cover */}
                    <div className="col-12 info-input-box mb-3">
                        <label htmlFor="">Description</label>
                        <textarea name="" id=""></textarea>
                    </div>
                </div>

            </div>


        </div>
        
    </div>
  )
}

export default CatalogInfo
