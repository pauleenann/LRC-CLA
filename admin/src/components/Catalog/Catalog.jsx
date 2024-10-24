import React, { useEffect, useState } from 'react'
import './Catalog.css'
import addItem from '../../assets/Management System/inventory/add-item.svg'
import scanItem from '../../assets/Management System/inventory/scan-item.svg'
import search from '../../assets/Management System/logbook/search.svg'
import exportIcon from '../../assets/Management System/logbook/export.svg'
import dropdown from '../../assets/Management System/inventory/arrow-dropdown.svg'
import { Link } from 'react-router-dom'
import AuthorModal from '../AuthorModal/AuthorModal'
import PublisherModal from '../PublisherModal/PublisherModal'
import axios from 'axios'


const Catalog = () => {
  const [openAuthor, setOpenAuthor] = useState(false)
  const [openPublisher, setOpenPublisher] = useState(false)
  const [catalog, setCatalog] = useState([])

  useEffect(()=>{
    getCatalog();
  },[])

  const getCatalog = async()=>{
    try {
      const response = await axios.get('http://localhost:3001/catalogdetails').then(res=>res.data);
     
      setCatalog(response)
    } catch (err) {
        console.log(err.message);
    }
  }
  console.log(catalog)

  return (
    <div className='cat-container'>
      <h1>Catalog</h1>

        <div className='cat-buttons'>
          {/* add and scan item buttons */}
          <div className="add-scan-item">
              {/* add item */}
              <Link to='/add-item'>
                <button type="button" class="btn cat-add-item">
                  <i class="fa-solid fa-pen"></i>
                  Add item
                </button>
              </Link>
          </div>
          {/* add author and publisher*/}
          <div className="add-author-publisher">
              {/* add author */}

              <button className='btn cat-add-author' onClick={()=>setOpenAuthor(!openAuthor)}>
                <i class="fa-solid fa-plus"></i>
                  Add Author
              </button>
              {/* add publisher */}
              <button className='btn cat-add-pub' onClick={()=>setOpenPublisher(!openPublisher)}>
                <i class="fa-solid fa-plus" ></i>
                  Add Publisher
              </button>
          </div>
        </div>
        
        {/* search,filter,export */}
        <div className="search-filter-export">
            {/* search-filter */}
            <div className="search-filter">
                <form class="d-flex " role="search">
                  <input class="form-control me-2 cat-search-bar" type="search" placeholder="Search" aria-label="Search"/>
                  <button class="btn cat-search-button" type="submit">Search</button>
                </form>
                <div class="dropdown">
                  <button class="btn cat-dropdown dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Filter
                  </button>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Action</a></li>
                    <li><a class="dropdown-item" href="#">Another action</a></li>
                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                  </ul>
                </div>

            </div>

        </div>

        {/* table */}
        
            <table class=" cat-table">
              <thead>
                <tr>
                  <th >ID</th>
                  <th >Title</th>
                  <th >Type</th>
                  <th >Authors</th>
                  <th >Shelf No.</th>
                  <th >Copies</th>
                  <th ></th>
                </tr>
              </thead>
              <tbody>
                {catalog.length>0?catalog.map((item,key)=>(
                <tr key={key}>
                  <td>{item.resource_id}</td>
                  <td>{item.resource_title}</td>
                  <td>{item.type_name}</td>
                  <td>{item.author_names}</td>
                  <td>{item.cat_shelf_no}</td>
                  <td>{item.resource_quantity}</td>
                  <td>
                    <Link to='/view-item/1'>
                      <button className='btn cat-view'>
                        <i class="fa-solid fa-bars"></i>
                        View
                      </button>
                    </Link>
                  </td>
                </tr> )):
                  <tr>
                      <td colSpan="7">No record yet</td> {/* Use colspan to fill the empty row */}
                  </tr>}
              </tbody>
            </table>
            {/* pagination */}
            <nav aria-label="Page navigation example">
              <ul class="pagination justify-content-end">
                <li class="page-item disabled">
                  <a class="page-link">Previous</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                  <a class="page-link" href="#">Next</a>
                </li>
              </ul>
            </nav>
        
        

      <AuthorModal open={openAuthor} close={()=>setOpenAuthor(!openAuthor)}/>
      <PublisherModal open={openPublisher} close={()=>setOpenPublisher(!openPublisher)}/>
    </div>
  )
}

export default Catalog
