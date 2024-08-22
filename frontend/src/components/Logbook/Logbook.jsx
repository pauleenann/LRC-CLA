import React from 'react'
import './Logbook.css'
import search from '../../assets/Management System/logbook/search.svg'
import exportIcon from '../../assets/Management System/logbook/export.svg'
import left from '../../assets/Management System/logbook/arrow-left-red.svg'
import right from '../../assets/Management System/logbook/arrow-right-red.svg'

const Logbook = () => {
  return (
    <div className='logbook-container'>
        <h1>Logbook</h1>

        {/* search bar and export button */}
        <div className="search-export">
            {/* search bar */}
            <div className="logbook-search">
                <input type="text" className='logbook-search-bar' placeholder='Enter Student ID or Student Name'/>
                <button className="logbook-search-button">
                    <img src={search} alt="" />
                    Search
                </button>

            </div>

            {/* export button */}
            <button className='logbook-export-button'>
                <img src={exportIcon}alt="" />
                Export
            </button>
        </div>

        {/* logbook filters */}
        <div className="logbook-filters">
            {/* logbook entries per page */}
            <div className="logbook-entries-page">
                <label htmlFor="entries">Entries per page</label>
                <select name="" id="entries"className='logbook-entries-dropdown'>
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                </select>
            </div>

            {/* date filter */}
            <div className="logbook-date-filter">
                <label htmlFor="" >Date Filter</label>
                <input type="date" className='logbook-filter-date'/>
                <p>to</p>
                <input type="date" className='logbook-filter-date'/>
                <button className='logbook-clear-button'>Clear</button>
            </div>
        </div>

        {/* logbook table */}
        <div className='logbook-table-box'>
            <table className='logbook-table'>
                <thead>
                    <tr>
                        <th>Number</th>
                        <th>TUP ID</th>
                        <th>First Name</th>
                        <th>Middle Name</th>
                        <th>Last Name</th>
                        <th>Gender</th>
                        <th>Course</th>
                        <th>College</th>
                        <th>Date</th>
                        <th>Time in</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>x</td>
                        <td>xxxx-xx-xxxx</td>
                        <td>xxxx</td>
                        <td>xxxx</td>
                        <td>xxxx</td>
                        <td>xxxxx</td>
                        <td>xxxx-xx</td>
                        <td>xxx</td>
                        <td>xx-xx-xxxx</td>
                        <td>x:xx:xx AM</td>
                    </tr>
                </tbody>
            </table>
        </div>

        {/* logbook table pagination */}
        <div className="logbook-table-pagination">
            <div className="logbook-table-entries">
                Showing <span className='logbook-current-entry'>5</span> of <span className='logbook-total-entry'>10</span> Entries
            </div>
            <div className="logbook-table-button-pagination">
                <img src={left}alt="" />
                <div className='logbook-pages'>
                    <div className='logbook-pages-current'>2</div>
                    <div className='logbook-pages-not-current'>1</div>
                </div>
                <img src={right}alt="" />
            </div>
        </div>


      
    </div>
  )
}

export default Logbook
