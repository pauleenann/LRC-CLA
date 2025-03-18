import React, { useEffect, useState } from 'react'
import './Navbar.css'
import { Link, useLocation, useNavigate } from 'react-router-dom'
import axios from 'axios';
import { useDispatch, useSelector } from 'react-redux';
import { fetchResources, setSearchQuery } from '../../features/resourceSlice';
import { setTypeArray } from '../../features/typeSlice';

const Navbar = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const [searchKeyword, setSearchKeyword] = useState('');
  const {type} = useSelector(state=>state.type)
  const {dept} = useSelector(state=>state.dept)
  const {topic} = useSelector(state=>state.topic)

  console.log(type)
 
  const handleKeyDown = (e) => {
    if (e.key === "Enter") {
        getSearch();
    }
  };

  const getSearch = async()=>{
    dispatch(setSearchQuery(searchKeyword));
    dispatch(fetchResources({ searchQuery: searchKeyword, type, dept, topic })); // Pass as an object
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
        <button
          onClick={()=>{
            dispatch(setTypeArray([1]))
            navigate(`/search?filter=Books`)
          }}
        >
          Books
        </button>
        <span>|</span>
        <button
          onClick={()=>{
            dispatch(setTypeArray([2]))
            navigate(`/search?filter=Journals`)
          }}
        >
          Journals
        </button>
        <span>|</span>
        <button
          onClick={()=>{
            dispatch(setTypeArray([3]))
            navigate(`/search?filter=Newsletters`)
          }}
        >
          Newsletters
        </button>
        <span>|</span>
        <button
          onClick={()=>{
            dispatch(setTypeArray([4]))
            navigate(`/search?filter=Theses and Dissertations`)
          }}
        >
          Theses & Dissertations
        </button>
      </div>
    </nav>
  )
}

export default Navbar
