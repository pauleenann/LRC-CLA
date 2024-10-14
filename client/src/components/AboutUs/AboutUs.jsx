import React from 'react'
import './AboutUs.css'
import staff from '../../assets/OPAC/photos/staff.jpg'


const AboutUs = () => {
  return (
    <div className='about-container'>
        {/* cover image */}
        <div className="about-header-cover"></div>

        {/* about us */}
        <section className='about-us'>
            <h1 className='text-center mb-4'>About Us</h1>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quibusdam, illo qui, ipsa velit perferendis, nobis ducimus eos voluptas tempora eius consectetur illum dignissimos ex repellendus quos ipsam! Suscipit atque amet quibusdam saepe veniam quis unde, blanditiis iusto temporibus inventore sunt iste eligendi fuga perspiciatis, laudantium dolor fugiat iure ut cumque! Rem corporis dolorem sapiente. Explicabo, dignissimos neque iste, consequatur assumenda ab dolor eum nam accusamus nemo saepe? Dicta exercitationem ipsum quas? Officiis dicta nulla nostrum, nemo dolor laboriosam sapiente, ducimus minus id, voluptatum harum. Numquam iure aliquid, exercitationem nam aut illo, nostrum distinctio inventore magni laboriosam tenetur saepe culpa unde.</p>
        </section>

        {/* mission vision */}
        <section className='mission-vision-box'>
            <div className='vision-cover'></div>
            <div className="vision-content">
                <h2 className="vision-title">Vision</h2>
                <p className='vision-text'>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Similique, obcaecati mollitia? Aliquid corrupti, voluptas repudiandae aut itaque neque impedit, doloribus asperiores temporibus distinctio enim obcaecati adipisci autem odio dolores necessitatibus consequuntur vitae sit perspiciatis optio tempore! Assumenda, possimus non nisi a odit magni maiores at, amet aperiam voluptate quis obcaecati.</p>
            </div>
            <div className="mission-content">
                <h2 className="mission-title">Mission</h2>
                <p className='mission-text'>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Similique, obcaecati mollitia? Aliquid corrupti, voluptas repudiandae aut itaque neque impedit, doloribus asperiores temporibus distinctio enim obcaecati adipisci autem odio dolores necessitatibus consequuntur vitae sit perspiciatis optio tempore! Assumenda, possimus non nisi a odit magni maiores at, amet aperiam voluptate quis obcaecati.</p>
            </div>
            <div className='mission-cover'></div>
        </section>

        
        {/* Board of Directors and Management */}
        <section className="staff">
            <div>
                <h3 className='staff-header'>Board of Directors and Management</h3>
                <p className='staff-description'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, voluptatem!</p>
            </div>
            
            <div className="row staff-members m-0">
                {/* head */}
                <div className="col-md-12 staff-box">
                    {/* staff ico */}
                    <img src={staff} className="staff-icon"/>
                    {/* staff-info */}
                    <div className="staff-info">
                        <p className='staff-name m-0'>Name</p>
                        <p className='satff-position m-0'>Head</p>
                    </div>
                </div>
                {/* staff */}
                <div className="col-md-4 col-12 staff-box">
                    {/* staff ico */}
                    <img src={staff} className="staff-icon"/>
                    {/* staff-info */}
                    <div className="staff-info">
                        <p className='staff-name m-0'>Name</p>
                        <p className='satff-position m-0'>position</p>
                    </div>
                </div>

                {/* staff */}
                <div className="col-md-4 col-12 staff-box">
                    {/* staff ico */}
                    <img src={staff} className="staff-icon"/>
                    {/* staff-info */}
                    <div className="staff-info">
                        <p className='staff-name m-0'>Name</p>
                        <p className='satff-position m-0'>position</p>
                    </div>
                </div>

                {/* staff */}
                <div className="col-md-4 col-12 staff-box">
                    {/* staff ico */}
                    <img src={staff} className="staff-icon"/>
                    {/* staff-info */}
                    <div className="staff-info">
                        <p className='staff-name m-0'>Name</p>
                        <p className='satff-position m-0'>position</p>
                    </div>
                </div>
                {/* staff */}
                <div className="col-md-4 col-12 staff-box">
                    {/* staff ico */}
                    <img src={staff} className="staff-icon"/>
                    {/* staff-info */}
                    <div className="staff-info">
                        <p className='staff-name m-0'>Name</p>
                        <p className='satff-position m-0'>position</p>
                    </div>
                </div>
                {/* staff */}
                <div className="col-md-4 col-12 staff-box">
                    {/* staff ico */}
                    <img src={staff} className="staff-icon"/>
                    {/* staff-info */}
                    <div className="staff-info">
                        <p className='staff-name m-0'>Name</p>
                        <p className='satff-position m-0'>position</p>
                    </div>
                </div>
                {/* staff */}
                <div className="col-md-4 col-12 staff-box">
                    {/* staff ico */}
                    <img src={staff} className="staff-icon"/>
                    {/* staff-info */}
                    <div className="staff-info">
                        <p className='staff-name m-0'>Name</p>
                        <p className='satff-position m-0'>position</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
  )
}

export default AboutUs
