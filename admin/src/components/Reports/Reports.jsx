import React from 'react'
import './Reports.css'
import dropdown from '../../assets/Management System/reports/arrow-dropdown.svg'
import report from '../../assets/Management System/reports/generate-report.svg'

const Reports = () => {
  return (
    <div className='reports-container'>
      <h1>Reports</h1>

      {/* reports column */}
      <div className="reports-filter-box">
        {/* first column */}
        <div className="reports-statistics">
          {/* statistics */}
          <div className="reports-statistics-box">
          <p className='reports-dropdown'>
              Acquisitions
            </p>
            <button>Acquisitions</button>
            <button>Patrons</button>
            <button>Circulation</button>
            <button>Cash Register</button>
          </div>

          {/* Top Lists */}
          <div className="reports-top-lists-box">
            <p className='reports-dropdown'>
              Top Lists
            </p>
            <button>Most Checkouts</button>
            <button>Most Circulated</button>
          </div>

           {/* Inactive */}
           <div className="reports-inactive-box">
           <p className='reports-dropdown'>
              Inactive
            </p>
            <button>Items with no checkouts</button>
          </div>
        </div>

        {/* reports summary */}
        <div className="reports-summary">
          <p className='reports-summary-header'>Patrons Reports</p>
          <p className='reports-summary-description'>Summary of patron statistics</p>

          {/* reports filter */}
          <div className="reports-summary-filter">

            {/* date filter*/}
            <div className="reports-date">
              <label htmlFor="">Date Filter</label>
              <div>
                <input type="date" className='reports-filter-date'/>
                <p>to</p>
                <input type="date" className='reports-filter-date'/>
              </div>
            </div>

             {/* college*/}
             <div className="reports-college">
              <label htmlFor="">College</label>
              <div>
                <div className='college-filter'>
                  {/* selected colleges */}
                  <div className='selected-colleges'>
                    <div className='selected-college'>College of Science   <button>x</button>
                    </div>
                  </div>

                  {/* dropdown */}
                  <select name="" id="" className='college-dropdown'>
                    <option value=""></option>
                    <option value="">College of Science</option>
                    <option value="">College of Liberal Arts</option>
                  </select>
                </div>
              </div>
            </div>

            {/* program*/}
            <div className="reports-program">
              <label htmlFor="">Program</label>
              <div>
                <div className='program-filter'>
                  {/* selected colleges */}
                  <div className='selected-programs'>
                    <div className='selected-program'>All<button>x</button>
                    </div>
                  </div>

                  {/* dropdown */}
                  <select name="" id="" className='program-dropdown'>
                    <option value=""></option>
                    <option value="">BSIT</option>
                    <option value="">BSIS</option>
                  </select>
                </div>
              </div>
            </div>

            {/* generate report button */}
            <button className='generate-report-button'>
              <img src={report} alt="" />
              Generate Report
            </button>
           


          </div>


        </div>
      </div> 
    </div>
  )
}

export default Reports

