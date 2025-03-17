import React, { useEffect } from 'react'
import Navbar from '../../components/Navbar/Navbar'
import './AboutUsPage.css'
import { motion } from 'framer-motion'; // Import Framer Motion
import about from '../../assets/about.jpg'
import about1 from '../../assets/about1.jpg'
import about2 from '../../assets/OPAC/photos/pci3.jpg'
import lrc from '../../assets/OPAC/photos/cla-lrc-door.JPG'
import lrc1 from '../../assets/OPAC/photos/cla-lrc.JPG'
import Service from '../../components/Service/Service';
import reading from '../../assets/OPAC/photos/reading.svg'
import Footer from '../../components/Footer/Footer';

const fadeIn = {    
    hidden: { opacity: 0, y: 30 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.2} },
  };

const AboutUsPage = () => {
    useEffect(() => {
        window.scrollTo(0, 0);
      }, []);
      
    const FAQ = [
        {
            question: "What are the LRC’s operating hours?",
            answer: "The LRC is open from 8:00 AM to 5:00 PM, Monday to Friday. However, its availability may vary depending on certain circumstances."
        },
        {
            question: "How do I borrow a book?",
            answer: "To borrow a book, you must be a currently enrolled student or a faculty member of the university. You are required to present your university ID at the LRC to check out a book."
        },
        {
            question: "How many books can a student borrow?",
            answer: "Students can borrow only one book at a time."
        },
        {
            question: "Can we reserve books through this website?",
            answer: "No, the website is for viewing book listings and availability only. To reserve a book, you must visit the LRC in person."
        },
        {
            question: "Can we stay in the LRC for an extended period?",
            answer: "Yes, students and faculty members are welcome to stay in the LRC without any time limit. However, if they wish to extend their stay, it must be within the LRC’s operating hours and should not go beyond 5:00 PM."
        },
        {
            question: "What happens if a student fails to return a book on time?",
            answer: "Students who do not return books on time will be banned from using the LRC. Please ensure that borrowed books are returned by the due date to avoid restrictions."
        },
        {
            question: "Is there a designated study area in the LRC?",
            answer: "Yes, the LRC has designated study areas where students and faculty can read, research, and work on assignments."
        }
    ];
    
  return (
    <div className='about-container bg-body-tertiary'>
        {/* top welcome */}
        <motion.div className='top-welcome p-2 text-center' variants={fadeIn}>
            <p className="m-0">Welcome to College of Liberal Arts’ Online Catalog!</p>
        </motion.div>

        {/* navbar */}
        <div className='border border-bottom-1'>
           <Navbar/> 
        </div>

        {/* about us */}
        <div className='aboutus d-flex align-items-center justify-content-center'>
            <div className="container">
                <h1 className='fw-bold'>About Us</h1>
                <p className='m-0 fs-5'>The College of Liberal Arts Learning Resource Center (CLA LRC) is your dedicated hub for academic exploration and intellectual growth. Our mission is to provide a comprehensive range of resources and services that support your academic journey.</p>
            </div>
        </div>
        
        {/* gallery */}
        <div className="gallery d-flex gap-3 px-5">
            <img src={about2} alt="" />
            <img src={about1} alt="" />
            <img src={about} alt="" />
        </div>
        
        {/* mission */}
        <div className="container mission d-flex align-items-center justify-content-center">
            <div className="row">
                {/* img */}
                <div className="col-6 img-box">
                    <img src={lrc} alt="" className='w-100 h-100 rounded-3'/>
                </div>
                {/* content */}
                <div className="col-6 d-flex flex-column justify-content-center px-5">
                    <h2 className='fw-bold mission-title fs-1'>A Space for Learning and Collaboration</h2>
                    <p className="m-0 mission-subtitle fw-semibold mt-2">The CLA LRC offers a serene and conducive environment for focused study and collaborative work. Our facilities include study areas and specialized sections for each Liberal Arts discipline: Entrepreneurship, Languages, Hotel and Restaurant Management, Physical Education, Social Sciences.</p>
                </div>
            </div>
        </div>

        {/* vision */}
        <div className="container vision d-flex align-items-center justify-content-center">
            <div className="row">
                {/* content */}
                <div className="col-6 d-flex flex-column justify-content-center px-5">
                    <h2 className='fw-bold vision-title fs-1'>Comprehensive Resources at your Fingertips</h2>
                    <p className="m-0 vision-subtitle fw-semibold mt-2">Our extensive collection of books, newsletters, magazines, and theses resources provide you with the tools you need to succeed. Whether you're researching a complex topic, preparing for an exam, or working on a creative project, the CLA LRC has you covered.</p>
                </div>
                {/* img */}
                <div className="col-6 img-box">
                    <img src={lrc1} alt="" className='w-100 h-100 rounded-3'/>
                </div>
            </div>
        </div>

        {/* services */}
        <div className="services w-100 d-flex align-items-center">
            <div className="container h-50">
                <div className="row h-100 ">
                    <div className="col-6">
                        <h2 className='fw-bold text-tertiary fs-1'>We're Committed to Your Learning Journey</h2>
                    </div>
                    <div className="col d-flex flex-column gap-5">
                        <div className="row">
                            <div className="col-6">
                                <Service title={'Extensive Resource Collection'} subtitle={'Access a diverse collection of books, magazines, newsletter, and theses related to the liberal arts.'} icon={'fa-book'}/>
                            </div>
                            <div className="col-6">
                                <Service title={'Study and Collaboration Spaces'} subtitle={'Find quiet study areas and group study spaces to enhance your learning experience.'} icon={'fa-book-open-reader'}/>
                            </div>
                        </div>
                        <div className="row">
                            <div className="col-6">
                                <Service title={'Faculty Consultation'} subtitle={'Connect with CLA faculty for academic guidance, research assistance, and thesis support.'} icon={'fa-chalkboard-user'}/>
                            </div>
                            <div className="col-6">
                                <Service title={'OBE and Research Support'} subtitle={'Benefit from the expertise of our OBE Coordinator and Research and Extension staff.'} icon={'fa-handshake'}/>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        {/* prof */}
        <div className="container remark-box d-flex align-items-center ">
            <div className="row w-100">
                <div className="col-6">
                    <img src={reading} alt="" className='w-100'/>
                </div>
                <div className="col-6 d-flex flex-column justify-content-center">
                    <h2 className='prof m-0 fw-bold fs-1'>Prof. Jaime Jr. E. Mozo</h2>
                    <p className="m-0 position fw-semibold ">Coordinator of College of Liberal Arts’ Learning Resources Center</p>
                    <p className="m-0 remarks mt-3 fw-semibold">The vision is to create an environment where students, faculty, and staff can easily access valuable resources, benefit from exceptional services, and thrive within a culture of continuous learning and collaboration. By prioritizing accessibility, responsiveness, and innovation, the coordinator aims to contribute to the academic and personal growth of every individual who engages with the center, fostering a supportive community that encourages success and development.</p>
                </div>
            </div>
        </div>

        {/* FAQ Section */}
        <div className="faq d-flex flex-column align-items-center">
            <h2 className="mb-5 fw-bold fs-1">Frequently Asked Questions</h2>
            <div className="accordion accordion-flush" id="accordionFlushExample">
                {FAQ.map((item, index) => {
                    const collapseId = `flush-collapse-${index}`;
                    const headingId = `flush-heading-${index}`;
                    return (
                        <div className="accordion-item" key={index}>
                            <h2 className="accordion-header" id={headingId}>
                                <button 
                                    className="accordion-button collapsed fs-5 fw-semibold" 
                                    type="button" 
                                    data-bs-toggle="collapse" 
                                    data-bs-target={`#${collapseId}`} 
                                    aria-expanded="false" 
                                    aria-controls={collapseId}
                                >
                                    {item.question}
                                </button>
                            </h2>
                            <div 
                                id={collapseId} 
                                className="accordion-collapse collapse" 
                                aria-labelledby={headingId} 
                                data-bs-parent="#accordionFlushExample"
                            >
                                <div className="accordion-body">{item.answer}</div>
                            </div>
                        </div>
                    );
                })}
            </div>
        </div>


        {/* footer */}
        <Footer/>
    </div>
  )
}

export default AboutUsPage
