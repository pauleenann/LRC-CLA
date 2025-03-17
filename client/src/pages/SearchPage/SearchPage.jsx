import React, { useEffect, useState } from 'react'
import { motion } from 'framer-motion'; // Import Framer Motion
import { Link } from 'react-router-dom';
import Navbar from '../../components/Navbar/Navbar';
import ResourceBook from '../../components/ResourceBook/ResourceBook';
import './SearchPage.css'
import { useDispatch, useSelector } from 'react-redux';
import axios from 'axios';
import Footer from '../../components/Footer/Footer'
import { setTypeArray } from '../../features/typeSlice';
import { setDeptArray } from '../../features/deptSlice';
import { setTopicArray } from '../../features/topicSlice';

const fadeIn = {    
    hidden: { opacity: 0, y: 30 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.2} },
  };

const SearchPage = () => {
    const dispatch = useDispatch();
    // array from letter A-Z
    const alphabet = Array.from({ length: 26 }, (_, i) => String.fromCharCode(97 + i));
    // resource
    const {resource,loading, searchQuery} = useSelector(state=>state.resource);
    const [resourceType, setResourceType] = useState([]);
    const [department, setDepartment] = useState([]);
    const [topic, setTopic] = useState([]);
    const [searchFilters, setSearchFilters] = useState({
        type:[],
        dept:[],
        topic:[]
    })
    
    useEffect(()=>{
        getType();
        getDept();
        getTopics();
    },[])

    useEffect(()=>{
        dispatch(setTypeArray(searchFilters.type))
        dispatch(setDeptArray(searchFilters.dept))
        dispatch(setTopicArray(searchFilters.topic))
    },[searchFilters])
    
    const getType = async()=>{
        try {
            const response = await axios.get('http://localhost:3001/api/data/type').then(res=>res.data);
            setResourceType(response)
        } catch (err) {
            console.log(err.message);
        }
    };
    
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

    // Handle Checkbox Change
    const handleCheckbox = (e, itemId, category) => {
        const { checked } = e.target;
        setSearchFilters(prevFilters => ({
            ...prevFilters,
            [category]: checked 
                ? [...prevFilters[category], itemId] // Add item if checked
                : prevFilters[category].filter(id => id !== itemId) // Remove if unchecked
        }));
    };
    

    console.log(resource)
    console.log(searchFilters)
    console.log(searchQuery)

  return (
    <div className='search-container '>
        <motion.div className='top-welcome p-2 text-center' variants={fadeIn}>
            <p className="m-0">Welcome to College of Liberal Arts’ Online Catalog!</p>
        </motion.div>

        <div className='border border-bottom-1'>
           <Navbar/> 
        </div>
        
        <div className="container my-5">
            {/* back */}
            <div className='mb-5'>
                <Link className='text-decoration-none text-dark' to='/'><p>Back to Home</p></Link>
            </div>
            <div className="row">
                <div className="col-3 d-flex flex-column gap-4 pe-5">
                    {/* resource type */}
                    <div className='d-flex flex-column'>
                        <h5 className='m-0'>Resource Type</h5>
                        {resourceType.map(item=>(
                            <div className='d-flex gap-2'>
                                <input type="checkbox" name="type" id="" onChange={(e)=>handleCheckbox(e, item.type_id, 'type')}/> 
                                <span className='text-capitalize filter'>{item.type_name}</span>
                            </div>
                        ))}
                    </div>

                    {/* department */}
                    <div className='d-flex flex-column'>
                        <h5 className='m-0'>Department</h5>
                        {department.map(item=>(
                            <div className='d-flex gap-2'>
                                <input type="checkbox" name="dept" id="" onChange={(e)=>handleCheckbox(e, item.dept_id, 'dept')}/> 
                                <span className='text-capitalize filter'>{item.dept_name}</span>
                            </div>
                        ))}
                    </div>

                    {/* topics */}
                    <div className='d-flex flex-column'>
                        <h5 className='m-0'>Topic</h5>
                        {topic.map(item=>(
                            <div className='d-flex gap-2'>
                                <input type="checkbox" name="topic" id="" onChange={(e)=>handleCheckbox(e, item.topic_id, 'topic')}/> 
                                <span className='text-capitalize filter'>{item.topic_name}</span>
                            </div>
                        ))}
                    </div>
                    
                    <button className="btn btn-outline-dark">
                        Clear filter
                    </button>
                </div>
                <div className="col">
                    {/* search header */}
                    <div className='d-flex justify-content-between align-items-center'>
                        {searchQuery.length>0
                        ?<div>
                            <h1 className='m-0 fw-semibold'>Search results for: {searchQuery}</h1>
                            <p className="m-0">A total of {resource.length} resource/s found for {searchQuery}</p>
                        </div>
                        :<div>
                            <h1 className='m-0 fw-semibold'>Search results</h1>
                        </div>}
                        
                        <div className='d-flex align-items-center gap-2'>
                            <select name="" id="" className='form-select'>
                                <option value="">Recent Books</option>
                            </select>
                        </div>
                    </div>
                    {/* search filter */}
                    <div className='d-flex w-100 mt-1'>
                        {alphabet.map(item=>(
                            <button className='btn text-capitalize fw-semibold'>{item}</button>
                        ))}
                    </div>
                    
                    <div className='row'>
                        {resource.map(item=>(
                            <div className='col-4'>
                                <ResourceBook loading={loading} data={item}/>
                            </div>
                        ))}
                    </div>
                </div>
            </div>
        </div>

        {/* footer */}
        <Footer/>
    </div>
  )
}

export default SearchPage
