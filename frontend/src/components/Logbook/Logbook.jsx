import React from 'react'
import './Logbook.css'
import search from '../../assets/Management System/logbook/search.svg'
import exportIcon from '../../assets/Management System/logbook/export.svg'

const Logbook = () => {
  return (
    <div className='logbook-container'>
        <h1>Logbook</h1>

        {/* search bar and export button */}
        <div className="search-export">
            {/* search bar */}
            <div className="logbook-search">
                <input type="text" className='logbook-search-bar' placeholder='Enter Student ID or Student Name'/>
                <button className="logbook-search-button">
                    <img src={search} alt="" />
                    Search
                </button>

            </div>

            {/* export button */}
            <button className='logbook-export-button'>
                <img src={exportIcon}alt="" />
                Export
            </button>
        </div>

        
      
    </div>
  )
}

export default Logbook
