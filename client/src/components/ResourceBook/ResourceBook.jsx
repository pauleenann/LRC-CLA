import React from 'react'
import './ResourceBook.css'
import book from '../../assets/OPAC/photos/samplebook.jpg'

const ResourceBook = () => {
  return (
    <div className='resourcebook-box'>
      {/* image */}
      <div className='img-box d-flex align-items-center justify-content-center mb-2'>
        <img src={book} alt="" />
      </div>
      <p className="m-0 title fw-semibold">Book Title</p>
      <p className="m-0 author fw-semibold">By Book Author</p>
    </div>
  )
}

export default ResourceBook
