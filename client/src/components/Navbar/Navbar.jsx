import React from 'react'
import './Navbar.css'
import { Link } from 'react-router-dom'


const Navbar = () => {
  return (
    <nav className='navbar-box container py-3'>
      {/* logo and search bar */}
      <div className='d-flex align-items-center justify-content-between'>
        <p className='m-0 logo'>Liberal<span>Search</span>.</p>
        {/* search */}
        <div className='d-flex search'>
            {/* dropdown */}
            <select name="" id="" className='form-select dropdown'>
                <option value="">All</option>
            </select>
            {/* input */}
            <input type="text" placeholder='Search for resources'/>
            {/* search button */}
            <button className="">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </div>
      </div>
      {/* menu */}
      <div className="menu d-flex gap-3 mt-2">
        <button>Books</button>
        <span>|</span>
        <button>Journals</button>
        <span>|</span>
        <button>Newsletters</button>
        <span>|</span>
        <button>Theses</button>
      </div>
    </nav>
  )
}

export default Navbar
