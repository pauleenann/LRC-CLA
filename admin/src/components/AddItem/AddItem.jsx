import React, { useEffect, useState } from 'react';
import './AddItem.css';
import { Link } from 'react-router-dom';
import CatalogInfo from '../CatalogInfo/CatalogInfo';
import Cataloging from '../Cataloging/Cataloging';
import axios from 'axios';

const AddItem = () => {
    const [type, setType] = useState('');
    const [bookData, setBookData] = useState({
        mediaType: 'book',
        authors: [],
        genre: [],
        isCirculation: false,
        publisher_id: 0,
        publisher: ''
    });
    const [error, setError] = useState({});
    const [publishers, setPublishers] = useState([]);

    // Reset bookData when mediaType changes
    useEffect(() => {
        if (bookData.mediaType === 'thesis') {
            setBookData({
                mediaType: bookData.mediaType, // keep the changed mediaType
                authors: [],
                advisers: [],
                isCirculation: false,
            });
        } else if (bookData.mediaType === 'book') {
            setBookData({
                mediaType: bookData.mediaType, // keep the changed mediaType
                authors: [],
                genre: [],
                isCirculation: false,
                publisher_id: 0,
                publisher: ''
            });
        } else {
            setBookData({
                mediaType: bookData.mediaType, // keep the changed mediaType
                authors: [],
                isCirculation: false,
            });
        }
    }, [bookData.mediaType]);

    // Fetch publishers when component mounts
    useEffect(() => {
        getPublishers();
    }, []);

    // Handle input changes
    const handleChange = (e) => {
        const { name, value } = e.target;
        setBookData({ ...bookData, [name]: value });
        formValidation();
    };

    // Add author
    const addAuthor = (author) => {
        if (author.length !== 1) {
            setBookData((prevData) => ({
                ...prevData,
                authors: [...prevData.authors, author]
            }));
        } else {
            console.log('Please enter valid author data');
        }
    };

    // Add publisher
    const addPublisher = (publisher) => {
        if (publisher.length !== 1) {
            setBookData((prevData) => ({
                ...prevData,
                publisher
            }));
        } else {
            console.log('Please enter valid publisher data');
        }
    };

    // Add adviser
    const addAdviser = (adviser) => {
        if (adviser.length !== 1) {
            setBookData((prevData) => ({
                ...prevData,
                advisers: [...prevData.advisers, adviser]
            }));
        } else {
            console.log('Please enter valid adviser data');
        }
    };

    // Handle chosen genre
    const addGenre = (selectedGenre) => {
        const genre = selectedGenre.map(item => item.value);
        setBookData((prevData) => ({
            ...prevData,
            genre
        }));
    };

    // Handle file input
    const handleFileChange = (e) => {
        setBookData((prevData) => ({
            ...prevData,
            file: e.target.files[0]
        }));
    };

    // Form validation
    const formValidation = () => {
        const err = {};

        if (!bookData.quantity || bookData.quantity === 0) {
            err.quantity = 'Please enter quantity';
        }
        if (!bookData.status) {
            err.status = 'Please select status';
        }
        if (!bookData.title || bookData.title.length === 0) {
            err.title = 'Please enter title';
        }
        if (!bookData.file) {
            err.file = 'Please select cover';
        }
        if (!bookData.description) {
            err.description = 'Please enter description';
        }
        if (!bookData.department) {
            err.department = 'Please select department';
        }
        if (!bookData.course) {
            err.course = 'Please select course';
        }
        if (!bookData.genre || bookData.genre.length === 0) {
            err.genre = 'Please select genre';
        }

        if (bookData.mediaType === 'book') {
            if (!bookData.authors || bookData.authors.length === 0) {
                err.authors = 'Please specify author/s';
            }
            if (!bookData.isbn) {
                err.isbn = 'Please enter ISBN';
            }
            if (bookData.publisher_id === 0 && bookData.publisher === '') {
                err.publisher = 'Please enter publisher';
            }
            if (!bookData.publishedDate) {
                err.publishedDate = 'Please enter publish date';
            }
        }

        setError(err);

        return Object.keys(err).length === 0;
    };

    // Handle resource save
    const handleSaveResource = async () => {
        if (formValidation() === true) {
            if(typeof bookData.file === 'string'){
                // Fetch the image from the URL
                const response = await fetch(bookData.file,{
                    mode:'no-cors'
                });
                const blob = await response.blob(); // Convert response to Blob

                setBookData((prevData)=>({
                    ...prevData,
                    file: blob
                }))
            }
            
            try {
                const formData = new FormData();
                Object.entries(bookData).forEach(([key, value]) => {
                    formData.append(key, value);
                });

                // Send data to the endpoint
                await axios.post('http://localhost:3001/save', formData);
                console.log('Resource saved successfully');

                // reset if saved successfully
                setBookData({
                    mediaType: 'book',
                    authors: [],
                    genre: [],
                    isCirculation: false,
                    publisher_id: 0,
                    publisher: ''
                })
                
                window.location.reload()
            } catch (err) {
                console.log(err.message);
            }
        } else {
            console.log("Please enter complete information");
        }
    };

    // Handle toggle buttons
    const handleToggle = (e) => {
        const { name, checked } = e.target;
        setBookData((prevData) => ({
            ...prevData,
            [name]: checked
        }));
    };

    // Fetch publishers from the backend
    const getPublishers = async () => {
        const pubs = [];
        try {
            const response = await axios.get('http://localhost:3001/publishers');
            response.data.forEach(item => {
                pubs.push({
                    value: item.pub_id,
                    label: item.pub_name
                });
            });
            setPublishers(pubs);
        } catch (err) {
            console.log(err.message);
        }
    };

    console.log(error);
    console.log(bookData);
    console.log(publishers);
    console.log(typeof bookData.file)

    return (
        <div className='add-item-container'>
            <h1 className='m-0'>Cataloging</h1>

            <div className='add-item-path-button'>
                <Link to='/catalog'>
                    <button className='add-item-back-button'>
                        <i className="fa-solid fa-arrow-left"></i>
                        <p>Back</p>
                    </button>
                </Link>
                <div className="add-item-path">
                    <p>Cataloging / <span>Add new Item</span></p>
                </div>
            </div>

            <div className='item-information'>
                <CatalogInfo
                    handleChange={handleChange}
                    bookData={bookData}
                    addAuthor={addAuthor}
                    setType={setType}
                    addGenre={addGenre}
                    addAdviser={addAdviser}
                    setBookData={setBookData}
                    handleFileChange={handleFileChange}
                    formValidation={formValidation}
                    error={error}
                    publishers={publishers}
                />
            </div>

            <div className="cataloging">
                <Cataloging
                    handleChange={handleChange}
                    bookData={bookData}
                    handleToggle={handleToggle}
                    formValidation={formValidation}
                    error={error}
                />
            </div>

            <div className="cancel-save">
                <button className="add-item-cancel">
                    Cancel
                </button>
                <button className="add-item-save" onClick={handleSaveResource}>
                    <i className="fa-regular fa-floppy-disk"></i>
                    <span>Save</span>
                </button>
            </div>
        </div>
    );
};

export default AddItem;
