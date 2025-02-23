import React, { useEffect, useState } from 'react'
import axios from 'axios'
import './Audit.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import {faFileExport} from '@fortawesome/free-solid-svg-icons'

const Audit = () => {
    const [audit, setAudit] = useState([]);
    const [loading, setLoading] = useState(false)


    const formatTimestamp = (timestamp) => {
        try {
          const date = new Date(timestamp);
          const month = String(date.getMonth() + 1).padStart(2, '0');
          const day = String(date.getDate()).padStart(2, '0');
          const year = date.getFullYear();
          const hours = String(date.getHours()).padStart(2, '0');
          const minutes = String(date.getMinutes()).padStart(2, '0');
          const seconds = String(date.getSeconds()).padStart(2, '0');
          return `${month}-${day}-${year} ${hours}:${minutes}:${seconds}`;
        } catch (error) {
          console.error('Error formatting timestamp:', timestamp, error);
          return 'Invalid timestamp';
        }
      };

      const getAudit = async () => {
        try {
          const response = await axios.get(`http://localhost:3001/api/audit`);
          const updatedAudit = response.data.map((item) => ({
            ...item,
            formatted_timestamp: formatTimestamp(item.action_timestamp),
          }));
          setAudit(updatedAudit);
        } catch (err) {
          console.error('Error fetching audit logs:', err.message);
        }
      };

    useEffect(() => {
        getAudit();
    }, []);

    useEffect(() => {
        console.log('Audit data updated:', audit);
    }, [audit]);


  return (
    <div className='audit-container'>
        <h1>User activity log</h1>

        {/* filter dropdown */}
        <div className="filter-dropdown">
            {/* filter by activity */}
            <select name="" id="" className='form-select'>
                <option value="" selected disabled>Filter by activity</option>
                <option value="">Catalog item</option>
                <option value="">Edit item</option>
                <option value="">Remove item</option>
                <option value="">Issue book</option>
                <option value="">Return book</option>
                <option value="">Add patron</option>
                <option value="">Edit patron</option>
                <option value="">Remove patron</option>
                <option value="">Generate report</option>
                <option value="">Login</option>
                <option value="">Logout</option>
            </select>
        </div>

        {/* filter by date and export */}
        <div className="filter-date-export">
            {/* filter date */}
            <div className="filter-date">
                <input type="date" />
                <span>to</span>
                <input type="date" name="" id="" />
                <button className="btn">Clear</button>
            </div>
            {/* export */}
            <button className="btn export-btn">
                <FontAwesomeIcon icon={faFileExport} />
                Export
            </button>
        </div>
        
        {/* table */}

    
        <div className='t-overflow'>
        <table>
            
            <thead>
                <tr>
                    <td class="col-1">User</td>
                    <td class="col-1">Action</td>
                    {/* <td class="col-1"> Affected Table</td> */}
                    {/* <td>Old Value</td> */}
                    <td class="col-4">New Value</td>
                    <td class="col-1">Timestamp</td>

                    
                </tr>
            </thead>
            
            <tbody>
                {audit.length > 0 ? (
                    audit.map((item, index) => (
                        <tr key={index}>
                            <td class="col-1">{item.user_id}</td>
                            <td class="col-1">{item.action_type}</td>
                            {/* <td class="col-1">{item.table_name}</td> */}
                            {/* <td>{item.old_value}</td> */}
                            <td class="col-4 text-start">{item.new_value.replace(/[{}"]/g, '').replace(/,/g, '\n')}</td>
                            <td class="col-1">{item.formatted_timestamp}</td>
                        </tr>
                    ))
                ) : !loading ? (
                    <tr>
                        <td colSpan="6">No records available</td>
                    </tr>
                ) : (
                    <tr>
                        <td colSpan="6" style={{ textAlign: 'center', padding: '20px' }}>
                            <div className="spinner-box">
                                <div className="spinner-grow text-danger" role="status">
                                    <span className="sr-only">Loading...</span>
                                </div>
                            </div>
                        </td>
                    </tr>
                )}
            </tbody>

        </table>
        </div>
    </div>
  )
}

export default Audit
