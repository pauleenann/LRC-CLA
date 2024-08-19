import React, { useEffect, useState } from 'react'
import './Dashboard.css'
import dropdown_black from '../../assets/Management System/dashboard/dropdown-black.svg'
import visitors from '../../assets/Management System/dashboard/total-visitors.svg'
import borrowed from '../../assets/Management System/dashboard/total-borrowed.svg'
import add from '../../assets/Management System/dashboard/add.svg'
import more from'../../assets/Management System/dashboard/more.svg'


const Dashboard = () => {
  const [dateTime,setDateTime] = useState(new Date());
  const [dropdown, setDropdown]= useState(false)

  useEffect(() => {
    //setInterval throws an id na pwede natin gamitin to stop the interval
    const intervalId = setInterval(()=>setDateTime(new Date()), 1000 )
    // iccall lang ng react ung cleanup kapag lumipat kana ng component
     return function cleanup() {
        //stops the interval
         clearInterval(intervalId)
    }
},[]);

  const toggleDropdown = ()=>{
    setDropdown(prev=>!prev)
  }

  return (
    <div className='dashboard-container'>

      {/* dashboard heading */}
      <div className="dashboard-heading">
        {/* Goodmorning,admin */}
        <p className='dashboard-heading-text'>{dateTime.getHours()>=1 && dateTime.getHours()<12?'Good morning, ':dateTime.getHours()>=12&&dateTime.getHours()<17?'Good afternoon, ':'Good evening,'} <span>admin</span></p>
        
        {/* filter button */}
        <div>
          <button className='dashboard-dropdown' onClick={toggleDropdown}>
            Today <img src={dropdown_black} alt="" className='dashboard-dropdown-icon'/>
          </button>
          <div className={`dashboard-dropdown-list ${dropdown?'show-dash-dropdown':''}`}>
            <p>List 1</p>
            <p>List 2</p>
          </div>
        </div>
        
      </div>

      {/* dashboard boxes */}
      <div className='dashboard-overview'>
        {/* total visitors */}
        <div className="dash-box">
          <p className='total-visitors-p'>Total Visitors</p>
          <div className='visitor-count-icon'>
            <p className='total-visitors-count'>10</p>
            <img src={visitors} alt="" className='total-visitors-icon'/>
          </div>
        </div>

        {/* borrowed books */}
        <div className="dash-box">
          <p className='borrowed-books-p'>Borrowed Books</p>
          <div className='borrowed-count-icon'>
            <p className='borrowed-books-count'>10</p>
            <img src={borrowed} alt="" className='borrowed-books-icon'/>
          </div>
        </div>
      </div>

      {/* borrowers and books list */}
      <div className="borrowers-books-list">
        {/* borrower list box */}
        <div className='borrowers-list'>
          <div className='borrowers-heading'>
            <p className='list-heading'>Borrowers List</p>
            <button className='list-add-button'>
              <img src={add} alt="" className='add-icon'/>
              Add new
            </button>
          </div>
          <table className='borrower-table'>
            <tr>
              <th>TUP ID</th>
              <th>Name</th>
              <th>Course</th>
              <th>Book Issued</th>
              <th></th>
            </tr>
            <tr>
              <td>TUPM-21-0220</td>
              <td>Pauleen Dingcong</td>
              <td>BSIT-NS</td>
              <td>2</td>
              <td><button className='more-button'><img src={more} alt="" /></button></td>
            </tr>
          </table>
          <div className='see-all-box'><button className='see-all-button'>See all</button></div>
        </div>


        {/* book list box */}
        <div className='books-list'>
          <div className='books-heading'>
            <p className='list-heading'>Books List</p>
            <button className='list-add-button'>
              <img src={add} alt="" className='add-icon'/>
              Add new
            </button>
          </div>
          <table className='book-table'>
            <tr>
              <th>Book ID</th>
              <th>Title</th>
              <th>Author</th>
              <th>Copies Available</th>
              <th></th>
            </tr>
            <tr>
              <td>#B-10021-30</td>
              <td>Happiness At Work</td>
              <td>Jessica Pryce-Jones</td>
              <td>2</td>
              <td><button className='more-button'><img src={more} alt="" /></button></td>
            </tr>
          </table>
          <div className='see-all-box'><button className='see-all-button'>See all</button></div>
        </div>
          

          
      </div>



    </div>
  )
}

export default Dashboard
