import React from 'react';
import { motion } from 'framer-motion';
import './Hero.css';

const Hero = () => {
  return (
    <motion.div 
      className='hero-box'
      initial={{ opacity: 0, y: 30 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.5 }} // Faster transition
    >
      <div className="container d-flex flex-column justify-content-center h-100 align-items-start text-light">
        {/* Fast fade-in heading */}
        <motion.h1 
          className='w-50 fw-semibold'
          initial={{ opacity: 0, y: -20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.4, delay: 0.1 }}
        >
          Welcome to College of Liberal Arts’ Learning Resources Center
        </motion.h1>

        {/* Fast fade-in paragraph */}
        <motion.p 
          className="m-0 w-50 fs-4 fw-light"
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.4, delay: 0.2 }}
        >
          Want to find academic resources for your next project? Our online catalog makes searching simple and intuitive.
        </motion.p>

        {/* Button with quick pop effect */}
        <motion.button 
          className="btn btn-dark mt-2 p-3"
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
          transition={{ duration: 0.3, delay: 0.3 }}
          whileHover={{ scale: 1.05 }}
        >
          FIND RESOURCES
        </motion.button>
      </div>
    </motion.div>
  );
};

export default Hero;
