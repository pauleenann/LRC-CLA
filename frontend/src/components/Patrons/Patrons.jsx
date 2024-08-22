import React from 'react'
import './Patrons.css'
import search from '../../assets/Management System/logbook/search.svg'
import checkout from '../../assets/Management System/patrons/checkout.svg'
import edit from '../../assets/Management System/patrons/edit-patron.svg'

const Patrons = () => {
  return (
    <div className='patrons-container'>
        <h1>Patrons</h1>

        {/* search field and category filter */}
        <div className="search-field-category-filter">
            {/* search field box */}
            <div className="patrons-search-field">
                <label htmlFor="">Search field</label>
                <select name="" id="" className='patrons-filter'>
                    <option value="">Standard</option>
                </select>
            </div>

             {/* category box */}
             <div className="patrons-category">
                <label htmlFor="">Category</label>
                <select name="" id="" className='patrons-filter'>
                    <option value="">Any</option>
                </select>
            </div>
        </div>

        {/* search bar */}
        <div className="search-bar-box">
            <input type="text" className='patrons-search-bar'placeholder='Search'/>
            <button className="patrons-search-button">
                <img src={search} alt="" />
                Search
            </button>
        </div>

        {/* logbook table */}
        <div className='patrons-table-box'>
            <table className='patrons-table'>
                <thead>
                    <tr>
                        <th>TUP ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Category</th>
                        <th>Checkouts</th>
                        <th>Fines</th>
                        <th></th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>xxxx-xx-xxxx</td>
                        <td>xxxx xxxx</td>
                        <td>xxxx@gmail.com</td>
                        <td>xxxx</td>
                        <td>0/0</td>
                        <td>₱<span>0.00</span></td>
                        <td className='patron-edit-checkout'>
                            <button className='patron-edit-button'>
                                <img src={edit} alt="" />
                                Edit
                            </button>
                            <button className='patron-checkout-button'>
                                <img src={checkout} alt="" />
                                Checkout
                            </button>
                        </td>
                       
                    </tr>
                </tbody>
            </table>
        </div>
      
    </div>
  )
}

export default Patrons
