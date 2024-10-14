import React, { useEffect, useState } from 'react'
import ReactDom from 'react-dom'
import './AuthorModal.css'
import Select from 'react-select'

const AuthorModal = ({open,close,handleChange,bookData,addAuthor}) => {

    // usestates for manual input
    const [fname,setFname] = useState('')
    const [lname,setLname] = useState('')
    const [author,setAuthor] = useState('')
    
    // for seleted author dun sa dropdown
    const [selectedAuthor, setSelectedAuthor] = useState('')

    //console.log(`${fname} ${lname}`)

    // everytime na nagbabago ung fname and lname, mababago rin yung author usestate
    useEffect(()=>{
        setAuthor(`${fname} ${lname}`)
    },[fname,lname])

    // sample data for multi select options
    // should be retrieved sa database
    const options = [
        { value: 'chocolate', label: 'Chocolate' },
        { value: 'strawberry', label: 'Strawberry' },
        { value: 'vanilla', label: 'Vanilla' }
    ]

    // handles ung selected author sa dropdown
    //value ng item ay like this->{ value: 'chocolate', label: 'Chocolate' },
    const handleAuthor = (item)=>{
        setSelectedAuthor(item.value)
    }

    if(!open){
        return null
    }else{
        console.log('author-modal')
    }

    console.log()

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
                    isClearable
                    onChange={handleAuthor}
                    />
                </div>
                <div className="col-12 modal-reminder">
                    Can’t find author? Add manually below
                </div>
                {/* add manually */}
                <div className="col-12 author-name">
                    <label htmlFor="">Last name</label>
                    <input type="text" name="" id="" placeholder='Enter author’s last name '
                    onChange={(e)=>setLname(e.target.value)}
                    />
                </div>
                <div className="col-12 author-name">
                    <label htmlFor="">First name</label>
                    <input type="text" name="" id="" placeholder='Enter author’s first name '
                    onChange={(e)=>setFname(e.target.value)}/>
                </div>
                {/* button */}
                <div className="col-12 author-button">
                    <button className="author-cancel" onClick={close}>
                    Cancel
                    </button>
                    <button className="author-save" onClick={()=>{
                        // if hindi ' ' ung author, hindi siya masasama sa authors na array
                        if(author.length!=1){
                            addAuthor(author)
                        }
                        if(selectedAuthor){
                            addAuthor(selectedAuthor)
                        }
                        close()
                        }}>
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
