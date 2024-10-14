import React from 'react'
import './Footer.css'
import tupLogo from '../../assets/OPAC/icons/tup-logo.png'
import claLogo  from '../../assets/OPAC/icons/cla-logo.png'

const Footer = () => {
  return (
    <div className='footer-container'>
      {/* footer logo and college name */}
      <div className='footer-logo-text'>
        <div className='footer-logos'>
                <a class="navbar-brand" href="#"><img src={tupLogo} alt="tup-logo" className='footer-logo'/></a>
                <a class="navbar-brand" href="#"><img src={claLogo} alt="cla-logo" className='footer-logo'/></a>
          </div>
          <div className='footer-main-texts'>
            <p className='m-0 footer-main-text'>Collge of Liberal Arts</p>
            <p className='m-0 footer-main-text'>Learning Resource Center</p>
          </div>
      </div>
      {/* copyright */}
      <p className='m-0 footer-copyright'>© TUP-CLA Learning Resource Center 2024</p>
       
    </div>
  )
}

export default Footer
