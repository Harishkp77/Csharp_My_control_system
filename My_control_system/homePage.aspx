<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="My_control_system.homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Himaliya</title>
    <link href="homePageStyleSheet.css" rel="stylesheet" />
          
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">
                <div>
                    <h1>Himalia Engineering College</h1>
                </div>

                <div class="titlebar">
                    <ul class="navbar">
                        <li><a href="homePage.aspx">HOME</a></li>
                        <li><a href="userManage.aspx">ADMIN</a></li>
                        <li><a href="loginuserstudent.aspx">STUDENTS</a></li>
                        <li><a href="loginuserstaff.aspx">STAFFS</a></li>
                        <li><a href="signupPage.aspx">SIGN UP</a></li>
                        
                               
                    </ul>
                </div>
            </div>
            <div class="body">
                <h1>Welcome to Himalia Engineering College</h1>

                <section id="mission">
                    <h2>Mission</h2>
                    <p>
                        Our mission is to foster a vibrant learning community that nurtures creativity, innovation,
                    and excellence in engineering education. We strive to empower our students to become
                    competent engineers, critical thinkers, and responsible global citizens who contribute
                    positively to society.
                    </p>
                </section>

                <section id="vision">
                    <h2>Vision</h2>
                    <p>
                        Our vision is to be a leading center of engineering education, recognized for our academic
                    excellence, industry collaborations, and commitment to producing well-rounded professionals.
                    We aim to shape the future of engineering through quality education, research, and
                    innovation.
                    </p>
                </section>

                <section id="programs">
                    <h2>Programs</h2>
                    <ul>
                        <li><b>Bachelor of Technology (B.Tech) Programs:</b>
                            <ul>
                                <li>Computer Science and Engineering</li>
                                <li>Electrical Engineering</li>
                                <li>Mechanical Engineering</li>
                                <li>Civil Engineering</li>
                                <li>Electronics and Communication Engineering</li>
                            </ul>
                        </li>
                        <li><b>Master of Technology (M.Tech) Programs: </b>
                            <ul>
                                <li>Computer Science and Engineering</li>
                                <li>Electrical Engineering</li>
                                <li>Mechanical Engineering</li>
                                <li>Civil Engineering</li>
                                <li>Electronics and Communication Engineering</li>
                            </ul>
                        </li>
                    </ul>
                </section>

                <section id="infrastructure">
                    <h2>Infrastructure</h2>
                    <p>
                        Our college boasts state-of-the-art infrastructure, including well-equipped laboratories,
                    modern classrooms, and a comprehensive library. We provide students with a conducive
                    learning environment that combines theoretical knowledge with hands-on practical training.
                    </p>
                </section>

                <section id="faculty">
                    <h2>Faculty</h2>
                    <p>
                        We have a team of highly qualified and experienced faculty members who are dedicated to
                    providing quality education and mentorship to our students. Our faculty members are experts
                    in their respective fields and are committed to fostering a student-centric learning
                    atmosphere.
                    </p>
                </section>

                <section id="industry-collaborations">
                    <h2>Industry Collaborations</h2>
                    <p>
                        We strongly believe in bridging the gap between academia and industry. Through strategic
                    collaborations with leading companies and organizations, we provide our students with
                    valuable industry exposure, internships, and placement opportunities.
                    </p>
                </section>
                <section id="research">
                    <h2>Research</h2>
                    <p>At Himalia Engineering College, we emphasize the importance of research in pushing the boundaries of knowledge and innovation. Our faculty members and students actively engage in research projects across various disciplines, contributing to advancements in their respective fields.</p>
                </section>

                <section id="admissions">
                    <h2>Admissions</h2>
                    <p>We offer admission opportunities for aspiring students who are passionate about engineering. Our admission process is based on merit, and we strive to attract talented individuals who demonstrate academic excellence, leadership potential, and a commitment to learning.</p>
                </section>

                <section id="career-services">
                    <h2>Career Services</h2>
                    <p>Preparing our students for successful careers is a priority at Himalia Engineering College. We provide comprehensive career services, including resume building, interview preparation, and networking opportunities. Our goal is to equip students with the skills and resources they need to excel in the professional world.</p>
                </section>

                <section id="student-support">
                    <h2>Student Support</h2>
                    <p>We believe in providing a supportive and inclusive environment for our students. We offer a range of student support services, including counseling, mentorship programs, and academic assistance. Our dedicated staff is always available to help students navigate their academic journey and overcome challenges.</p>
                </section>

                <section id="alumni-network">
                    <h2>Alumni Network</h2>
                    <p>Our alumni play a vital role in the success of our college. We have a strong and active alumni network that fosters connections between current students and graduates. Alumni events, mentoring programs, and job placement assistance are some of the ways in which we engage with our esteemed alumni.</p>
                </section>
                <a href="courseContent.aspx">courseContent.aspx</a>
                <section id="community-engagement">
                    <h2>Community Engagement</h2>
                    <p>At Himalia Engineering College, we believe in giving back to society. We actively engage in community service projects, collaborating with local organizations to address societal needs. Through these initiatives, our students learn the value of social responsibility and develop a sense of empathy and compassion.</p>
                </section>


                <section id="campus-life">
                    <h2>Campus Life</h2>
                    <p>
                        Beyond academics, we encourage our students to engage in extracurricular activities, clubs,
                    and societies to develop their overall personality and leadership skills. Our college hosts
                    various events, workshops, and cultural activities throughout the year, creating a vibrant
                    and inclusive campus life.
                    </p>
                </section>



                <div class="footer">
                    <div class="address">
                        <h3>Address</h3>
                        <p>123 College Street</p>
                        <p>City, State ZIP</p>
                        <p>&copy; 2023 Himalia Engineering College. All rights reserved.</p>

                    </div>
                    <div class="contact">
                        <h3>Reach Us</h3>
                        <p>Phone: 123-456-7890</p>
                        <p>Email: info@himaliaengineeringcollege.com</p>
                        <p>Website: www.himaliaengineeringcollege.com</p>

                    </div>

                </div>

            </div>


        </div>

    </form>
</body>
</html>
