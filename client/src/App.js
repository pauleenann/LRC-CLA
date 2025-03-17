import React from 'react'
import {
  BrowserRouter,
  Routes,
  Route
} from 'react-router-dom'
import HomePage from './pages/HomePage/HomePage'
import AboutUsPage from './pages/AboutUsPage/AboutUsPage'
import SearchPage from './pages/SearchPage/SearchPage'

const App = () => {
  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path='/' element={<HomePage/>}/>
          <Route path='/about' element={<AboutUsPage/>}/>
          <Route path='/search' element={<SearchPage/>}/>
        </Routes>
      </BrowserRouter>
      
      
    </div>
  )
}

export default App
