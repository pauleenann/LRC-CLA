import React from 'react';
import { motion } from 'framer-motion'; // Import Framer Motion
import './HomePage.css';
import Navbar from '../../components/Navbar/Navbar';
import Hero from '../../components/Hero/Hero';

// Import Swiper React components
import { Swiper, SwiperSlide } from 'swiper/react';

// Import Swiper styles
import 'swiper/css';
import 'swiper/css/pagination';
import 'swiper/css/navigation'; // Import navigation styles

// Import required modules
import { Navigation, Pagination, Mousewheel, Keyboard } from 'swiper/modules';
import ResourceBook from '../../components/ResourceBook/ResourceBook';
import Footer from '../../components/Footer/Footer';

const fadeIn = {
  hidden: { opacity: 0, y: 30 },
  visible: { opacity: 1, y: 0, transition: { duration: 0.3 } },
};

const HomePage = () => {
  return (
    <motion.div 
      className='homepage-container'
      initial="hidden"
      animate="visible"
    >
      {/* top welcome */}
      <motion.div className='top-welcome p-2 text-center' variants={fadeIn}>
        <p className="m-0">Welcome to College of Liberal Arts’ Online Catalog!</p>
      </motion.div>

      {/* navbar */}
      <motion.div className='border border-1' variants={fadeIn}>
        <Navbar />
      </motion.div>

      {/* hero section with fade-in effect */}
      <motion.div variants={fadeIn}>
        <Hero />
      </motion.div>

      {/* Most Borrowed Books */}
      <motion.div className="container book-container" variants={fadeIn}>
        <div className='d-flex align-items-center justify-content-between mb-4'>
          <h4 className='fw-semibold fs-2 '>Most Borrowed Books</h4>
          <button className="btn see-all fw-semibold">See all</button>
        </div>
        <Swiper
          slidesPerView={4}
          spaceBetween={5}
          breakpoints={{
            320: { slidesPerView: 1, spaceBetween: 10 },
            480: { slidesPerView: 2, spaceBetween: 10 },
            768: { slidesPerView: 3, spaceBetween: 15 },
            1024: { slidesPerView: 3, spaceBetween: 20 },
            1200: { slidesPerView: 4, spaceBetween: 25 },
          }}
          navigation={true}
          mousewheel={true}
          keyboard={true}
          modules={[Navigation, Pagination, Mousewheel, Keyboard]}
          className="mySwiper"
        >
          <div className="most-borrowed-books">
            {[1, 2, 3, 4, 5, 6, 7, 8].map((item, index) => (
              <SwiperSlide key={index}>
                <motion.div whileHover={{ scale: 1.05 }}>
                  <ResourceBook />
                </motion.div>
              </SwiperSlide>
            ))}
          </div>
        </Swiper>
      </motion.div>

      {/* Featured Books */}
      <motion.div className="container book-container" variants={fadeIn}>
        <div className='d-flex align-items-center justify-content-between mb-4'>
          <h4 className='fw-semibold fs-2'>Featured Books</h4>
          <button className="btn see-all fw-semibold">See all</button>
        </div>
        <Swiper
          slidesPerView={4}
          spaceBetween={5}
          breakpoints={{
            320: { slidesPerView: 1, spaceBetween: 10 },
            480: { slidesPerView: 2, spaceBetween: 10 },
            768: { slidesPerView: 3, spaceBetween: 15 },
            1024: { slidesPerView: 3, spaceBetween: 20 },
            1200: { slidesPerView: 4, spaceBetween: 25 },
          }}
          navigation={true}
          mousewheel={true}
          keyboard={true}
          modules={[Navigation, Pagination, Mousewheel, Keyboard]}
          className="mySwiper"
        >
          <div className="most-borrowed-books">
            {[1, 2, 3, 4, 5, 6, 7, 8].map((item, index) => (
              <SwiperSlide key={index}>
                <motion.div whileHover={{ scale: 1.05 }}>
                  <ResourceBook />
                </motion.div>
              </SwiperSlide>
            ))}
          </div>
        </Swiper>
      </motion.div>

      {/* Theses and Dissertations */}
      <motion.div 
        className="banner d-flex text-center flex-column justify-content-center align-items-center gap-3"
        variants={fadeIn}
      >
        <h2 className='text-light fw-light fs-1'>
          The Learning Resources Center also houses<br/>Theses and Dissertations
        </h2>
        <p className="m-0 text-light fs-5 fw-light">
          Look for inspiration or ideas for your upcoming projects here
        </p>
        <motion.button 
          className="btn btn-outline-light text-light p-3"
          whileHover={{ scale: 1.1 }}
        >
          VIEW RESOURCES
        </motion.button>
      </motion.div>

      {/* Books under Hospitality */}
      <motion.div className="container book-container" variants={fadeIn}>
        <div className='d-flex align-items-center justify-content-between mb-4'>
          <h4 className='fw-semibold fs-2 '>Books Under Hospitality and Restaurant Management </h4>
          <button className="btn see-all fw-semibold">See all</button>
        </div>
        <Swiper
          slidesPerView={4}
          spaceBetween={5}
          breakpoints={{
            320: { slidesPerView: 1, spaceBetween: 10 },
            480: { slidesPerView: 2, spaceBetween: 10 },
            768: { slidesPerView: 3, spaceBetween: 15 },
            1024: { slidesPerView: 3, spaceBetween: 20 },
            1200: { slidesPerView: 4, spaceBetween: 25 },
          }}
          navigation={true}
          mousewheel={true}
          keyboard={true}
          modules={[Navigation, Pagination, Mousewheel, Keyboard]}
          className="mySwiper"
        >
          <div className="most-borrowed-books">
            {[1, 2, 3, 4, 5, 6, 7, 8].map((item, index) => (
              <SwiperSlide key={index}>
                <motion.div whileHover={{ scale: 1.05 }}>
                  <ResourceBook />
                </motion.div>
              </SwiperSlide>
            ))}
          </div>
        </Swiper>
      </motion.div>

      {/* footer */}
      <motion.div variants={fadeIn}>
        <Footer />
      </motion.div>

    </motion.div>
  );
};

export default HomePage;
