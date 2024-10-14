import React from 'react'
import './Services.css'
import service from '../../assets/OPAC/photos/vision.jpg'

const Services = () => {
  return (
    <div className='services-container'>
        {/* cover image */}
        <div className="services-header-cover"></div>

        {/* services */}
        <section className="container-fluid services">
            <h1>Services</h1>
            <div className="row">
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Card title</h5>
                    <p className="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Card title</h5>
                    <p className="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Card title</h5>
                    <p className="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Card title</h5>
                    <p className="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Card title</h5>
                    <p className="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Card title</h5>
                    <p className="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
                
                
            </div>
        </section>
    </div>
  )
}

export default Services
