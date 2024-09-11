import React from 'react'
import ReactDom from 'react-dom'
import './AdviserModal.css'
import Select from 'react-select'

const AdviserModal = ({open,close}) => {

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
    <div className='adviser-modal-container'>
        {/* overlay */}
        <div className="adviser-modal-overlay overlay"></div>

        {/* modal box */}
        <div className="adviser-modal-box">
            {/* header */}
            <div className="adviser-modal-header">
                <span>Add Adviser</span>
                <i class="fa-solid fa-xmark" onClick={close}></i>
            </div>
            {/* add adviser input */}
            <div className="row adviser-inputs">
                {/* search adviser */}
                <div className="col-12 adviser-search">
                    <label htmlFor="">Search adviser's name</label>
                    <Select 
                    options={options}
                    placeholder="Search adviser's name"
                    classNamePrefix="select"
                    isClearable/>
                </div>
                <div className="col-12 modal-reminder">
                    Can’t find adviser? Add manually below
                </div>
                {/* add manually */}
                <div className="col-12 adviser-name">
                    <label htmlFor="">Last name</label>
                    <input type="text" name="" id="" placeholder="Enter adviser's last name"/>
                </div>
                <div className="col-12 adviser-name">
                    <label htmlFor="">First name</label>
                    <input type="text" name="" id="" placeholder="Enter adviser's first name"/>
                </div>
                {/* button */}
                <div className="col-12 adviser-button">
                    <button className="adviser-cancel" onClick={close}>
                    Cancel
                    </button>
                    <button className="adviser-save">
                        Save
                    </button>
                </div>

            </div>
        </div>      
    </div>,
    document.getElementById('portal')
  )
}

export default AdviserModal
