// this is a component for cataloging (active item etc)
import React from 'react'
import './Cataloging.css'

const Cataloging = () => {
  return (
    <div className='cataloging-box'>
        <div className="row">
            {/* header */}
            <div className="col-12 cataloging-info-header">Cataloging</div>

            <div className="row cataloging-inputs">
                {/* cataloging*/}
                <div className="col-12 ">
                    <div className="row">
                        {/* department */}
                        <div className="col-4 info-input-box">
                            <label htmlFor="">Department</label>
                            <select className="form-select">
                                <option>1</option>
                            
                            </select>
                        </div>
                        {/* course */}
                        <div className="col-5 info-input-box">
                            <label htmlFor="">Course</label>
                            <select className="form-select">
                                <option>1</option>
                                
                            </select>
                        </div>
                        {/* shelf no */}
                        <div className="col-3 info-input-box">
                            <label htmlFor="">Shelf No.</label>
                            <input type="number" placeholder='Enter shelf number'/>
                        </div>
                        {/* active item */}
                        <div className="col-12 mt-5">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" id="active-item"/>
                                <div className="switch-label">
                                    <label class="form-check-label" for="active-item">Active Item</label>
                                    <span>Item is available for checking out and OPAC listing</span>
                                </div>
                            </div>
                        </div>
                        {/* published*/}
                        <div className="col-12 mt-3">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" id="published"/>
                                <div className="switch-label">
                                    <label class="form-check-label" for="published">Published</label>
                                    <span>Enable OPAC listing, uncheck if you don't want to put this item on OPAC.</span>
                                </div>
                            </div>
                        </div>
                        {/* circulation*/}
                        <div className="col-12 mt-3">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" id="circulation"/>
                                <div className="switch-label">
                                    <label class="form-check-label" for="circulation">Circulation</label>
                                    <span>Enable circulation, uncheck if you want to disable circulation for this item.</span>
                                </div>
                            </div>
                        </div>
                    
                        
                        
                           
                       
                    </div>

                </div>                
            </div>
        </div>
    </div>
  )
}

export default Cataloging
