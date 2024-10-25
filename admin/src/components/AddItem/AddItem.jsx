import React, { useEffect, useState } from 'react';
import './AddItem.css';
import { Link, useParams } from 'react-router-dom';
import CatalogInfo from '../CatalogInfo/CatalogInfo';
import Cataloging from '../Cataloging/Cataloging';
import axios from 'axios';
import Loading from '../Loading/Loading';


const AddItem = () => {
    const [disabled,setDisabled] = useState(false)
    const [type, setType] = useState('');
    const [bookData, setBookData] = useState({
        mediaType: '1',
        authors: [],
        genre: [],
        isCirculation: false,
        publisher_id: 0,
        publisher: ''
    });
    const [error, setError] = useState({});
    const [publishers, setPublishers] = useState([]);
    // authorlist and adviserlist are for the <Select>. These are the options to be displayed
    const [authorList, setAuthorList] = useState([]);
    const [adviserList, setAdviserList] = useState([]);
    // for loading modal
    const [loading,setLoading] = useState(false)
    const [resourceType,setResourceType]=useState([])
    // Reset bookData when mediaType changes

    //this is for viewing resource purposes
    const {resourceId} = useParams();
    //console.log(resourceId)

    useEffect(() => {
        // if (bookData.mediaType==4) {
        //     setBookData({
        //         mediaType: bookData.mediaType, // keep the changed mediaType
        //         authors: [],
        //         advisers: [],
        //         isCirculation: false,
        //     });
        // } else if (bookData.mediaType== 1) {
        //     setBookData({
        //         mediaType: bookData.mediaType, // keep the changed mediaType
        //         authors: [],
        //         genre: [],
        //         isCirculation: false,
        //         publisher_id: 0,
        //         publisher: ''
        //     });
        // } else {
        //     setBookData({
        //         mediaType: bookData.mediaType, // keep the changed mediaType
        //         authors: [],
        //         isCirculation: false,
        //     });
        // }
    }, [bookData.mediaType]);

    // Fetch publishers when component mounts
    useEffect(() => {
        getPublishers();
        getAuthors();
        getType()
        getAdvisers()

        //when first rendered, check if may resourceId. Pag may resourceId means its for viewing/editing purposes
        if(resourceId>=0){
            setDisabled(true)
        }else{
            setDisabled(false)
        }
    }, []);

    // this gets executed every first render and everytime disabled usestate changes
    useEffect(()=>{
        if(disabled){
            viewResource()
        }
    },[disabled])

    //get specific resource for viewing purposes
    const viewResource = async ()=>{
        try{
            const response = await axios.get(`http://localhost:3001/resource/${resourceId}`).then(res=>res.data[0]);
            console.log(response)
            
        }catch(err){
            console.log(err.message)
        }
       
    }

    console.log(bookData)

    // Handle input changes
    const handleChange = (e) => {
        const { name, value } = e.target;
        setBookData({ ...bookData, [name]: value });
        formValidation();
    };

    // Add author
    const addAuthor = (author) => {
        if (author.length !== 1) {
            if(!bookData.authors.includes(author)){
                 setBookData((prevData) => ({
                    ...prevData,
                    authors: [...prevData.authors, author]
                }));
                return true
            }else{
                console.log('you inserted it already!')
            }
           
        } else {
            console.log('Please enter valid author data');
        }
    };

    // delete author 
    const deleteAuthor = (index)=>{
        //(_,i) is the index of each element in authors
        //pag true ung condition marereturn sa updatedAuthors
        setBookData(prevData => ({
            ...prevData,
            authors: prevData.authors.filter((_, i) => i !== index)
          }));
    }

    // delete adviser 
    const deleteAdviser = ()=>{
       
        setBookData(prevData => ({
            ...prevData,
            adviser: ''
        }));
    }

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
        console.log(adviser)
        setBookData((prevdata)=>({
            ...prevdata,
            adviser: adviser
        }))
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

        if (bookData.mediaType === '1') {
            if (!bookData.genre || bookData.genre.length === 0) {
                err.genre = 'Please select genre';
            }
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
        }else if(bookData.mediaType==='2'||bookData.mediaType==='3'){
            if (!bookData.authors || bookData.authors.length === 0) {
                err.authors = 'Please specify author/s';
            }
            if(!bookData.volume){
                err.volume = 'Please enter volume'
            }
            if(!bookData.issue){
                err.issue = 'Please enter issue'
            }
            if (!bookData.publishedDate) {
                err.publishedDate = 'Please enter publish date';
            }
        }else{
            if (!bookData.authors || bookData.authors.length === 0) {
                err.authors = 'Please specify author/s';
            }
            if(!bookData.adviser){
                err.adviser = 'Please specify adviser';

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
            setLoading(true)
            try {
                // Create a new FormData object
                const formData = new FormData();
    
                // If the file is a URL string, fetch it as a Blob
                if (typeof bookData.file === 'string') {
                    const response = await fetch(bookData.file, { mode: 'no-cors' });
                    const blob = await response.blob(); // Convert response to Blob
    
                    // Set the blob to bookData.file directly
                    //It spreads the existing properties of prevData and sets the file property to the newly fetched blob.
                    setBookData((prevData) => ({
                        ...prevData,
                        file: blob,
                    }));
                    
                    
    
                    // Use a temporary state to wait for the blob to be set
                    //create a new object that includes all properties of bookdata but replaces the file property to blob
                    const updatedBookData = {
                        ...bookData,
                        file: blob,
                    };
    
                    // Append all data to formData using updatedBookData instead of bookData
                    Object.entries(updatedBookData).forEach(([key, value]) => {
                        formData.append(key, value);
                    });
                } else {
                    // If it's not a URL, just append the current bookData
                    Object.entries(bookData).forEach(([key, value]) => {
                        formData.append(key, value);
                    });
                }
    
                // Send data to the endpoint
                await axios.post('http://localhost:3001/save', formData);
                console.log('Resource saved successfully');
                
                //close loading
                setLoading(false)
                // Reset bookData if saved successfully
                setBookData({
                    mediaType: 'book',
                    authors: [],
                    genre: [],
                    isCirculation: false,
                    publisher_id: 0,
                    publisher: ''
                });
    
                window.location.reload(); // Optionally reload the page
            } catch (err) {
                console.log('Error saving resource:', err.message);
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

    // Fetch publishers from the backend
    const getAuthors = async () => {
        const auth = [];
        try {
            const response = await axios.get('http://localhost:3001/authors');
            response.data.forEach(item => {
                auth.push({
                    value: `${item.author_fname} ${item.author_lname}`,
                    label: `${item.author_fname} ${item.author_lname}`
                });
            });
            setAuthorList(auth);
        } catch (err) {
            console.log(err.message);
        }
    };

    //Fetch advisers
    const getAdvisers = async () => {
        const adv = [];
        try {
            const response = await axios.get('http://localhost:3001/advisers');
            response.data.forEach(item => {
                adv.push({
                    value: `${item.adviser_fname} ${item.adviser_lname}`,
                    label: `${item.adviser_fname} ${item.adviser_lname}`
                });
            });
            setAdviserList(adv);
        } catch (err) {
            console.log(err.message);
        }
    };

    // fetch resourceType ( book, journal, newsletter, thesis)
    const getType = async()=>{
        try {
            const response = await axios.get('http://localhost:3001/type').then(res=>res.data);
            console.log(response)
            setResourceType(response)
        } catch (err) {
            console.log(err.message);
        }
    };
    

    // console.log(error);
    // console.log(bookData);
    // console.log(publishers);
    // console.log(typeof bookData.file)

    return (
        <div className='add-item-container'>
            <h1 className='m-0'>Cataloging</h1>

            <div className='add-item-path-button'>
                <Link to='/catalog'>
                    <button className='btn add-item-back-button'>
                        <i className="fa-solid fa-arrow-left"></i>
                        Back
                    </button>
                </Link>
                <div className="add-item-path">
                    <p>Cataloging / <span>Add new Item</span></p>
                </div>
            </div>

            <div className='item-information'>
                <CatalogInfo
                    disabled={disabled}
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
                    deleteAuthor={deleteAuthor}
                    authorList={authorList}
                    resourceType={resourceType}
                    adviserList={adviserList}
                    deleteAdviser={deleteAdviser}
                />
            </div>

            <div className="cataloging">
                <Cataloging
                    disabled={disabled}
                    handleChange={handleChange}
                    bookData={bookData}
                    handleToggle={handleToggle}
                    formValidation={formValidation}
                    error={error}
                />
            </div>

            {disabled?<div className='edit-btn-cont'><button className="btn edit-item">
                    Edit
                </button></div>:<div className="cancel-save">
                <button className="btn add-item-cancel">
                    Cancel
                </button>
                <button className="btn add-item-save" onClick={handleSaveResource}>
                    <i className="fa-regular fa-floppy-disk"></i>
                    <span>Save</span>
                </button>
            </div>}
            
            <Loading loading={loading}/>
        </div>
    );
};

export default AddItem;
