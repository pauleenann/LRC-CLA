import React from 'react'
import AdminNavbar from '../../components/AdminNavbar/AdminNavbar'
import AdminTopNavbar from '../../components/AdminTopNavbar/AdminTopNavbar'
import Logbook from '../../components/Logbook/Logbook'
import './LogbookPage.css'


const LogbookPage = () => {
  return (
    <div className='logbook-page'>
        <div>
        <AdminNavbar/>
        </div> 
        <div className='p-0 m-0 h-100'>
            <AdminTopNavbar/>
            <Logbook/>
        </div>
    </div>
  )
}

export default LogbookPage
