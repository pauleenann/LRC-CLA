import React from 'react'
import AdminNavbar from '../../components/AdminNavbar/AdminNavbar'
import AdminTopNavbar from '../../components/AdminTopNavbar/AdminTopNavbar'

import './CatalogPage.css'
import Catalog from '../../components/Catalog/Catalog'

const CatalogPage = () => {
  return (
    <div className='catalogpage'>
      <div>
       <AdminNavbar/>
      </div> 
      <div>
        <AdminTopNavbar/>
        <Catalog/>
      </div>
    </div>
  )
}

export default CatalogPage
