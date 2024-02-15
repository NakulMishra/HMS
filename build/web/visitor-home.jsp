<%-- 
    Document   : about-us
    Created on : 15 Sep, 2023, 1:08:27 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">



    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <title>SPAN Hospitals and Research Center</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/css/logo-center.css">
        <!--[if lt IE 9]>
                    <script src="assets/js/html5shiv.min.js"></script>
                    <script src="assets/js/respond.min.js"></script>
            <![endif]-->
    </head>

    <body>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="index.jsp" class="logo">
                        <img src="Hospital_LOGO.png" width="35" height="35" alt=""> <span>SPAN Hospitals</span>
                    </a>
                </div>
                <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
                <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>

                <div class="dropdown mobile-user-menu float-right">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu dropdown-menu-right">

                        <a class="dropdown-item" href="adminlogin.jsp">Login</a>
                    </div>
                </div>
            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="menu-title">Main</li>
                            <li class="active">
                                <a href="index.jsp"><i class="fa fa-dashboard"></i> <span>Home</span></a>
                            </li>
                            <li>
                                <a href="doctorlogin.jsp"><i class="fa fa-user-md"></i> <span>Doctors</span></a>
                            </li>
                            <li>
                                <a href="patientlogin.jsp"><i class="fa fa-wheelchair"></i> <span>Patients</span></a>
                            </li>

                            <li>
                                <a href="employeelogin.jsp"><i class="fa fa-user"></i> <span> Employees </span> </a>
                            </li>
                            

                        </ul>
                    </div>
                </div>
            </div>
            <div class="page-wrapper">


                <div class="center">
                    <img src="Hospital_LOGO.png" >
                </div>


                <div>
                    <b>Welcome to [Hospital Name],</b> where compassionate care meets cutting-edge medicine. We are more than just a hospital; we are your dedicated healthcare partner, committed to your well-being and serving our community with excellence.
                    <br>
                    
                    
                    <b>Our Mission :- </b><br>

                    At [Hospital Name], our mission is clear: to provide the highest quality healthcare services, tailored to meet the unique needs of each patient. We believe that everyone deserves access to exceptional medical care, and we are here to make that a reality.
                    <br>
                    Exceptional Care, Every Time
                    <br>
                    Our team of highly skilled and compassionate healthcare professionals is at the heart of what we do. With years of experience, state-of-the-art facilities, and a patient-centered approach, we deliver exceptional care, every time. Whether you're coming to us for a routine check-up or facing a complex medical condition, you can trust us to provide the best care possible.
                    <br>
                    Patient-Centered Approach
                    <br>
                    We understand that healthcare is personal, and each patient is unique. That's why we take a patient-centered approach to care. We listen to your concerns, involve you in your treatment decisions, and strive to make your healthcare journey as comfortable and stress-free as possible.
                    <br>
                    Advanced Technology
                    <br>
                    In today's rapidly evolving healthcare landscape, staying at the forefront of medical technology is essential. We invest in the latest advancements in healthcare to ensure that you receive the most innovative and effective treatments available.

                    Community Engagement

                    We believe in giving back to the community we serve. [Hospital Name] is actively engaged in community outreach, health education, and wellness initiatives to promote a healthier, happier, and more informed community.

                    Our Commitment to Excellence

                    At [Hospital Name], excellence is not just a goal; it's our standard. We are proud of our accreditations, awards, and the trust our patients place in us. We continually strive for excellence in all aspects of healthcare delivery.

                    Join Us in Your Health Journey

                    Your health is your most valuable asset, and we are here to protect and nurture it. Whether you are seeking preventive care, treatment for an illness, or a second opinion, we invite you to join us on your health journey. Your well-being is our top priority, and we are honored to be your healthcare partner.

                    Thank you for choosing [Hospital Name] as your trusted source for healthcare. We look forward to serving you and your family with dedication, compassion, and expertise.

                    [Contact Information]

                    [Address]
                    [Phone Number]
                    [Email Address]
                    [Follow us on Social Media]
                </div>


            </div>



        </div>

        <div class="sidebar-overlay" data-reff=""></div>
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/Chart.bundle.js"></script>
        <script src="assets/js/chart.js"></script>
        <script src="assets/js/app.js"></script>

    </body>



</html>
