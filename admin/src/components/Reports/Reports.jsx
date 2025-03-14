import React, { useEffect, useState } from 'react';
import './Reports.css';
import axios from 'axios';
import Loading from '../Loading/Loading';
import * as XLSX from 'xlsx'; // Import xlsx for Excel export
import dayjs from 'dayjs';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faArrowLeft, faArrowRight, faArrowUpWideShort, faDownload, faEye, faPlus, faSearch } from '@fortawesome/free-solid-svg-icons';
import ReportsModal from '../ReportsModal/ReportsModal';
import ReportView from '../ReportView/ReportView';

const Reports = () => {
  const [isReportModalOpen, setIsReportModalOpen] = useState(false);
  const [isViewModalOpen, setIsViewModalOpen] = useState(false);
  const [reports, setReports] = useState([]);
  const [viewId, setViewId] = useState(null)

  useEffect(()=>{
    getReports();
  },[])

  const getReports = async() => {
      try {
          const response = await axios.get('http://localhost:3001/api/reports');
          console.log(response);
          setReports(response.data);
      } catch (error) {
          console.log('Cannot fetch details. ', error);
      }
  };

  return (
    <div className="reports-container">
      <h1>Reports</h1>

      <div className='d-flex flex-column gap-3'>
        {/* search bar, and sort and create */}
        <div className='d-flex justify-content-between mt-4'>
          {/* search bar */}
          <div className='d-flex gap-2'>
            <input type="text" className='search-bar rounded ps-2' placeholder='Search'/>
            <button className='btn search-btn'>
              <FontAwesomeIcon icon={faSearch} className='icon'/>
            </button>
          </div>
          {/* sort and create report */}
          <div className='d-flex gap-2'>
            <button className='btn sort-btn'>
              <FontAwesomeIcon icon={faArrowUpWideShort} className='icon'/>
            </button>
            <button className='btn create-btn d-flex gap-3 align-items-center' onClick={()=>setIsReportModalOpen(true)}>
              <FontAwesomeIcon icon={faPlus} className='icon'/>
              Create new report
            </button>
          </div>
        </div>

        {/* header */}
        <div className='header m-0 p-0 row d-flex align-items-center text-center justify-content-center rounded text-light'>
          <div className='col-3'>Report Name</div>
          <div className='col-3'>Report Description</div>
          <div className='col-3'>Created at</div>
          <div className='col-3'>Actions</div>
        </div>

        {/* data */}
        {reports.map(report=>(
          <div className='m-0 p-0 d-flex align-items-center text-center row rounded data'>
            <div className='col-3'>{report.report_name}</div>
            <div className='col-3'>{report.report_description}</div>
            <div className='col-3'>{dayjs(report.created_at).format('YYYY-MM-DD')}</div>
            <div className='col-3'>
              {/* <button className="btn download-btn">
                <FontAwesomeIcon icon={faDownload} className='icon'/>
              </button> */}
              <button className="btn eye-btn">
                <FontAwesomeIcon icon={faEye} className='icon' onClick={()=>{
                  setViewId(report.report_id);
                  setIsViewModalOpen(true);
                }}/>
              </button>
            </div>
          </div>
        ))}
        
      </div>
      <ReportsModal open={isReportModalOpen} close={()=>setIsReportModalOpen(false)}/>
      <ReportView open={isViewModalOpen} close={()=>setIsViewModalOpen(false)} id={viewId}/>
    </div>
  );
};

export default Reports;
