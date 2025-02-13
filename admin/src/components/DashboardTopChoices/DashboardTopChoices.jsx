import React from 'react'
import './DashboardTopChoices.css'

const DashboardTopChoices = ({number}) => {
  return (
    <div className='top-choices-container d-flex align-items-center gap-3'>
        {/* top number */}
        <div className='top-number d-flex align-items-center justify-content-center'>
            <span className='m-0'>{number}</span>
        </div>
        {/* book content */}
        <div className='d-flex align-items-center gap-2'>
            {/* book cover */}
            <div className='book-cover'>

            </div>

            {/* book details */}
            <div className=''>
                <p className='m-0 fw-semibold'>Book Title</p>
                <p className='m-0'>By Book Author</p>
                <p className='mt-2'>Published in 2005</p>
            </div>
        </div>
    </div>
  )
}

export default DashboardTopChoices
