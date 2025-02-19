import React from 'react';
import './DashboardTable.css';

const DashboardTable = ({ header, data }) => {
  return (
    <table className='dashboard-table'>
      <thead>
        <tr>
          {header.map((item, index) => (
            <td key={index}>{item}</td>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.length !== 0 ? (
          data.map((item, rowIndex) => (
            <tr key={rowIndex}>
              {Object.values(item).map((value, colIndex) => (
                <td key={colIndex}>{value}</td>
              ))}
            </tr>
          ))
        ) : (
          <tr>
            <td colSpan={header.length}>No records found</td>
          </tr>
        )}
      </tbody>
    </table>
  );
};

export default DashboardTable;
