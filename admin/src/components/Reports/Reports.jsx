import React, { useEffect, useState } from 'react';
import './Reports.css';
import axios from 'axios';
import Loading from '../Loading/Loading';
import * as XLSX from 'xlsx'; // Import xlsx for Excel export
import dayjs from 'dayjs';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faArrowLeft, faArrowRight, faArrowDown, faArrowUp, faArrowUpWideShort, faDownload, faEye, faPlus, faSearch, faExclamationCircle } from '@fortawesome/free-solid-svg-icons';
import ReportsModal from '../ReportsModal/ReportsModal';
import ReportView from '../ReportView/ReportView';

const Reports = () => {
  const [isReportModalOpen, setIsReportModalOpen] = useState(false);
  const [isViewModalOpen, setIsViewModalOpen] = useState(false);
  const [reports, setReports] = useState([]);
  const [filteredReports, setFilteredReports] = useState([]);
  const [viewId, setViewId] = useState(null);
  const [isLoading, setIsLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [sortConfig, setSortConfig] = useState({ key: 'created_at', direction: 'desc' });
  
  // Pagination states
  const [currentPage, setCurrentPage] = useState(1);
  const [reportsPerPage] = useState(10);

  useEffect(() => {
    getReports();
  }, []);

  useEffect(() => {
    // Filter reports based on search term
    const filtered = reports.filter(report => 
      report.report_name.toLowerCase().includes(searchTerm.toLowerCase()) ||
      report.report_description.toLowerCase().includes(searchTerm.toLowerCase())
    );
    
    // Apply sorting
    const sortedReports = [...filtered].sort((a, b) => {
      if (sortConfig.key === 'created_at') {
        return sortConfig.direction === 'asc' 
          ? new Date(a.created_at) - new Date(b.created_at)
          : new Date(b.created_at) - new Date(a.created_at);
      } else {
        if (a[sortConfig.key] < b[sortConfig.key]) {
          return sortConfig.direction === 'asc' ? -1 : 1;
        }
        if (a[sortConfig.key] > b[sortConfig.key]) {
          return sortConfig.direction === 'asc' ? 1 : -1;
        }
        return 0;
      }
    });
    
    setFilteredReports(sortedReports);
    setCurrentPage(1); // Reset to first page when filtering or sorting
  }, [searchTerm, reports, sortConfig]);

  const getReports = async() => {
    setIsLoading(true);
    try {
      const response = await axios.get('http://localhost:3001/api/reports');
      setReports(response.data);
      setFilteredReports(response.data);
    } catch (error) {
      console.log('Cannot fetch details. ', error);
    } finally {
      setIsLoading(false);
    }
  };

  // Clear all filters
  const clearFilters = () => {
    setSearchTerm('');
    setSortConfig({ key: 'created_at', direction: 'desc' });
    setCurrentPage(1);
  };

  const handleSearch = (e) => {
    setSearchTerm(e.target.value);
  };

  const handleSort = (key) => {
    setSortConfig(prevSortConfig => ({
      key,
      direction: prevSortConfig.key === key && prevSortConfig.direction === 'asc' ? 'desc' : 'asc'
    }));
  };

  // Get current reports for pagination
  const indexOfLastReport = currentPage * reportsPerPage;
  const indexOfFirstReport = indexOfLastReport - reportsPerPage;
  const currentReports = filteredReports.slice(indexOfFirstReport, indexOfLastReport);
  const totalPages = Math.ceil(filteredReports.length / reportsPerPage);

  const paginate = (pageNumber) => setCurrentPage(pageNumber);

  const getSortIcon = (key) => {
    if (sortConfig.key === key) {
      return sortConfig.direction === 'asc' ? faArrowUp : faArrowDown;
    }
    return faArrowUpWideShort;
  };

  return (
    <div className="reports-container bg-light">
      <h1>Reports</h1>

      <div className='d-flex flex-column gap-3'>
        {/* search bar, and sort and create */}
        <div className='d-flex justify-content-between mt-4'>
          {/* search bar */}
          <div className='input-group w-50 shadow-sm'>
            <input 
              type="text" 
              className='form-control' 
              placeholder='Search' 
              value={searchTerm}
              onChange={handleSearch}
            />
            <button className='btn search-btn'>
              <FontAwesomeIcon icon={faSearch}/>
            </button>
          </div>
          {/* sort and create report */}
          <div className='d-flex gap-2'>
            <button className='btn create-btn d-flex gap-2 align-items-center shadow-sm' onClick={() => setIsReportModalOpen(true)}>
              <FontAwesomeIcon icon={faPlus}/>
              Create new report
            </button>
          </div>
        </div>

        <div className='d-flex flex-column gap-3 data-box'>
          {/* header */}
          <div className='header m-0 p-0 row d-flex align-items-center text-center justify-content-center rounded text-light shadow-sm'>
            <div className='col-3 cursor-pointer' onClick={() => handleSort('report_name')}>
              Report Name
              <FontAwesomeIcon 
                icon={getSortIcon('report_name')} 
                className='ms-2'
              />
            </div>
            <div className='col-3 cursor-pointer' onClick={() => handleSort('report_description')}>
              Report Description
              <FontAwesomeIcon 
                icon={getSortIcon('report_description')} 
                className='ms-2'
              />
            </div>
            <div className='col-3 cursor-pointer' onClick={() => handleSort('created_at')}>
              Created at
              <FontAwesomeIcon 
                icon={getSortIcon('created_at')} 
                className='ms-2'
              />
            </div>
            <div className='col-3'>Actions</div>
          </div>

          {isLoading ? (
            <div className="text-center py-4">
              <Loading />
            </div>
          ) : reports.length === 0 ? (
            <div className="d-flex flex-column align-items-center text-center my-4 gap-2">
              <FontAwesomeIcon icon={faExclamationCircle} className="fs-2 no-data" />
              <span>No reports available.<br/>Please create one.</span>
              {/* <button className='btn clear-btn' onClick={clearFilters}>Clear Filter</button> */}
            </div>
          ) : currentReports.length === 0 ? (
            <div className="d-flex flex-column align-items-center text-center my-4 gap-2">
              <FontAwesomeIcon icon={faExclamationCircle} className="fs-2 no-data" />
              <span>Report not found.<br/>Please try a different search.</span>
              <button className='btn btn-warning' onClick={clearFilters}>Clear Filter</button>
            </div>
          )
          : (
            currentReports.map(report => (
              <div key={report.report_id} className='m-0 p-0 d-flex align-items-center text-center row rounded data shadow-sm'>
                <div className='col-3'>{report.report_name}</div>
                <div className='col-3'>{report.report_description}</div>
                <div className='col-3'>{dayjs(report.created_at).format("YYYY-MM-DD HH:mm:ss")}</div>
                <div className='col-3'>
                  <button className="btn eye-btn" onClick={() => {
                    setViewId(report.report_id);
                    setIsViewModalOpen(true);
                  }}>
                    <FontAwesomeIcon icon={faEye}/>
                  </button>
                </div>
              </div>
            ))
          )}

          {/* Pagination */}
          {!isLoading && filteredReports.length > 0 && (
            <div className="pagination d-flex justify-content-between mt-4">
              <div className="pagination-info d-flex align-items-center">
                Page {currentPage} of {totalPages}
              </div>
              <div>
                <button 
                  className="btn pagination-btn" 
                  disabled={currentPage === 1}
                  onClick={() => paginate(currentPage - 1)}
                >
                  <FontAwesomeIcon icon={faArrowLeft} />
                </button>
                <button 
                  className="btn pagination-btn" 
                  disabled={currentPage === totalPages}
                  onClick={() => paginate(currentPage + 1)}
                >
                  <FontAwesomeIcon icon={faArrowRight} />
                </button>
              </div>
              
            </div>
          )}
        </div>
        </div>
        
      <ReportsModal 
        open={isReportModalOpen} 
        close={() => setIsReportModalOpen(false)}
        onSuccess={() => getReports()}
      />
      
      <ReportView 
        open={isViewModalOpen} 
        close={() => setIsViewModalOpen(false)} 
        id={viewId}
      />
    </div>
  );
};

export default Reports;