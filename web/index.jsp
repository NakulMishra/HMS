<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <title>SPAN Hospitals and Research Center</title>
        <!--<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">-->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/css/footer.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/logo-center.css">
        <!--[if lt IE 9]>
                    <script src="assets/js/html5shiv.min.js"></script>
                    <script src="assets/js/respond.min.js"></script>
            <![endif]-->
        <script>
            window.history.backward();
        </script>
    </head>


    <body>
        <%
            if (session.getAttribute("user") != null) {
                response.sendRedirect("index.jsp");
            }
        %>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="index.jsp" class="logo">
                        <img src="Hospital_LOGO.png" width="35" height="35" alt=""> <span>SPAN Hospitals</span>
                    </a>
                </div>
                <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
                <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
                <ul class="nav user-menu float-right">


                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                            <span class="user-img">
                                <img class="rounded-circle" src="assets/img/user.jpg" width="24" alt="Admin">
                                <span class="status online"></span>
                            </span>
                            <span>Admin</span>
                        </a>
                        <div class="dropdown-menu">

                            <a class="dropdown-item" href="adminlogin.jsp">Login</a>
                        </div>
                    </li>
                </ul>
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
                                <a href="index.jsp"><i class="fa fa-home"></i> <span>Home</span></a>
                            </li>
                            <li>
                                <a href="doctorlogin.jsp"><i class="fa fa-user-md"></i> <span>Doctors</span></a>
                            </li>
                            <li>
                                <a href="patientlogin.jsp"><i class="fa fa-wheelchair"></i> <span>Patients</span></a>
                            </li>
                            <li>
                                <a href="employeelogin.jsp"><i class="fa fa-user-secret"></i> <span> Employees </span> </a>
                            </li>
                            <li>
                                <a href="visitor-home.jsp"><i class="fa fa-user"></i> <span> Visitor's Portal </span> </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="page-wrapper">


                <div class="center">
                    <img src="Hospital_LOGO.png" >
                </div>


                <footer class="footer">
                    <div class="container">
                        <div class="row">
                            <div class="footer-col">
                                <h4>Contact</h4>
                                <div class="social-links">
                                    <a href="mailto:lincedorado1988@gmail.com" target="_blank"><i class="fab fa-google"></i></a>
                                    <a href="https://instagram.com/nakulmishraa?igshid=OGQ5ZDc2ODk2ZA==" target="_blank"><i class="fab fa-instagram"></i></a>
                                    <a href="https://www.linkedin.com/in/nakul-mishra-795865228?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                                    <a href="https://github.com/NakulMishra" target="_blank"><i class="fab fa-github"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="statement" style="color: #ffffff">
                            Content available on this project are only for fair purposes. This a web-based Hospital Management System Project and is only for educational purposes.
                            Developed by Nakul Mishra.
                            <p></p>
                            E-Mail :- lincedorado1988@gmail.com
                            <p></p>
                            Copyright © 2023, All Right Reserved..
                        </div>
                    </div>
                </footer>

            </div>



        </div>
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