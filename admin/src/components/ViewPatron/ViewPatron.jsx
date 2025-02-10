import React from 'react'
import './ViewPatron.css'
import { Link } from 'react-router-dom'
import ViewPatronTable from '../ViewPatronTable/ViewPatronTable';


const ViewPatron = () => {
  const logHistoryHeader = ['Date', 'Time in'];
  const circulationHistoryHeader = ['Book/s Issued','Borrow Date','Due Date','Return Date']

  return (
    <div className='viewpatron-container'>
      <div className=''>
          <Link to={'/patrons'}>
              <button className='view-patron-back-button'>
                <i className='fa-solid fa-arrow-left'></i>
                <p className='m-0'>Back</p>
              </button>
          </Link>
      </div>
      {/* user profile */}
      <div className='d-flex flex-column gap-2 py-3'>
        <div>
          <h1 className='m-0 fs-1'>Giolliana Plandez</h1>
          <p  className='m-0 fs-3'>TUPM-21-0220</p>
        </div>
        <div className='row w-50 py-1'>
          <div className="col-2 fw-semibold">Category:</div>
          <div className="col-10">Student</div>
          
          <div className="col-2 fw-semibold">Sex:</div>
          <div className="col-10">Female</div>

          <div className="col-2 fw-semibold">Email:</div>
          <div className="col-10">giolliana@gmail.com</div>

          <div className="col-2 fw-semibold">Mobile:</div>
          <div className="col-10">09270477362</div>

          <div className="col-2 fw-semibold">College:</div>
          <div className="col-10">College of Science</div>

          <div className="col-2 fw-semibold">Program:</div>
          <div className="col-10">Bachelor of Science in Information Technology</div>
        </div>  
      </div>

      <hr />

      {/* log history */}
      <ViewPatronTable header={logHistoryHeader} title={'Log History'}></ViewPatronTable>

      <hr />

      {/* Circulation history */}
      <ViewPatronTable header={circulationHistoryHeader} title={'Circulation History'}></ViewPatronTable>
    </div>
  )
}

export default ViewPatron
