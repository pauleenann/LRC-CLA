import React, { useEffect, useState, useRef } from 'react'
import { motion } from 'framer-motion'; // Import Framer Motion
import { Link } from 'react-router-dom';
import Navbar from '../../components/Navbar/Navbar';
import ResourceBook from '../../components/ResourceBook/ResourceBook';
import './SearchPage.css'
import { useDispatch, useSelector } from 'react-redux';
import axios from 'axios';
import Footer from '../../components/Footer/Footer'
import { setTypeArray } from '../../features/typeSlice';
import { setDeptArray } from '../../features/deptSlice';
import { setTopicArray } from '../../features/topicSlice';
import { fetchResources, setSearchQuery } from '../../features/resourceSlice';

const fadeIn = {    
    hidden: { opacity: 0, y: 30 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.2} },
};

const SearchPage = () => {
    const dispatch = useDispatch();
    // array from letter A-Z
    const alphabet = Array.from({ length: 26 }, (_, i) => String.fromCharCode(97 + i));
    // resource
    const {resource, loading, searchQuery} = useSelector(state=>state.resource);
    const {type} = useSelector(state=>state.type)
    const {dept} = useSelector(state=>state.dept)
    const {topic} = useSelector(state=>state.topic)
    const [resourceType, setResourceType] = useState([]);
    const [department, setDepartment] = useState([]);
    const [topics, setTopics] = useState([]);
    const [searchFilters, setSearchFilters] = useState({
        type:[],
        dept:[],
        topic:[]
    });
    
    // Pagination state
    const [currentPage, setCurrentPage] = useState(1);
    const [itemsPerPage, setItemsPerPage] = useState(9);
    
    // Sorting state
    const [sortOption, setSortOption] = useState('recent');
    
    // A-Z filter state
    const [activeLetterFilter, setActiveLetterFilter] = useState('');
    
    // Filtered and sorted resources
    const [displayedResources, setDisplayedResources] = useState([]);
    
    // Reference to all checkboxes
    const checkboxRefs = useRef({
        type: {},
        dept: {},
        topic: {}
    });
    
    useEffect(() => {
        window.scrollTo(0, 0);
        
        getType();
        getDept();
        getTopics();
        dispatch(fetchResources({ searchQuery: searchQuery, type: [], dept: [], topic: [] }));
    }, []);

    useEffect(() => {
        dispatch(setTypeArray(searchFilters.type));
        dispatch(setDeptArray(searchFilters.dept));
        dispatch(setTopicArray(searchFilters.topic));
    }, [searchFilters, dispatch]);
    
    // Apply filters and sorting to resources
    useEffect(() => {
        let filteredResults = [...resource];
        
        // Apply A-Z filter if active
        if (activeLetterFilter) {
            filteredResults = filteredResults.filter(item => 
                item.resource_title.toLowerCase().startsWith(activeLetterFilter.toLowerCase())
            );
        }
        
        // Apply sorting
        switch (sortOption) {
            case 'recent':
                // Assuming resource_id is chronological
                filteredResults.sort((a, b) => b.resource_published_date - a.resource_published_date);
                break;
            case 'title_asc':
                filteredResults.sort((a, b) => a.resource_title.localeCompare(b.resource_title));
                break;
            case 'title_desc':
                filteredResults.sort((a, b) => b.resource_title.localeCompare(a.resource_title));
                break;
            default:
                break;
        }
        
        setDisplayedResources(filteredResults);
        setCurrentPage(1); // Reset to first page when filters change
    }, [resource, activeLetterFilter, sortOption]);
    
    const getType = async() => {
        try {
            const response = await axios.get('http://localhost:3001/api/data/type').then(res=>res.data);
            setResourceType(response);
        } catch (err) {
            console.log(err.message);
        }
    };
    
    //get existing department online
    const getDept = async() => {
        try{
            const response = await axios.get('http://localhost:3001/api/data/departments').then(res=>res.data);
            setDepartment(response);
        }catch(err){
            console.log("Couldn't retrieve department online. An error occurred: ", err.message);
        }
    };
    
    //get existing topics online
    const getTopics = async() => {
        try{
            const response = await axios.get('http://localhost:3001/api/data/topic').then(res=>res.data);
            setTopics(response);
        }catch(err){
            console.log("Couldn't retrieve topics online. An error occurred: ", err.message);
        }
    };

    // Handle Checkbox Change
    const handleCheckbox = (e, itemId, category) => {
        const { checked } = e.target;
        setSearchFilters(prevFilters => ({
            ...prevFilters,
            [category]: checked 
                ? [...prevFilters[category], itemId] // Add item if checked
                : prevFilters[category].filter(id => id !== itemId) // Remove if unchecked
        }));
    };
    
    // Reset all filters
    const handleResetFilters = () => {
        // Reset all filter states
        setSearchFilters({
            type: [],
            dept: [],
            topic: []
        });
        
        // Reset Redux state
        dispatch(setTypeArray([]));
        dispatch(setDeptArray([]));
        dispatch(setTopicArray([]));
        dispatch(setSearchQuery(''));
        
        // Reset sorting and A-Z filter
        setSortOption('recent');
        setActiveLetterFilter('');
        
        // Uncheck all checkboxes
        Object.keys(checkboxRefs.current).forEach(category => {
            Object.values(checkboxRefs.current[category]).forEach(checkbox => {
                if (checkbox) {
                    checkbox.checked = false;
                }
            });
        });
        
        // Fetch all resources without filters
        dispatch(fetchResources({ searchQuery: '', type: [], dept: [], topic: [] }));
    };
    
    // Handle A-Z filter
    const handleLetterFilter = (letter) => {
        setActiveLetterFilter(activeLetterFilter === letter ? '' : letter);
    };
    
    // Handle sort change
    const handleSortChange = (e) => {
        setSortOption(e.target.value);
    };
    
    // Save checkbox reference
    const saveCheckboxRef = (element, itemId, category) => {
        if (!checkboxRefs.current[category]) {
            checkboxRefs.current[category] = {};
        }
        checkboxRefs.current[category][itemId] = element;
    };

    // Pagination logic
    const indexOfLastItem = currentPage * itemsPerPage;
    const indexOfFirstItem = indexOfLastItem - itemsPerPage;
    const currentItems = displayedResources.slice(indexOfFirstItem, indexOfLastItem);
    const totalPages = Math.ceil(displayedResources.length / itemsPerPage);
    
    // Change page
    const paginate = (pageNumber) => setCurrentPage(pageNumber);
    
    // Generate pagination buttons
    const renderPaginationButtons = () => {
        const buttons = [];
        
        // Previous button
        buttons.push(
            <button 
                key="prev" 
                className={`btn ${currentPage === 1 ? 'btn-secondary disabled' : 'btn-outline-dark'}`}
                onClick={() => currentPage > 1 && paginate(currentPage - 1)}
            >
                &laquo;
            </button>
        );
        
        // Page numbers
        for (let i = 1; i <= totalPages; i++) {
            buttons.push(
                <button
                    key={i}
                    className={`btn ${currentPage === i ? 'btn-dark' : 'btn-outline-dark'}`}
                    onClick={() => paginate(i)}
                >
                    {i}
                </button>
            );
        }
        
        // Next button
        buttons.push(
            <button 
                key="next" 
                className={`btn ${currentPage === totalPages ? 'btn-secondary disabled' : 'btn-outline-dark'}`}
                onClick={() => currentPage < totalPages && paginate(currentPage + 1)}
            >
                &raquo;
            </button>
        );
        
        return buttons;
    };

    return (
        <div className='search-container'>
            <motion.div className='top-welcome p-2 text-center' variants={fadeIn}>
                <p className="m-0">Welcome to College of Liberal Arts' Online Catalog!</p>
            </motion.div>

            <div className='border border-bottom-1'>
                <Navbar/> 
            </div>
            
            <div className="container my-5">
                {/* back */}
                <div className='mb-5'>
                    <Link className='text-decoration-none text-dark' to='/'><p>Back to Home</p></Link>
                </div>
                <div className="row">
                    <div className="col-3 d-flex flex-column gap-4 pe-5">
                        {/* resource type */}
                        <div className='d-flex flex-column'>
                            <h5 className='m-0'>Resource Type</h5>
                            {resourceType.map(item => (
                                <div className='d-flex gap-2' key={`type-${item.type_id}`}>
                                    <input 
                                        type="checkbox" 
                                        name="type" 
                                        ref={el => saveCheckboxRef(el, item.type_id, 'type')}
                                        onChange={(e) => handleCheckbox(e, item.type_id, 'type')}
                                    /> 
                                    <span className='text-capitalize filter'>{item.type_name}</span>
                                </div>
                            ))}
                        </div>

                        {/* department */}
                        <div className='d-flex flex-column'>
                            <h5 className='m-0'>Department</h5>
                            {department.map(item => (
                                <div className='d-flex gap-2' key={`dept-${item.dept_id}`}>
                                    <input 
                                        type="checkbox" 
                                        name="dept" 
                                        ref={el => saveCheckboxRef(el, item.dept_id, 'dept')}
                                        onChange={(e) => handleCheckbox(e, item.dept_id, 'dept')}
                                    /> 
                                    <span className='text-capitalize filter'>{item.dept_name}</span>
                                </div>
                            ))}
                        </div>

                        {/* topics */}
                        <div className='d-flex flex-column'>
                            <h5 className='m-0'>Topic</h5>
                            {topics.map(item => (
                                <div className='d-flex gap-2' key={`topic-${item.topic_id}`}>
                                    <input 
                                        type="checkbox" 
                                        name="topic" 
                                        ref={el => saveCheckboxRef(el, item.topic_id, 'topic')}
                                        onChange={(e) => handleCheckbox(e, item.topic_id, 'topic')}
                                    /> 
                                    <span className='text-capitalize filter'>{item.topic_name}</span>
                                </div>
                            ))}
                        </div>
                        
                        <button 
                            className="btn btn-outline-dark"
                            onClick={handleResetFilters}
                        >
                            Reset filter
                        </button>
                    </div>
                    <div className="col">
                        {/* search header */}
                        <div className='d-flex justify-content-between align-items-center'>
                            <div>
                                <h1 className='m-0 fw-semibold'>
                                    {searchQuery.length > 0 ? `Search results for: ${searchQuery}` : 'Find resources'}
                                </h1>
                                {searchQuery.length > 0 && (
                                    <p className="m-0">A total of {displayedResources.length} resource/s found for {searchQuery}</p>
                                )}
                            </div>
                            
                            <div className='d-flex align-items-center gap-2'>
                                <select 
                                    className='form-select' 
                                    value={sortOption} 
                                    onChange={handleSortChange}
                                >
                                    <option value="recent">Most Recent</option>
                                    <option value="title_asc">Title (A-Z)</option>
                                    <option value="title_desc">Title (Z-A)</option>
                                </select>
                            </div>
                        </div>
                        
                        {/* A-Z filter */}
                        <div className='d-flex w-100 mt-1 flex-wrap'>
                            {alphabet.map(letter => (
                                <button 
                                    className={`btn text-capitalize fw-semibold ${activeLetterFilter === letter ? 'btn-dark text-white' : ''}`}
                                    key={letter}
                                    onClick={() => handleLetterFilter(letter)}
                                >
                                    {letter}
                                </button>
                            ))}
                            {activeLetterFilter && (
                                <button 
                                    className="btn btn-outline-danger mt-2"
                                    onClick={() => setActiveLetterFilter('')}
                                >
                                    Clear Letter Filter
                                </button>
                            )}
                        </div>
                        
                        <div className='row mt-4'>
                            {currentItems.length > 0 ? (
                                currentItems.map(item => (
                                    <div className='col-4 mb-4' key={item.resource_id}>
                                        <Link to={`/view/${item.resource_id}`} className='text-decoration-none'>
                                            <motion.div whileHover={{ scale: 1.05 }}>
                                              <ResourceBook loading={loading} data={item}/>  
                                            </motion.div>
                                        </Link>               
                                    </div>
                                ))
                            ) : (
                                <div className='d-flex flex-column align-items-center my-5 text-center gap-2'>
                                    <i className="fa-solid fa-circle-exclamation fs-2 text-danger"></i>
                                    <p className="m-0">No resources found.<br/>Please try a new filter.</p>
                                    <button 
                                        className="btn btn-dark"
                                        onClick={handleResetFilters}
                                    >
                                        Clear Filter
                                    </button>
                                </div>
                            )}
                        </div>
                        
                        {/* Pagination */}
                        {displayedResources.length > 0 && (
                            <div className="d-flex justify-content-center mt-5">
                                <div className="btn-group">
                                    {renderPaginationButtons()}
                                </div>
                            </div>
                        )}
                        
                        {/* Items per page selector */}
                        {displayedResources.length > 0 && (
                            <div className="d-flex justify-content-center mt-3">
                                <div className="form-inline d-flex">
                                    <label className="me-2">Items per page:</label>
                                    <select 
                                        className="form-select form-select-sm" 
                                        value={itemsPerPage} 
                                        onChange={(e) => setItemsPerPage(Number(e.target.value))}
                                        style={{ width: '70px' }}
                                    >
                                        <option value="6">6</option>
                                        <option value="9">9</option>
                                        <option value="12">12</option>
                                        <option value="24">24</option>
                                    </select>
                                </div>
                            </div>
                        )}
                    </div>
                </div>
            </div>
            
            <Footer />
        </div>
    )
}

export default SearchPage;