import React, { useState } from 'react'
import './Navbar.css'
import { Link, useLocation, useNavigate } from 'react-router-dom'
import axios from 'axios';
import { useDispatch } from 'react-redux';
import { fetchResources, setSearchQuery } from '../../features/resourceSlice';

const Navbar = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const [searchKeyword, setSearchKeyword] = useState('');
  
  const handleKeyDown = (e) => {
    if (e.key === "Enter") {
        getSearch();
    }
  };

  const getSearch = async()=>{
    dispatch(setSearchQuery(searchKeyword));
    dispatch(fetchResources(searchKeyword)); // Pass query to the endpoint

    navigate('/search')
  }

  
  console.log(searchKeyword)
  
  return (
    <nav className='navbar-box container py-3'>
      {/* logo and search bar */}
      <div className='d-flex align-items-center justify-content-between'>
        <Link className='text-decoration-none' to='/'>
          <p className='m-0 logo'>Liberal<span>Search</span>.</p>
        </Link>
        {/* search */}
        <div className='d-flex search'>
            {/* dropdown */}
            <select name="" id="" className='form-select dropdown'>
                <option value="">All</option>
            </select>
            {/* input */}
            <input type="text" placeholder='Search for resources' onChange={(e)=>setSearchKeyword(e.target.value)} onKeyDown={handleKeyDown}/>
            {/* search button */}
            <button className="" onClick={getSearch}>
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
