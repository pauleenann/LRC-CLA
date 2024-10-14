import React, { useState } from 'react'
import './Catalog.css'
import addItem from '../../assets/Management System/inventory/add-item.svg'
import scanItem from '../../assets/Management System/inventory/scan-item.svg'
import search from '../../assets/Management System/logbook/search.svg'
import exportIcon from '../../assets/Management System/logbook/export.svg'
import dropdown from '../../assets/Management System/inventory/arrow-dropdown.svg'
import { Link } from 'react-router-dom'
import AuthorModal from '../AuthorModal/AuthorModal'
import PublisherModal from '../PublisherModal/PublisherModal'



const Catalog = () => {
  const [openAuthor, setOpenAuthor] = useState(false)
  const [openPublisher, setOpenPublisher] = useState(false)

  return (
    <div className='cat-container'>
      <h1>Catalog</h1>

        <div className='cat-buttons'>
          {/* add and scan item buttons */}
          <div className="add-scan-item">
              {/* add item */}
              <Link to='/add-item'>
                <button className='cat-add-item'>
                  <i class="fa-solid fa-pen"></i>
                  <span>Add Item</span>
                </button>
              </Link>
              

              {/* scan item */}
              {/* <button className='cat-scan-item'>
                <i class="fa-solid fa-barcode"></i>
                <span>Scan Item</span>
              </button> */}
          </div>
          {/* add author and publisher*/}
          <div className="add-author-publisher">
              {/* add author */}
              <button className='cat-add-author' onClick={()=>setOpenAuthor(!openAuthor)}>
                <i class="fa-solid fa-plus"></i>
                  Add Author
              </button>

              {/* add publisher */}
              <button className='cat-add-pub' onClick={()=>setOpenPublisher(!openPublisher)}>
                <i class="fa-solid fa-plus" ></i>
                  Add Publisher
              </button>
          </div>
        </div>
        

        {/* search,filter,export */}
        <div className="search-filter-export">
            {/* search-filter */}
            <div className="search-filter">
                <input type="text" className='cat-search-bar' placeholder='Search'/>
                <button className="cat-search-button">
                    <img src={search} alt="" />
                    Search
                </button>
                <select name="" id="" className='form-select'>
                    <option value="" selected>Filter</option>
                    <option value="">2</option>
                    <option value="">3</option>
                </select>

            </div>

            {/* row for filter and export button */}
            <div className="filter-export">
                {/* filter */}
                <select name="" id="" className='form-select'>
                    <option value="" selected>Customs</option>
                    <option value="">2</option>
                    <option value="">3</option>
                </select>
                {/* export button */}
                <button className='cat-export-button'>
                    <img src={exportIcon}alt="" />
                    Export
                </button>
            </div>
        </div>

       {/* table */}
       <table className="table table-striped">
        <thead className='cat-table-header'>
          <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Type</th>
            <th>Authors</th>
            <th>Shelf No.</th>
            <th>Copies</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>1</td>
            <td>1</td>
            <td>1</td>
            <td>1</td>
            <td>1</td>
            <td>
              <Link to='/view-item/1'><button className='cat-view'>
                <i class="fa-solid fa-bars"></i>
                <p>View</p>
              </button>
              </Link>
              
            </td>
          </tr>
        </tbody>
      </table>

      <AuthorModal open={openAuthor} close={()=>setOpenAuthor(!openAuthor)}/>
      <PublisherModal open={openPublisher} close={()=>setOpenPublisher(!openPublisher)}/>
    </div>
  )
}

export default Catalog
