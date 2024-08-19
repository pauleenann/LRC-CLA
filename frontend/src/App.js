import React from 'react'
import {
  BrowserRouter,
  Routes,
  Route
} from "react-router-dom";
import AdminLogInPage from './pages/AdminLogInPage/AdminLogInPage';


const App = () => {
  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path='admin-log-in' element={<AdminLogInPage/>}/>
        </Routes>
      </BrowserRouter>
    </div>
  )
}

export default App
