import React from 'react'
import './Footer.css'
import { Link } from 'react-router-dom'


const Footer = () => {
  return (
    <footer>
      <div className="container d-flex align-items-center justify-content-between h-100">
        {/* logo, subtitle, social */}
        <div className='w-25 text-light'>
            <p className='m-0 logo fs-1'>Liberal<span>Search</span>.</p>
            <p className='m-0 fs-sm sub'>An online catalog dedicated for College of Liberal Arts’ Learning Resources Center</p>
            <i class="fa-brands fa-facebook fs-1 mt-2"></i>
        </div>

        {/* quick links and contact us */}
        <div className='d-flex gap-5'>
            {/* quick links */}
            <div className="quick-links text-light">
                <h2 className='fs-1 mb-3'>Quick Links</h2>
                <ul className='list-unstyled d-flex flex-column gap-2'>
                    <li><Link to='/' className='text-decoration-none text-light'>Home</Link></li>
                    <li><Link to='/about' className='text-decoration-none text-light'>About Us</Link></li>
                    <li><Link to='/terms-conditions' className='text-decoration-none text-light'>Terms & Conditions</Link></li>
                </ul>
            </div>
            {/* contact us */}
            <div className="contact-us text-light">
                <h2 className='fs-1 mb-3'>Contact Us</h2>
                <div className='d-flex align-items-center gap-2'>
                    <i class="fa-solid fa-envelope"></i>
                    <p className="m-0">learningresourcescenter@gmail.com</p>
                </div>
            </div>
        </div>
      </div>
      {/* copyright */}
      <div className="copyright text-center">
        <p className="m-0 p-2 text-light fs-sm">Copyright © 2025. All Rights Reserved TUP-CLA Learning Resource Center</p>
      </div>
    </footer>
  )
}

export default Footer
