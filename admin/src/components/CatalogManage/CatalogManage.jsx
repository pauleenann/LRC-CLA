import React, { useState, useEffect } from 'react';
import './CatalogManage.css';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faBookOpenReader, faPlus, faPen, faTrash } from '@fortawesome/free-solid-svg-icons';
import axios from 'axios';

const CatalogManage = () => {
  const [departments, setDepartments] = useState([]);
  const [selectedDepartmentId, setSelectedDepartmentId] = useState(null);
  const [selectedDepartment, setSelectedDepartment] = useState(null);
  const [selectedTopics, setSelectedTopics] = useState(null);
  const [topics, setTopics] = useState([]);
  const [isEdit,setIsEdit] = useState(false);

  useEffect(() => {
    getDepartments();
    getTopics();
  }, []);

  const getDepartments = async () => {
    try {
      const response = await axios.get('http://localhost:3001/api/data/departments');
      setDepartments(response.data);
    } catch (err) {
      console.log("Couldn't retrieve department data. Error:", err.message);
    }
  };

  const getTopics =async ()=>{
    try{
        const response = await axios.get('http://localhost:3001/api/data/topic').then(res=>res.data)
        setTopics(response)
        console.log(response)
    }catch(err){
        console.log("Couldn't retrieve topics online. An error occurred: ", err.message)
    }
  }

  const handleSelectedDepartment = (id) => {
    setSelectedDepartmentId(id);
  };

  useEffect(() => {
    setSelectedDepartment(departments.find(dept => dept.dept_id === selectedDepartmentId) || null);
    // setSelectedTopics(topics.filter(topic=>topic.topic_id ===))
  }, [selectedDepartmentId, departments]);

  console.log(selectedDepartmentId); 

  return (
    <div className="manage-catalog">
      <h1>Cataloging</h1>

      {/* Path and back */}
      <div className="back-path">
        <p>Cataloging / <span>Manage Catalog</span></p>
      </div>

      {/* Columns */}
      <div className="row">
        {/* Department List */}
        <div className="col d-flex flex-column align-items-start gap-3">
          {/* Department Dropdown */}
          <div className='d-flex flex-column align-items-start'>
            <div>
              <select className="form-select border-0 fw-semibold">
                <option value="">Department</option>
                <option value="Student">Student</option>
                <option value="Faculty">Faculty</option>
              </select>
            </div>
            <span className='instructions mt-3'>* Choose the department you want to manage</span>
          </div>
          

          {/* Department Buttons */}
          {departments.map(item => (
            <button 
              key={item.dept_id} // ✅ Added key to avoid React warnings
              className="d-flex gap-4 align-items-center px-4 dept-btn border-0 bg-transparent text-capitalize"
              onClick={() => handleSelectedDepartment(item.dept_id)}
            >
              <FontAwesomeIcon icon={faBookOpenReader} className="icon" />
              {item.dept_name}
            </button>
          ))}

          {/* Add Department */}
          <button className="btn d-flex gap-3 align-items-center add-dept-btn mt-5">
            <FontAwesomeIcon icon={faPlus} className="icon" />
            Add new department
          </button>
        </div>

        {/* Selected Department Section */}
        {selectedDepartment?
        <div className="col d-flex flex-column justify-content-between selected rounded p-4 ">
          <div className='d-flex flex-column gap-3'>
            {/* Edit Button */}
            <div className="d-flex justify-content-end">
              <button 
                className="btn d-flex align-items-center gap-2 text-end edit-btn"
                onClick={()=>setIsEdit(!isEdit)}
              >
                <FontAwesomeIcon icon={faPen} className="icon" />
                <span>Edit</span>
              </button>
            </div>

            {/* Department Name Input */}
            <div className='row d-flex'>
              <div className="col d-flex flex-column">
                <label>Department Name</label>
                <input 
                  type="text" 
                  className="rounded p-2 text-capitalize" 
                  value={selectedDepartment ? selectedDepartment.dept_name : ""} 
                  readOnly
                />
              </div>

              {/* shelf no */}
              <div className="col-2 d-flex flex-column">
                <label>Shelf No.</label>
                <input 
                  type="number" 
                  className="rounded p-2 text-capitalize" 
                  value={selectedDepartment ? selectedDepartment.dept_shelf_no : ""} 
                  readOnly
                />
              </div>
              
            </div>

            {/* topics under chosen department */}
            <div className='d-flex flex-column align-items-start gap-2'>
              {/* dropdown */}
              <div>
                <select className="form-select bg-transparent border-0 mt-4 text-capitalize fw-semibold">
                  <option value="">Topics under {selectedDepartment.dept_name}</option>
                  <option value="Student">Student</option>
                  <option value="Faculty">Faculty</option>
                </select>
              </div>
              
              {/* topics */}
              <div className='p-3 border-bottom border-top w-100'>
                Accounting
              </div>
              
              {/* add new topic */}
              <button className="btn add-topic d-flex align-items-center gap-3">
                <FontAwesomeIcon icon={faPlus} className="icon" />
                Add new topic
              </button>
            </div>
          </div>

          {/* trash */}
          <div className='d-flex justify-content-end'>
            <button className="btn trash-btn">
              <FontAwesomeIcon icon={faTrash} className="icon" />
            </button>
          </div>
          
        </div>
        :''}
        
      </div>
    </div>
  );
};

export default CatalogManage;
