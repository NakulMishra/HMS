<%@page   import="java.sql.*"  contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">


    <!-- doctors23:12-->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <title>Preclinic - Medical & Hospital - Bootstrap 4 Admin Template</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/select2.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
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
                        <img src="assets/img/logo.png" width="35" height="35" alt=""> <span>Preclinic</span>
                    </a>
                </div>
                <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
                <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
                <ul class="nav user-menu float-right">
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/user.jpg" width="40" alt="Admin">
                                <span class="status online"></span></span>
                            <span>Admin</span>
                        </a>
                        <div class="dropdown-menu">

                            <a class="dropdown-item" href="logout.jsp">Logout</a>
                        </div>
                    </li>
                </ul>
                <div class="dropdown mobile-user-menu float-right">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu dropdown-menu-right">

                        <a class="dropdown-item" href="logout.jsp">Logout</a>
                    </div>
                </div>
            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="menu-title">Main</li>
                            <li class="active">
                                <a href="adminhome.jsp"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a>
                            </li>
                            <li>
                                <a href="doctors.jsp"><i class="fa fa-user-md"></i> <span>Doctors</span></a>
                            </li>
                            <li>
                                <a href="patients.jsp"><i class="fa fa-wheelchair"></i> <span>Patients</span></a>
                            </li>

                            <li class="submenu">
                                <a href="#"><i class="fa fa-user"></i> <span> Employees </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="employees.html">Employees List</a></li>

                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-sm-4 col-3">
                            <h4 class="page-title">Doctors</h4>
                        </div>
                        <div class="col-sm-8 col-9 text-right m-b-20">
                            <a href="add-doctor_1.jsp" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Doctor</a>
                        </div>
                    </div>



                    <div class="row doctor-grid">
                        <%

                            Connection conn = null;
                            Class.forName("com.mysql.jdbc.Driver");
                            String a = "jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8";
                            conn = DriverManager.getConnection(a, "root", "root18");

                            ResultSet rs = null;
                            String sql = "SELECT * FROM doctor";

                            PreparedStatement p = conn.prepareStatement(sql);

                            rs = p.executeQuery(sql);
                            int cnt = 1;
                            while (rs.next()) {
                                if (cnt % 4 == 1) {
                        %>

                        <div class="col-md-4 col-sm-4  col-lg-3">
                            <div class="profile-widget">
                                <div class="doctor-img">
                                    <img class="img-fluid" alt="" src='image.jsp?imgid=<%=rs.getString("doctor_id")%>' style="border-radius: 15%;" width="150"  height="150"/>
                                </div>
                                <!--                                <div class="dropdown profile-action">
                                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                        <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                                                    </div>
                                                                </div>-->
                                <h4 class="doctor-name text-ellipsis"><%=rs.getString("f_name")%> <%=rs.getString("l_name")%></h4>
                                <div class="doc-prof"><%=rs.getString("short_bio")%></div>
                                <div class="doc-prof">Status: <%=rs.getString("status")%></div>
                                <div class="user-country">
                                    <i class="fa fa-map-marker"></i> <%=rs.getString("city")%>, <%=rs.getString("state")%>
                                </div>
                            </div>
                        </div>

                        <%
                        } else {
                        %>

                        <div class="col-md-4 col-sm-4  col-lg-3">
                            <div class="profile-widget">
                                <div class="doctor-img">
                                    <img class="img-fluid" alt="" src='image.jsp?imgid=<%=rs.getString("doctor_id")%>' style="border-radius: 15%;" width="150"  height="150"/>
                                </div>
                                <!--                                <div class="dropdown profile-action">
                                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                        <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                                                    </div>
                                                                </div>-->
                                <h4 class="doctor-name text-ellipsis"><%=rs.getString("f_name")%> <%=rs.getString("l_name")%></h4>
                                <div class="doc-prof"><%=rs.getString("short_bio")%></div>
                                <div class="doc-prof">Status: <%=rs.getString("status")%></div>
                                <div class="user-country">
                                    <i class="fa fa-map-marker"></i> <%=rs.getString("city")%>, <%=rs.getString("state")%>
                                </div>
                            </div>
                        </div>
                        <%       }

                                cnt++;
                            }

                        %>
                    </div>








                    <div class="sidebar-overlay" data-reff=""></div>
                    <script src="assets/js/jquery-3.2.1.min.js"></script>
                    <script src="assets/js/popper.min.js"></script>
                    <script src="assets/js/bootstrap.min.js"></script>
                    <script src="assets/js/jquery.slimscroll.js"></script>
                    <script src="assets/js/select2.min.js"></script>
                    <script src="assets/js/moment.min.js"></script>
                    <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
                    <script src="assets/js/app.js"></script>
                    </body>


                    <!-- doctors23:17-->
                    </html>