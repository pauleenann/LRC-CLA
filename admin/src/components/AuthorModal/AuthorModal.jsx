import React from 'react'
import ReactDom from 'react-dom'
import './AuthorModal.css'
import Select from 'react-select'

const AuthorModal = ({open,close}) => {

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
    <div className='author-modal-container'>
        {/* overlay */}
        <div className="author-modal-overlay overlay"></div>

        {/* modal box */}
        <div className="author-modal-box">
            {/* header */}
            <div className="author-modal-header">
                <span>Add Author</span>
                <i class="fa-solid fa-xmark" onClick={close}></i>
            </div>
            {/* add author input */}
            <div className="row author-inputs">
                {/* search author */}
                <div className="col-12 author-search">
                    <label htmlFor="">Search for existing author</label>
                    <Select 
                    options={options}
                    placeholder="Search author's name"
                    classNamePrefix="select"
                    isClearable/>
                </div>
                <div className="col-12">
                    Can’t find author? Add manually below
                </div>
                {/* add manually */}
                <div className="col-12 author-name">
                    <label htmlFor="">Last Name</label>
                    <input type="text" name="" id="" placeholder='Enter author’s last name '/>
                </div>
                <div className="col-12 author-name">
                    <label htmlFor="">First Name</label>
                    <input type="text" name="" id="" placeholder='Enter author’s first name '/>
                </div>
                {/* button */}
                <div className="col-12 author-button">
                    <button className="author-cancel" onClick={close}>
                    Cancel
                    </button>
                    <button className="author-save">
                        Save
                    </button>
                </div>

            </div>
        </div>      
    </div>,
    document.getElementById('portal')
  )
}

export default AuthorModal
