import React from 'react'
import './DashboardTable.css'

const DashboardTable = ({header, isBookList}) => {
  return (
    <table className='dashboard-table'>
        <thead>
            <tr>
                {header.map(item=>(
                    <td>{item}</td>
                ))}
                {isBookList
                ?<td></td>
                :''}
            </tr>
        </thead>
        <tbody>
            <tr>
                {header.map(item=>(
                    <td>{item}</td>
                ))}
                {isBookList
                ?<td>...</td>
                :''}
            </tr>
        </tbody>
    </table>
  )
}

export default DashboardTable
