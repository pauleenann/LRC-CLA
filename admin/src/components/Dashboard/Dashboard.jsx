import React, { useEffect, useState } from 'react'
import axios from 'axios'
import './Dashboard.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faUsers ,faBook, faPlus} from '@fortawesome/free-solid-svg-icons';
import { VerticalBarChart } from '../VerticalBarChart';
import DashboardTable from '../DashboardTable/DashboardTable';
import DashboardTopChoices from '../DashboardTopChoices/DashboardTopChoices';



const Dashboard = () => {
  const [dateTime,setDateTime] = useState(new Date());
  const [uname, setUname] = useState(null)
  const overdueListHeader = ["Tup ID","Borrower's Name","Book ID","Title","Author","Overdue","Status"]
  const bookListHeader = ["Book ID","Title","Author","Copies Available"]
  const bookIssuedHeader = ["Tup ID","Title","Return Date"]


  useEffect(() => {
    getUsername()
  }, []);

  const getUsername = async()=>{
    try {
      // Request server to verify the JWT token
      const response = await axios.get('http://localhost:3001/check-session', { withCredentials: true });
      console.log(response.data)
      // If session is valid, set the role
      if (response.data.loggedIn) {
        setUname(response.data.username);
      } else {
        setUname(null); // If not logged in, clear the role
      }
    } catch (error) {
      console.error('Error verifying session:', error);
      setUname(null); // Set null if there's an error
    }
  }

  return (
    <div className='dashboard-container'>
       {/* dashboard heading */}
       <div className="dashboard-heading">
          {/* Goodmorning,admin */}
          <p className='dashboard-heading-text'>{dateTime.getHours()>=1 && dateTime.getHours()<12?'Good morning, ':dateTime.getHours()>=12&&dateTime.getHours()<17?'Good afternoon, ':'Good evening,'} <span>{uname}</span></p>
      </div>

      {/* columns */}
      <div className="dashboard">
        {/* column 1 */}
        <div className="dashboard-1 row gap-3">
          {/* total visitors */}
          <div className="dash-box col">
            <div className="total-box">
              <span className='total'>{}</span>
              <span className='label'>Total Visits</span>
            </div>
            <FontAwesomeIcon icon={faUsers} className='icon'/>
          </div>

          {/* borrowed resources */}
          <div className="dash-box col">
            <div className="total-box">
              <span className='total'>{}</span>
              <span className='label'>Borrowed Resources</span>
            </div>
            <FontAwesomeIcon icon={faBook} className='icon'/>
          </div>

          {/* returned resources */}
          <div className="dash-box col">
            <div className="total-box">
              <span className='total'>{}</span>
              <span className='label'>Returned Resources</span>
            </div>
            <FontAwesomeIcon icon={faBook} className='icon'/>
          </div>

          {/* overdue resources */}
          <div className="dash-box col">
            <div className="total-box">
              <span className='total'>{}</span>
              <span className='label'>Overdue Resources</span>
            </div>
            <FontAwesomeIcon icon={faBook} className='icon'/>
          </div>

          {/* bar chart */}
          <div className="bar-chart col-12">
            <h5>Visitors and Borrowers Statistics</h5>
            <VerticalBarChart/>
          </div>

          {/* overdue book list */}
          <div className="overdue-table py-4">
            <div className='d-flex align-items-center justify-content-start gap-5 py-3'>
              <h5 className='m-0'>Overdue Book List</h5>
              <button className='see-all btn'>See all</button>
            </div>
            <DashboardTable header={overdueListHeader} isBookList={false}/>
          </div>

          {/* book list */}
          <div className="book-table py-4">
            <div className='d-flex justify-content-between'>
              <div className='d-flex align-items-center justify-content-start gap-5 py-3'>
                <h5 className='m-0'>Book List</h5>
                <button className='see-all btn'>See all</button>
              </div>
              <button className="btn add-btn d-flex align-items-center justify-content-center gap-3">
                <FontAwesomeIcon icon={faPlus} className='icon'/>
                Add new
                </button>
            </div>
            
            <DashboardTable header={bookListHeader} isBookList={true}/>
          </div>
        </div>

        {/* column 2 */}
        <div className="dashboard-2">
          {/* top choices*/}
          <div className="top-choices d-flex flex-column gap-2">
            <h5>Top Choices</h5>
            <DashboardTopChoices number={"1"}/>
            <DashboardTopChoices number={"2"}/>
            <DashboardTopChoices number={"3"}/>
            <DashboardTopChoices number={"4"}/>
            <DashboardTopChoices number={"5"}/>
          </div>

          {/* books issued list */}
          <div className="issued-table px-3 py-5">
            <div className='d-flex align-items-center justify-content-between'>
              <div className='d-flex align-items-center justify-content-start gap-3 py-3'>
                <h5 className='m-0'>Books Issued</h5>
                <p className='books-issued-total m-0 d-flex align-items-center justify-content-center rounded-5'>1</p>
              </div>
              <button className='btn see-all'>See all</button>
            </div>
            
            <DashboardTable header={bookIssuedHeader} isBookList={false}/>
          </div>

        </div>

      </div>
    </div>
  )
}

export default Dashboard
