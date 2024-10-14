import React from 'react'
import './Resource.css'
import cover from '../../assets/OPAC/photos/sample-cover.jpeg'
// Import Swiper React components
import { Swiper, SwiperSlide } from 'swiper/react';

// Import Swiper styles
import 'swiper/css';
import 'swiper/css/pagination';
import 'swiper/css/navigation';

// import required modules
import { Pagination, Navigation } from 'swiper/modules';

import './Resource.css'


const Resource = () => {
  return (
    <div className='resource-container container'>
        {/* view selected resource */}

        <button className='back-to-results'><i class="fa-solid fa-arrow-left"></i>
        <span>Back to Results</span></button>  
    
        {/*resource cover and resource info  */}
        <section className='row resource-info-cover container'>
            {/* book info */}
            <div className="col-md-6 col-12  resource-info">
                {/* resource status */}
                <p className='resource-status'>Available</p>

                {/* resource image and author */}
                <div className='resource-title-author'>
                    <h2 className='resource-name'>Happiness at WORK: Maximizing your psychological capital for success</h2>
                    <p className="resource-author">by <span>Jessica Pryce-Jones</span></p>
                </div>

                {/* resource summary */}
                <div className="resource-summary">
                    <h3 className="resource-summary-text">Summary</h3>
                    <p className="resource-summary-content">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis recusandae, placeat, iste quibusdam provident explicabo a modi labore odio consequuntur quae. Aut at quia blanditiis odio fugit reprehenderit inventore similique expedita quo a temporibus sint, ab ipsa, tenetur eaque asperiores. Corporis veniam illo, provident a dicta at beatae cupiditate? Rem!
                    </p>
                </div>

                {/* resource subject */}
                <div className="resource-subject">
                    <h3 className="resource-subject-text">Subject</h3>
                    <ul>
                        <li>lorem</li>
                        <li>lorem</li>
                        <li>lorem</li>
                    </ul>
                </div>

                {/* resource isbn */}
                <div className="resource-isbn">
                <h3 className="resource-isbn-text">ISBN</h3>
                    <ul>
                        <li>lorem</li>
                        <li>lorem</li>
                        <li>lorem</li>
                    </ul>

                </div>
                

            </div>
            {/* book cover */}
            <div className="col-md-6 col-12  resource-cover-box">
                <img src={cover} alt="" className='resource-cover'/>
                
            </div>
        </section>

        {/* related books */}
        <section className="related-books container">
            <h3>Related Books</h3>
            <Swiper
                pagination={true} //set pagination to true
                navigation={true}
                modules={[Pagination, Navigation]}
                watchOverflow={true} //if no more slides, arrow will be disabled
                slidesPerView={4} // Display 4 books per slide
                spaceBetween={10} // Adjust space between the books
                className="mySwiper">
                <SwiperSlide>
                    <img src={cover} alt="" />
                </SwiperSlide>
                <SwiperSlide>
                    <img src={cover} alt="" />
                </SwiperSlide>
                <SwiperSlide>
                    <img src={cover} alt="" />
                </SwiperSlide>
                <SwiperSlide>
                    <img src={cover} alt="" />
                </SwiperSlide>
                <SwiperSlide>
                    <img src={cover} alt="" />
                </SwiperSlide>
            </Swiper>
        </section>
      
    </div>
  )
}

export default Resource
