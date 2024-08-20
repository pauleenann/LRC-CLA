import React from 'react'
import {
  BrowserRouter,
  Routes,
  Route
} from "react-router-dom";
import AdminLogInPage from './pages/AdminLogInPage/AdminLogInPage';
import DashboardPage from './pages/DashboardPage/DashboardPage';
import Admin from './pages/Admin/Admin';
import LogbookPage from './pages/LogbookPage/LogbookPage';


const App = () => {
  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path='/admin-log-in' element={<AdminLogInPage/>}/>
          <Route path='/dashboard' element={<DashboardPage/>}/>
          <Route path='/logbook' element={<LogbookPage/>}/>
          <Route path='/admin' element={<Admin/>}/>
        </Routes>
      </BrowserRouter>
    </div>
  )
}

export default App
