import React, { useEffect, useState } from 'react'
import './AdminTopNavbar.css'
import user from '../../assets/Management System/dashboard/user-profile.svg'
import dropdown_yellow from '../../assets/Management System/dashboard/dropdown-yellow.svg'

const AdminTopNavbar = () => {
    const [dateTime,setDateTime] = useState(new Date());
    const [userDropdown, setUserDropdown] = useState(false)
    const days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
    const today = new Date()
    const currentDay = days[today.getDay()]
    
    

    useEffect(() => {
        //setInterval throws an id na pwede natin gamitin to stop the interval
        const intervalId = setInterval(()=>setDateTime(new Date()), 1000 )

        

        // iccall lang ng react ung cleanup kapag lumipat kana ng component
         return function cleanup() {
            //stops the interval
             clearInterval(intervalId)
        }
    },[]);


    const toggleDropdown=()=>{
        setUserDropdown(!userDropdown)
    }

    
    

  return (
    <div className='top-navbar'>
        {/* date and time */}
        <div className="top-navbar-datetime">
            <p>{dateTime.toLocaleTimeString()}</p>
            <p>|</p>
            <p>{currentDay}</p>
            <p>|</p>
            <p>{dateTime.toLocaleDateString()}</p>
        </div>

        {/* admin account */}
        <div className='user-box'>
            <img src={user} alt="" />
            <p className='user-welcome'>Hello, <span className='user-welcome-uname'>@admin</span></p>
            <div className="user-dropdown">
                <button className='user-button' onClick={toggleDropdown}><img src={dropdown_yellow} alt="" /></button>
                <div className="user-dropdown-list">
                    <a href="" className={userDropdown?'show-user-list':''}>Log out</a>
                </div>

            </div>
            
        </div>
      
    </div>
  )
}

export default AdminTopNavbar
