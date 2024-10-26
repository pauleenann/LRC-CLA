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
            <h1>Departments</h1>
            <div className="row">
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Entrepreneurship</h5>
                    <p className="card-text">Learn about business planning, marketing, finance, and leadership to achieve your entrepreneurial goals.</p>
                    </div>
                </div>
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Languages</h5>
                    <p className="card-text">Enhance your global perspective and communication skills.</p>
                    </div>
                </div>
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Hotel Management</h5>
                    <p className="card-text">Learn about hotel operations, food and beverage management, event planning, and customer service to excel in the dynamic world of hospitality.</p>
                    </div>
                </div>
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Physical Education</h5>
                    <p className="card-text">Learn about sportsmanship, teamwork, and the importance of regular exercise.</p>
                    </div>
                </div>
                {/* service */}
                <div className="card col-md-6">
                    <img className="card-img-top" src={service} alt="Card image cap"/>
                    <div className="card-body">
                    <h5 className="card-title">Social Sciences</h5>
                    <p className="card-text">Explore the complexities of human society and behavior.</p>
                    </div>
                </div>
                
                
            </div>
        </section>
    </div>
  )
}

export default Services
