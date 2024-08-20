import React from 'react'
import './InventoryPage.css'
import Inventory from '../../components/Inventory/Inventory'
import AdminNavbar from '../../components/AdminNavbar/AdminNavbar'
import AdminTopNavbar from '../../components/AdminTopNavbar/AdminTopNavbar'

const InventoryPage = () => {
  return (
    <div className='invpage'>
      <div>
       <AdminNavbar/>
      </div> 
      <div>
        <AdminTopNavbar/>
        <Inventory/>
      </div>
    </div>
  )
}

export default InventoryPage
