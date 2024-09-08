import React from 'react'
import './Catalog.css'
import addItem from '../../assets/Management System/inventory/add-item.svg'
import scanItem from '../../assets/Management System/inventory/scan-item.svg'
import search from '../../assets/Management System/logbook/search.svg'
import exportIcon from '../../assets/Management System/logbook/export.svg'
import dropdown from '../../assets/Management System/inventory/arrow-dropdown.svg'

const Catalog = () => {
  return (
    <div className='cat-container'>
      <h1>Catalog</h1>

        <div className='cat-buttons'>
          {/* add and scan item buttons */}
          <div className="add-scan-item">
              {/* add item */}
              <button className='cat-add-item'>
                  <img src={addItem}alt="Add Item" />
                  Add Item
              </button>

              {/* scan item */}
              <button className='cat-scan-item'>
                  <img src={scanItem}alt="Scan Item" />
                  Scan Item
              </button>
          </div>
          {/* add author and publisher*/}
          <div className="add-author-publisher">
              {/* add author */}
              <button className='cat-add-author'>
                <i class="fa-solid fa-plus"></i>
                  Add Author
              </button>

              {/* add publisher */}
              <button className='cat-add-pub'>
                <i class="fa-solid fa-plus"></i>
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
                <select name="" id="" className='cat-filter'>
                    <option value="" selected>Filter</option>
                    <option value="">2</option>
                    <option value="">3</option>
                </select>

            </div>

            {/* row for filter and export button */}
            <div className="filter-export">
                {/* filter */}
                <select name="" id="" className='cat-filter'>
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
              <button className='cat-view'>
                <i class="fa-solid fa-bars"></i>
                <p>View</p>
              </button>
            </td>
          </tr>
        </tbody>
      </table>


    </div>
  )
}

export default Catalog
