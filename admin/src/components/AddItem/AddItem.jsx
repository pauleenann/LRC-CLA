import React from 'react'
import './AddItem.css'
import { Link } from 'react-router-dom'
import CatalogInfo from '../CatalogInfo/CatalogInfo'
import Cataloging from '../Cataloging/Cataloging'


const AddItem = () => {

  return (
    <div className='add-item-container'>
        <h1 className='m-0'>Cataloging</h1>

        <div className='add-item-path-button'>
            <Link to='/catalog'>
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

        <div className="cataloging">
            <Cataloging/>
        </div>

        <div className="cancel-save">
            <button className="add-item-cancel">
                Cancel
            </button>
            <button className="add-item-save">
                <i class="fa-regular fa-floppy-disk"></i>
                <span>Save</span>
            </button>
        </div>
      
    </div>
  )
}

export default AddItem
