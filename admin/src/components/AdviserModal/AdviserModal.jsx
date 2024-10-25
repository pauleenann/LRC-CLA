import React, { useEffect, useState } from 'react'
import ReactDom from 'react-dom'
import './AdviserModal.css'
import Select from 'react-select'

const AdviserModal = ({open,close,handleChange,bookData,addAdviser,adviserList}) => {

    // usestates for manual input
    const [fname,setFname] = useState('')
    const [lname,setLname] = useState('')
    const [adviser,setAdviser] = useState('')
    
    // for seleted adviser dun sa dropdown
    const [selectedAdviser, setSelectedAdviser] = useState('')
    //console.log(`${fname} ${lname}`)

    // everytime na nagbabago ung fname and lname, mababago rin yung adviser usestate
    useEffect(()=>{
        setAdviser(`${fname} ${lname}`)
    },[fname,lname])

    useEffect(()=>{
        setFname('')
        setLname('')
        setAdviser('')
        setSelectedAdviser('')
    },[bookData])

    // handles ung selected adviser sa dropdown
    //value ng item ay like this->{ value: 'chocolate', label: 'Chocolate' },
    const handleAdviser = (item)=>{
        if(item){
            setSelectedAdviser(item.value)
       }else{
           setSelectedAdviser('')
       }
    }

    if(!open){
        return null
    }else{
        console.log('adviser-modal')
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
                    options={adviserList}
                    placeholder="Search adviser's name"
                    classNamePrefix="select"
                    isClearable
                    onChange={handleAdviser}/>
                </div>
                <div className="col-12 modal-reminder">
                    Can’t find adviser? Add manually below
                </div>
                {/* add manually */}
                <div className="col-12 adviser-name">
                    <label htmlFor="">Last name</label>
                    <input type="text" name="" id="" placeholder="Enter adviser's last name"
                    onChange={(e)=>setLname(e.target.value)}
                    />
                </div>
                <div className="col-12 adviser-name">
                    <label htmlFor="">First name</label>
                    <input type="text" name="" id="" placeholder="Enter adviser's first name"
                    onChange={(e)=>setFname(e.target.value)}/>
                </div>
                {/* button */}
                <div className="col-12 adviser-button">
                    <button className="adviser-cancel" onClick={close}>
                    Cancel
                    </button>
                    <button className="adviser-save" onClick={()=>{
                        // if hindi ' ' ung author, hindi siya masasama sa authors na array
                        if(adviser){
                            addAdviser(adviser)
                            close()
                        }
                        if(selectedAdviser){
                            if(addAdviser(selectedAdviser)){
                                 close()
                            }
                        }
                        }} disabled={adviser.length==0&&selectedAdviser.length==0?true:false}>
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
