import React, { useEffect, useState } from 'react';
import './AdminTopNavbar.css';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCircleUser, faSignOutAlt } from '@fortawesome/free-solid-svg-icons';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
import { useSelector, useDispatch } from 'react-redux';
import { checkIfOnline } from '../../features/isOnlineSlice';
import { setUsername } from '../../features/userSlice';

const AdminTopNavbar = () => {
    const [dateTime, setDateTime] = useState(new Date());
    const dispatch = useDispatch();
    const isOnline = useSelector((state) => state.isOnline.isOnline);
    const [uname, setUname] = useState(null);
    const navigate = useNavigate();

    useEffect(() => {
        // Update time every second
        const timerId = setInterval(() => {
            setDateTime(new Date());
        }, 1000);

        // Cleanup interval on component unmount
        return () => clearInterval(timerId);
    }, []);

    useEffect(() => {
        const getUsername = async () => {
            try {
                const response = await axios.get('http://localhost:3001/api/user/check-session', { withCredentials: true });
                console.log(response.data);
                if (response.data.loggedIn) {
                    setUname(response.data.username);
                    dispatch(setUsername(response.data.username))
                } else {
                    setUname(null);
                }
            } catch (error) {
                console.error('Error verifying session:', error);
                setUname(null);
            }
        };
        getUsername();
    }, []);

    const days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
    const today = new Date();
    const currentDay = days[today.getDay()];

    useEffect(() => {
        const checkOnlineStatus = async () => {
            try {
                await fetch("https://jsonplaceholder.typicode.com/todos/1", { cache: "no-store" });
                dispatch(checkIfOnline(true));
            } catch (error) {
                dispatch(checkIfOnline(false));
            }
        };

        dispatch(checkIfOnline(null));
        checkOnlineStatus();

        const handleOnline = () => dispatch(checkIfOnline(true));
        const handleOffline = () => dispatch(checkIfOnline(false));

        window.addEventListener('online', handleOnline);
        window.addEventListener('offline', handleOffline);

        const intervalId = setInterval(checkOnlineStatus, 5000);

        return () => {
            window.removeEventListener('online', handleOnline);
            window.removeEventListener('offline', handleOffline);
            clearInterval(intervalId);
        };
    }, [dispatch]);

    // Logout function remains the same
    const logout = async () => {
        try {
            await axios.post('http://localhost:3001/api/user/logout', { username: uname }, { withCredentials: true });
            localStorage.removeItem('role');
            localStorage.removeItem('username');
            navigate('/');
        } catch (err) {
            console.error('Logout error:', err);
        }
    };

    return (
        <div className="top-navbar bg-light">
            {/* Online/Offline Indicator */}
            <div className="border text-secondary p-2 rounded">
                {isOnline === null ? 'Loading...' : isOnline ? 'Online' : 'Offline'}
            </div>
            <div className="info">
                {/* Date and Time */}
                <div className="top-navbar-datetime">
                    <span>{dateTime.toLocaleTimeString()}</span>
                    <span className="separator">|</span>
                    <span>{currentDay}</span>
                    <span className="separator">|</span>
                    <span>{dateTime.toLocaleDateString()}</span>
                </div>

                {/* Admin Account Dropdown */}
                <div className="user-box">
                    <div className="dropdown">
                        <button 
                            className="btn cat-dropdown dropdown-toggle" 
                            type="button" 
                            data-bs-toggle="dropdown" 
                            aria-expanded="false"
                        >
                            <FontAwesomeIcon icon={faCircleUser} className="icon" />
                            <span className="user-greeting">
                                Hello, <span className="user-welcome-uname">{uname}</span>
                            </span>
                        </button>
                        <ul className="dropdown-menu">
                            <li>
                                <button className="dropdown-item" onClick={logout}>
                                    <FontAwesomeIcon icon={faSignOutAlt} className="dropdown-icon" />
                                    Logout
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default AdminTopNavbar;