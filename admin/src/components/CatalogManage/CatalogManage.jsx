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

  const [departments, setDepartments] = useState([]);
  const [topics, setTopics] = useState([]);

  useEffect(() => {
    getDepartments();
    getTopics();
  }, []);

  const getDepartments = async () => {
    try{
      const response = await axios.get('http://localhost:3001/api/data/departments').then(res=>res.data)
      setDepartments(response)
      console.log(response)
    }catch(err){
        console.log("Couldn't retrieve department online. An error occurred: ", err.message)
    }
  }

  const getTopics =async ()=>{
    try{
        const response = await axios.get('http://localhost:3001/api/data/topic').then(res=>res.data)
        setTopics(response)
        console.log(response)
    }catch(err){
        console.log("Couldn't retrieve topics online. An error occurred: ", err.message)
    }
}


  return (
    <div> 
      
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
                 <span className='fw-bold'>Departments</span>

                  <div className='departments'>
                    {departments.map((dept, index) => (
                      <button className='btn border border-danger rounded-3 d-flex mb-2 w-100 '>
                        <div key={index} className='dept '>
                          
                            <span className='col text-capitalize'>{dept.dept_name}</span>
                           
                          
                        </div>
                      </button>
                    ))}
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
  );
};

export default CatalogManage;
