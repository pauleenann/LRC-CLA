import React, { useEffect, useState } from 'react'
import ReactDom from 'react-dom'
import './CatalogImport.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faX } from '@fortawesome/free-solid-svg-icons';
import * as XLSX from 'xlsx'; // Import xlsx library
import axios from 'axios';
import { useSelector } from 'react-redux';

const CatalogImport = ({open, close}) => {
    const {username} = useSelector(state=>state.username)
    const [importData, setImportData] = useState()
    const [selectedType, setSelectedType] = useState('1');
    const [acceptedColumns, setAcceptedColumns] = useState([]);
    const [isLoading, setIsLoading] = useState(false);
    const [importSuccess, setImportSuccess] = useState(false);
    const [error, setError] = useState('')
    
    const bookColumns = [
        'isbn',
        'topic',
        'department',
        'publisher name',
        'publisher address',
        'publisher email',
        'publisher number',
        'publisher website',
        'title',
        'description',
        'quantity',
        'authors',
        'published date'
    ]

    const jnColumns = [
        'volume',
        'issue',
        'department',
        'topic',
        'title',
        'description',
        'quantity',
        'authors',
        'published date'
    ]

    const thesisColumns = [
        'department',
        'title',
        'description',
        'quantity',
        'adivisers',
        'published date'
    ]
    
    useEffect(()=>{
        switch(selectedType){
            case '1': 
                setAcceptedColumns(bookColumns);
                break;
            case '2': 
            case '3': 
                setAcceptedColumns(jnColumns);
                break;
            case '4': 
                setAcceptedColumns(thesisColumns);
                break;
            default:
                console.log('Type not supported.')
        }
    },[selectedType])

    useEffect(() => {
        setImportData([])
        setError('')
        setImportSuccess(false)
    }, [])

    // Handle file upload and parse Excel file
    const handleFileUpload = async (event) => {
        const file = event.target.files[0];
        if (!file) return;
        
        setError('');
        setImportData([]);
    
        const reader = new FileReader();
        reader.readAsBinaryString(file);
    
        reader.onload = async (e) => {
            let columnNames;
            let columnError = [];
            const data = e.target.result;
            const workbook = XLSX.read(data, { type: 'binary' });
            const sheetName = workbook.SheetNames[0];
            const sheet = workbook.Sheets[sheetName];
    
            const jsonData = XLSX.utils.sheet_to_json(sheet, { defval: "" });
            console.log("Parsed Excel Data:", jsonData);

            if (jsonData.length > 0) {
                columnNames = Object.keys(jsonData[0]).map(key => key.toLowerCase());
                console.log(columnNames);
                
                acceptedColumns.forEach(item => {
                    if (!columnNames.includes(item)) {
                        columnError.push(item);
                    }
                });
                
                setError(columnError.length > 0 ? `Excel file should contain the following column names:  ${columnError.join(', ')}` : '');
                
                if (columnError.length === 0) {
                    setImportData(jsonData);
                }
            } else {
                setError('File appears to be empty');
            }
        };
        
        reader.onerror = () => {
            setError('Error reading file');
        };
    };


    const handleImport = async () => {
        try {
            setIsLoading(true);
            // Send the data to the server
            await axios.post('http://localhost:3001/api/resources/import', {importData,selectedType,username});
            
            setImportSuccess(true);
            setTimeout(() => {
                setImportData([])
                close();
                setImportSuccess(false);
                window.location.reload()
            }, 2000);
        } catch (err) {
            console.error('Error importing patrons:', err);
            setError('Failed to import patron data. Please try again.');
        } finally {
            setIsLoading(false);
        }
    }

    if (!open) {
        return null;
    }

    return ReactDom.createPortal(
        <div className='import-modal-container z-3'>
            <div className="import-modal-overlay"></div>

            {/* modal box */}
            <div className="import-modal-box p-4">
                {/* header */}
                <div className='d-flex align-items-center justify-content-between'>
                    <h4 className='m-0'>Import Catalog Data</h4>
                    <FontAwesomeIcon icon={faX} className="cursor-pointer" onClick={close}/>
                </div>
                
                {/* body */}
                <div className='mt-4 d-flex flex-column gap-3'>
                    {importSuccess && (
                        <div className="alert alert-success">
                            Data imported successfully!
                        </div>
                    )}

                    {/* resource type */}
                    <div>
                        <label htmlFor="">Resource Type</label>
                        <select name="" id="" className='form-select' onChange={(e)=>setSelectedType(e.target.value)}>
                            <option value="1">Book</option>
                            <option value="2">Journal</option>
                            <option value="3">Newsletter</option>
                            <option value="4">Thesis</option>
                        </select>
                    </div>
                    
                    {/* file */}
                    <div className='d-flex flex-column'>
                        <label htmlFor="file" className=''>Excel File</label>
                        <input 
                            type="file" 
                            accept='.xlsx, .xls' 
                            name="file" 
                            id="file" 
                            onChange={handleFileUpload}
                            className="form-control"
                        />
                        {error && (
                            <p className='error fst-italic text-danger mt-2'>
                                <span className=' fw-semibold'> {error}</span>
                            </p>
                        )}
                        {importData.length > 0 && (
                            <p className="text-success mt-1">
                                File loaded: {importData.length} records found
                            </p>
                        )}
                    </div>
                    
                    {/* buttons */}
                    <div className='d-flex justify-content-end gap-2 mt-2'>
                        <button 
                            className="btn btn-outline-secondary"
                            onClick={close}
                            disabled={isLoading}
                        >
                            Cancel
                        </button>
                        <button 
                            className="btn btn-primary"
                            onClick={handleImport}
                            disabled={isLoading || importData.length === 0 }
                        >
                            {isLoading ? 'Importing...' : 'Import'}
                        </button>
                    </div>
                </div>
            </div>
        </div>,
        document.getElementById('portal')
    )
}

export default CatalogImport