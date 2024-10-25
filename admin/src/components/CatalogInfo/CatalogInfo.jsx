import React, { useEffect, useState } from 'react'
import './CatalogInfo.css'
import BookInput from '../BookInput/BookInput'
// for the multi select input
import Select from 'react-select'
import JournalInput from '../JournalInput/JournalInput'
import ThesisInput from '../ThesisInput/ThesisInput'
import axios from 'axios'

const CatalogInfo = ({disabled,handleChange,bookData,addAuthor,setType,addGenre,addAdviser,setBookData,handleFileChange,error,formValidation,publishers,authorOptions,handleAddAuthor,selectedOptions,deleteAuthor,authorList,resourceType}) => {
    // disabled is passed by the viewItem component. This disables the input fields so users can only access the page in view mode 
    const [preview,setPreview] =useState() //for preview kapag pumili ng photo or may naretrieve na photo

    useEffect(()=>{
        getGenre()
    },[])
    // sample data for multi select options
    // should be retrieved sa database
    const [options,setOptions] = useState([])

    //for displaying preview photo
    useEffect(()=>{
        if(!bookData.file){
          setPreview(undefined)
          return
        }
    
        let objectUrl;
    
        if (typeof bookData.file === 'string') {
          // If data.file is a URL (string), set it directly as the preview
          setPreview(bookData.file);
        } else {
            // If data.file is a File object, create an Object URL for it
            objectUrl = URL.createObjectURL(bookData.file);
            setPreview(objectUrl);
        }
    
         // Cleanup function to revoke the Object URL
         return () => {
          if (objectUrl) {
              URL.revokeObjectURL(objectUrl);
          }
          };
      },[bookData.file])

    //   get genre
      const getGenre = async()=>{
        const genres = []
        
        try{
            const response = await axios.get('http://localhost:3001/genre').then(res=>res.data)
            response.map((item)=>{
                const genre = {
                    value: item.genre_id,
                    label: item.genre_name
                }
               genres.push(genre)
            })

            setOptions(genres)
        }catch(err){
            console.log(err.message)
        }
    }
  return (
    <div className='cat-info'>
        <div className="row">
            {/* header */}
            <div className="col-12 cat-info-header">Information</div>

            <div className="row catalog-inputs">
                {/* first column - media-genre*/}
                <div className={bookData.mediaType!=='4'?'col-9':'col-12'}>
                    <div className="row">
                        {/* media type */}
                        <div className="col-4 info-input-box">
                            <label htmlFor="">Media Type *</label>
                            <select name="mediaType" id="" className='form-select' disabled={disabled?true:false} onChange={handleChange}>
                                {resourceType.length>0?resourceType.map(item=>(
                                    <option value={item.type_id}>{item.type_name}</option>
                                )):''}

                            </select>
                           
                        </div>
                        {/* quantity */}
                        <div className="col-4 info-input-box">
                            <label htmlFor="">Quantity *</label>
                            <input type="number" placeholder='Enter Quantity' min='0' disabled={disabled?true:false} name='quantity' onChange={handleChange} value={bookData.quantity?bookData.quantity:''} onBlur={formValidation}/>
                            <p className='resource-error'>{error.quantity}</p>
                        </div>
                        {/* status */}
                        <div className="col-4 info-input-box">
                            <label htmlFor="">Status *</label>
                            <select name="status" id="" className='form-select' disabled={disabled?true:false} onChange={handleChange} onBlur={formValidation}>
                                <option selected disabled>Select item status</option>
                                <option value="available">Available</option>
                                <option value="lost">Lost</option>
                                <option value="damaged">Damaged</option>
                            </select>
                            <p className='resource-error'>{error.status}</p>
                        </div>
                        {/* title */}
                        <div className="col-12 info-input-box my-3">
                            <label htmlFor="">Title</label>
                            <input type="text" placeholder='Enter Title' disabled={disabled?true:false} name='title' onChange={handleChange} value={bookData.title?bookData.title:''} onBlur={formValidation}/>
                            <p className='resource-error'>{error.title}</p>
                        </div>
                        {/* input field changes depending on type */}
                        <div className="col-12">
                            {bookData.mediaType==='2'||bookData.mediaType==='3'?<JournalInput disabled={disabled} handleChange={handleChange} bookData={bookData} addAuthor={addAuthor} setBookData={setBookData} formValidation={formValidation} error={error} publishers={publishers} authorOptions={authorOptions} handleAddAuthor={handleAddAuthor}
                            selectedOptions={selectedOptions} deleteAuthor={deleteAuthor} authorList={authorList}/>:bookData.mediaType==='4'?<ThesisInput disabled={disabled} handleChange={handleChange} bookData={bookData} addAuthor={addAuthor} authorOptions={authorOptions} setBookData={setBookData} handleAddAuthor={handleAddAuthor} selectedOptions={selectedOptions} deleteAuthor={deleteAuthor} authorList={authorList} addAdviser={addAdviser}/>:<BookInput disabled={disabled} handleChange={handleChange} bookData={bookData} addAuthor={addAuthor} setBookData={setBookData} formValidation={formValidation} error={error} publishers={publishers} authorOptions={authorOptions} handleAddAuthor={handleAddAuthor}
                            selectedOptions={selectedOptions} deleteAuthor={deleteAuthor} authorList={authorList}/>}
                        </div>
                        {/* genre */}
                        {bookData.mediaType==='1'?
                        <div className="col-12 info-input-box mb-3">
                            <label htmlFor="">Genre</label>
                            <Select
                                isMulti
                                name="genre"
                                options={options}
                                className="basic-multi-select"
                                classNamePrefix="select"
                                placeholder="Enter to add genre/s"
                                isDisabled={disabled?true:false}
                                onChange={addGenre}
                                onBlur={formValidation}
                            />
                            <p className='resource-error'>{error.genre}</p>
                        </div> 
                        :''}
                                         
                    </div>

                </div>

                {/* for cover */}
                {bookData.mediaType!=='4'?<div className="col-3">
                    {/* cover */}
                    <div className="col-12 info-input-box mb-3">
                        <label htmlFor="">Cover</label>
                        <input type="file" src="" alt="" className='cover-upload' id='cover'disabled={disabled?true:false} onChange={handleFileChange} onBlur={formValidation}/>
                        <div className="cover-upload-box">
                            {bookData.file?'':<label htmlFor="cover">Add cover</label>}
                            {bookData.file && ( // Display the selected image if it exists
                                <div>
                                    <img src={preview}
                                    // Create a URL for the selected image
                                    alt="Selected"
                                    style={{ width: '200px', height: 'auto', marginTop: '10px' }} // Adjust the size as needed
                                    />
                                </div>
                                )}
                        </div>
                       {typeof bookData.file!=='string'&&bookData.file?<label htmlFor="cover" className='edit-cover'>Edit cover</label>:""}
                    </div>
                    <p className='resource-error'>{error.file}</p>
                </div>:''}
                

                {/* description */}
                <div className="col-12">
                    {/* description */}
                    <div className="col-12 info-input-box mb-3">
                        <label htmlFor="">Description</label>
                        <textarea name="description" id="" disabled={disabled?true:false} onChange={handleChange} value={bookData.description?bookData.description:''} onBlur={formValidation}></textarea>
                        <p className='resource-error'>{error.description}</p>
                    </div>
                </div>

            </div>


        </div>
        
    </div>
  )
}

export default CatalogInfo
