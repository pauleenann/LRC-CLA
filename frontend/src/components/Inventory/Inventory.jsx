import React from 'react'
import './Inventory.css'
import addItem from '../../assets/Management System/inventory/add-item.svg'
import scanItem from '../../assets/Management System/inventory/scan-item.svg'
import search from '../../assets/Management System/logbook/search.svg'
import exportIcon from '../../assets/Management System/logbook/export.svg'

const Inventory = () => {
  return (
    <div className='inv-container'>
      <h1>Inventory</h1>

        {/* add and scan item buttons */}
        <div className="add-scan-item">
            
            {/* add item */}
            <button className='inv-add-item'>
                <img src={addItem}alt="Add Item" />
                Add Item
            </button>

            {/* scan item */}
            <button className='inv-scan-item'>
                <img src={scanItem}alt="Scan Item" />
                Scan Item
            </button>

        </div>

        {/* search,filter,export */}
        <div className="search-filter-export">
            {/* search-filter */}
            <div className="search-filter">
                <input type="text" className='inv-search-bar' placeholder='Search'/>
                <button className="inv-search-button">
                    <img src={search} alt="" />
                    Search
                </button>
                <select name="" id="" className='inv-filter'>
                    <option value="" selected>Filter</option>
                    <option value="">2</option>
                    <option value="">3</option>
                </select>

            </div>
            <div className="filter-export">
                {/* filter */}
                <select name="" id="" className='inv-filter'>
                    <option value="" selected>Customs</option>
                    <option value="">2</option>
                    <option value="">3</option>
                </select>
                {/* export button */}
                <button className='inv-export-button'>
                <img src={exportIcon}alt="" />
                Export
            </button>

            </div>
        </div>
    </div>
  )
}

export default Inventory
