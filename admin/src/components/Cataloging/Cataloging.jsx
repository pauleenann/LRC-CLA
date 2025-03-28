// this is a component for cataloging (active item etc)
import React, { useEffect, useState } from 'react'
import './Cataloging.css'
import axios from 'axios'
import { getAllFromStore } from '../../indexedDb/getDataOffline'
import { useSelector } from 'react-redux'

const Cataloging = ({disabled,handleChange,bookData,handleToggle,formValidation, error,editMode}) => {
    const [department, setDepartment] = useState([])
    const [catalog, setCatalog] = useState([])
    const [topic,setTopic] = useState([])
    const [filteredTopic, setFilteredTopic] = useState([])
    const isOnline = useSelector(state=>state.isOnline.isOnline)
    

    useEffect(() => {
        if(isOnline){
            console.log('getting cataloging info online')
            getDept()
            getTopics()
        }else{
            getDeptOffline()
            getTopicsOffline()
        }
    }, []);

    useEffect(()=>{
        const filtered = topic.filter(item=>item.dept_id==bookData.department)
        setFilteredTopic(filtered)
    },[bookData.department])


    //get existing department offline
    const getDeptOffline = async ()=>{
        const depts = await getAllFromStore('department')
        setDepartment(depts)
    }

    //get existing topics offline
    const getTopicsOffline = async()=>{
        const tps = await getAllFromStore('topic');
        setTopic(tps)
    }
    
    //get existing department online
    const getDept = async()=>{
        try{
            const response = await axios.get('http://localhost:3001/api/data/departments').then(res=>res.data)
            setDepartment(response)
        }catch(err){
            console.log("Couldn't retrieve department online. An error occurred: ", err.message)
        }
    }

    //get existing topics online
    const getTopics =async ()=>{
        try{
            const response = await axios.get('http://localhost:3001/api/data/topic').then(res=>res.data)
            setTopic(response)
        }catch(err){
            console.log("Couldn't retrieve topics online. An error occurred: ", err.message)
        }
    }

  return (
    <div className='cataloging-box shadow-sm'>
        <div className="row">
            {/* header */}
            <div className="col-12 cataloging-info-header">Cataloging</div>

            <div className="row cataloging-inputs">
                {/* cataloging*/}
                <div className="col-12 ">
                    <div className="row">
                        {/* department */}
                        <div className="col-6 info-input-box">
                            <label htmlFor="">Department *</label>
                            <select 
                                className="form-select"
                                name='department'
                                disabled={disabled} 
                                onChange={handleChange} 
                                // onBlur={formValidation}
                                >
                                <option selected disabled className=''>Select department</option>
                                {department.length>0?department.map((item,key)=>(
                                    <option value={item.dept_id} className='dept_name' selected={disabled||editMode?item.dept_id==bookData.department:''}>{item.dept_name}</option>
                                )):''}
                                
                            </select>
                            <p className='resource-error'>{error.department}</p>
                        </div>
                        {/* topic */}
                        {bookData.mediaType=='4'?'':<div className="col-6 info-input-box">
                            <label htmlFor="">Topics *</label>
                            <select 
                                className="form-select" 
                                name='topic' 
                                disabled={disabled} 
                                onChange={handleChange} 
                                // onBlur={formValidation} 
                                value={bookData.topic}
                            >
                                <option value='' selected disabled>Select Topic</option>
                                {filteredTopic.length>0?filteredTopic.map((item,key)=>(
                                    <option value={item.topic_id} selected={disabled||editMode?item.topic_id==bookData.topic:''}>{item.topic_name}</option>
                                )):''}
                            </select>
                            <p className='resource-error'>{error.topic}</p>
                        </div>}
                        
                        {/* shelf no */}
                        {/* <div className="col-3 info-input-box">
                            <label htmlFor="">Shelf No.</label>
                            <input type="number" name='shelfNo' placeholder='Enter shelf number' disabled={disabled?true:false} onChange={handleChange}/>
                        </div> */}
                        {/* active item */}
                        {/* <div className="col-12 mt-5">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" id="active-item" disabled={disabled?true:false} onChange={handleToggle} name='isActive'/>
                                <div className="switch-label">
                                    <label class="form-check-label" for="active-item">Active Item</label>
                                    <span>Item is available for checking out and OPAC listing</span>
                                </div>
                            </div>
                        </div> */}
                        {/* published*/}
                        {/* <div className="col-12 mt-3">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" id="published" disabled={disabled?true:false} onChange={handleToggle} name='isPublished'/>
                                <div className="switch-label">
                                    <label class="form-check-label" for="published">Published</label>
                                    <span>Enable OPAC listing, uncheck if you don't want to put this item on OPAC.</span>
                                </div>
                            </div>
                        </div> */}
                        {/* circulation*/}
                        <div className="col-12 mt-3">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" id="circulation" disabled={disabled} onChange={handleToggle} name='isCirculation' checked={bookData.isCirculation}/>
                                <div className="switch-label">
                                    <label class="form-check-label" for="circulation">Circulation</label>
                                    <span>Enable circulation, uncheck if you want to disable circulation for this item.</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                
            </div>
        </div>
    </div>
  )
}

export default Cataloging
