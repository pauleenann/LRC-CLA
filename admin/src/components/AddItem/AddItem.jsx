import React from 'react'
import './AddItem.css'
import { Link } from 'react-router-dom'
import CatalogInfo from '../CatalogInfo/CatalogInfo'


const AddItem = () => {
  return (
    <div className='add-item-container'>
        <h1 className='m-0'>Cataloging</h1>

        <div className='add-item-path-button'>
            <Link>
                <button className='add-item-back-button'>
                    <i class="fa-solid fa-arrow-left"></i>
                    <p>Back</p>
                </button>
            </Link>
            <div className="add-item-path">
                <p>Cataloging / <span>Add new Item</span></p>
            </div>
        </div>

        <div className='item-information'>
            <CatalogInfo/>
        </div>
      
    </div>
  )
}

export default AddItem
