import React from 'react'
import { motion } from 'framer-motion'; // Import Framer Motion
import { Link } from 'react-router-dom';
import Navbar from '../../components/Navbar/Navbar';
import ResourceBook from '../../components/ResourceBook/ResourceBook';
import './SearchPage.css'
import { useSelector } from 'react-redux';

const fadeIn = {    
    hidden: { opacity: 0, y: 30 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.2} },
  };

const SearchPage = () => {
    // array from letter A-Z
    const alphabet = Array.from({ length: 26 }, (_, i) => String.fromCharCode(97 + i));
    // resource
    const {resource,loading, searchQuery} = useSelector(state=>state.resource);

    console.log(resource)

  return (
    <div className='search-container '>
        <motion.div className='top-welcome p-2 text-center' variants={fadeIn}>
            <p className="m-0">Welcome to College of Liberal Arts’ Online Catalog!</p>
        </motion.div>

        <div className='border border-bottom-1'>
           <Navbar/> 
        </div>
        
        
        <div className="container mt-5">
            {/* back */}
            <div>
                <Link className='text-decoration-none text-dark' to='/'><p>Back to Home</p></Link>
            </div>
            {/* search header */}
            <div className='d-flex justify-content-between align-items-center mt-5'>
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
                    <div className='col-3'>
                        <ResourceBook loading={loading} data={item}/>
                    </div>
                    
                ))}
            </div>
            
        </div>
    </div>
  )
}

export default SearchPage
