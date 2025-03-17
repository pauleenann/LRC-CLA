import React from 'react'
import { motion } from 'framer-motion'; // Import Framer Motion
import Navbar from '../../components/Navbar/Navbar';
import { Link } from 'react-router-dom';

const fadeIn = {    
    hidden: { opacity: 0, y: 30 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.2} },
};

const ViewResourcePage = () => {
  return (
    <div className='view-container'>
        <motion.div className='top-welcome p-2 text-center' variants={fadeIn}>
            <p className="m-0">Welcome to College of Liberal Arts' Online Catalog!</p>
        </motion.div>

        <div className='border border-bottom-1'>
            <Navbar/> 
        </div>

        {/* content */}
        <div className="container my-5">
            {/* path */}
            <div className='mb-5'>
                <Link className='text-decoration-none text-dark' to='/search'><p>Go to Search</p></Link>
            </div>

            <div className="container bg-info w-75 h-100 row">
                {/* book info */}
                <div className="col-6">

                </div>

            </div>
        </div>

    </div>
  )
}

export default ViewResourcePage
