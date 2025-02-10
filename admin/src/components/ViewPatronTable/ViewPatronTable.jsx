import React from 'react'
import './ViewPatronTable.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {faArrowLeft, faArrowRight } from '@fortawesome/free-solid-svg-icons';

const ViewPatronTable = ({header, title}) => {
  return (
    <div className='view-patron-table-container d-flex flex-column gap-3'>
        <h1 className='m-0'>{title}</h1>
        {/* search filter */}
        <div className='d-flex justify-content-between'>
          <div className='search-filter d-flex align-items-center gap-2'>
            <input type="date" name="" id="" />
            <span className='m-0'>to</span>
            <input type="date" name="" id="" />
            <button className='btn search'>Search</button>
          </div>
          <button className="btn export">Export</button>
        </div>
        {/* table */}
        <table>
          <thead>
            {header.length!=0
            ?header.map(item=>(
                <td>{item}</td>
            ))
            :''}
          </thead>
          <tbody>
            <tr>
              <td>d</td>
            </tr>
          </tbody>
        </table>
        {/* pagination */}
        <div className='pagination d-flex justify-content-between align-items-center'>
          {/* page number */}
          <span>Page 1 of 1</span>
          {/* buttons */}
          <div className='d-flex gap-1'>
            <button className="btn"><FontAwesomeIcon icon={faArrowLeft} className='icon'/></button>
            <button className="btn"><FontAwesomeIcon icon={faArrowRight} className='icon'/></button>
          </div>
        </div>
    </div>
  )
}

export default ViewPatronTable
