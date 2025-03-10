import React, { useState, useEffect, useRef } from 'react';
import './CatalogManage.css';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faBarcode, faTrashCan, faX, faArrowRight } from '@fortawesome/free-solid-svg-icons';
import AdminNavbar from '../AdminNavbar/AdminNavbar';
import AdminTopNavbar from '../AdminTopNavbar/AdminTopNavbar';
import axios from 'axios';


const CatalogManage = () => {
  const navigate = useNavigate();


  return (
    <div> 
      <div>
        <AdminNavbar /> 
      </div>
      <div>
                <AdminTopNavbar />
            <div className='circ-select-item-container'>
              <h1>Cataloging</h1>

              {/* Path and back */}
              <div className="back-path">
                <button onClick={() => navigate(-1)} className="btn">Back</button>
                <p>Cataloging / <span>Manage Catalog</span></p>
              </div>

              <div className="row add-items">
                {/* Scan or manual */}
                <div className="col scan-manual">
                  <div className="barcode">
                    <FontAwesomeIcon icon={faBarcode} className='icon' />
                    <p>Scan items in the scanner </p>
                  </div>
                  <p>No barcode available? Input manually instead</p>

                  <div className='circ-info'>
                    <label htmlFor="">ISBN / Title</label>
                    
                  </div>

                  
                </div>

                {/* Items added */}
                <div className="col summary">
                  <div>
                    <div className="header">
                      
                    </div>

                    <div className='inner overflow-y-auto'>
                      
                    </div>
                  </div>

                  <div className='checkout'>
                    {/* <Link to='/circulation/patron/item/checkout'> */}
                      
                      
                        <FontAwesomeIcon icon={faArrowRight} />
                    
                    {/* </Link> */}
                  </div>
                </div>
              </div>
            </div>

        </div>
    </div>
  );
};

export default CatalogManage;
