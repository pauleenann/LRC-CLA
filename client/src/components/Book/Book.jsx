import React, { useEffect, useState } from 'react';
import book1 from '../../assets/OPAC/photos/book1.jpg';
import './Book.css';

const Book = ({ isSearch, isView, item, loading }) => {
  console.log(item);
  
  const authors = item && item.author_name
    ? item.author_name.includes(',')
      ? item.author_name.split(',')
      : [item.author_name]
    : [];

  const [preview, setPreview] = useState();

  useEffect(() => {
    if (!item.resource_cover) return;
    
    if (item.type_id != 4) {
      let objectUrl;
      try{
        objectUrl = URL.createObjectURL(item.resource_cover);
        setPreview(objectUrl);
      }catch{
        if (item.resource_cover.includes("http://books.google.com")) {
          setPreview(item.resource_cover);
        } else {
          setPreview(`https://api.tuplrc-cla.com/${item.resource_cover}`);
        }
      }

      // Cleanup function to revoke the Object URL
      return () => {
        if (objectUrl) {
          URL.revokeObjectURL(objectUrl);
        }
      };
    } 
  }, [item]);

  return (
    <div className={isSearch ? 'search-book-container' : 'book-container'}>
      {preview  && !loading
      ? (
        <img src={preview || ''} alt="Book Cover" className={isSearch ? 'search-book' : ''} />
      ) 
      : !loading ? (
        <div className='thesis-cover'>
          <p className="title">{item?item.resource_title:''}</p>
        </div>
      )
    : <div className='book-loading'></div>}

      {!isView && !loading ?  (
        <div className='title-author'>
          <p className='title m-0'>{item ? item.resource_title : ''}</p>
          <p className='author m-0'>By {Array.isArray(authors) ? authors[0] : ''}</p>
        </div>
      ) : loading 
      ? <div>
        <div className="title-loading"></div>
        <div className="author-loading mt-2"></div>
      </div> :''}
    </div>
  );
};

export default Book;
