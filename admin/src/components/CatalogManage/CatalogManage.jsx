import React, { useState, useEffect, useRef } from 'react';
import './CatalogManage.css';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faBarcode, faTrashCan, faX, faArrowRight, faBookOpenReader, faSortDown } from '@fortawesome/free-solid-svg-icons';
import axios from 'axios';
import { Table, Button, Form, Card, Pagination } from "react-bootstrap";

const CatalogManage = () => {
  const navigate = useNavigate();

  const [departments, setDepartments] = useState([]);
  const [topics, setTopics] = useState([]);
  const [selectedDepartment, setSelectedDepartment] = useState(null);

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
                 <span className='fw-bold fs-3'>Departments</span>

                  <div className='departments'>
                    {departments.map((dept, index) => (
                      <div key={index} className='dept '>
                        <button className='btn border border-danger rounded-3 d-flex mb-2 w-100' onClick={() => setSelectedDepartment(dept)}>
                          
                          <FontAwesomeIcon icon={faBookOpenReader} className='ms-2 me-3'/>
                          <span className='col text-capitalize'>{dept.dept_name}</span> 
                    
                        </button>
                      </div>
                    ))}
                  </div>
                  <div>
                    <Button className='btn btn-danger w-100 mt-3'>Add new Department</Button>
                  </div>
                </div>
                

                {/* Items added */}
                <div className="col summary">
                  
                  <div className="col-md-12 pt-3 h-100 ps-2 pe-2">
                      {selectedDepartment ? (
                          <Card className="p-3 shadow-sm h-100">
                              <h4 className='fw-bolder text-capitalize mb-3 mt-2 '>{selectedDepartment.dept_name}</h4>
                              
                              <p className='fw-bold text-capitalize '>Shelf no.: <input type="text" className="form-control mb-3" placeholder={selectedDepartment.dept_shelf_no}/></p>
                              <span className='fw-light ms-2 fs-6'>Topics under {selectedDepartment.dept_name} &nbsp; <FontAwesomeIcon className='mb-1' icon={faSortDown} /> </span>
                              
                          </Card>
                      ) : (
                          <p className="text-muted">Select a department to view details.</p>
                      )}
                  </div>
                  
                  
                  <div class="row">
                    
                    
                  </div>
                </div>
              </div>
            </div>

    </div>
  );
};

export default CatalogManage;
