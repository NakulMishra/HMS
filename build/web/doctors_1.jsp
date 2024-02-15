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
                    <a href="index-2.html" class="logo">
                        <img src="assets/img/logo.png" width="35" height="35" alt=""> <span>Preclinic</span>
                    </a>
                </div>
                <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
                <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
                <ul class="nav user-menu float-right">
                    <li class="nav-item dropdown d-none d-sm-block">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"><i class="fa fa-bell-o"></i> <span class="badge badge-pill bg-danger float-right">3</span></a>
                        <div class="dropdown-menu notifications">
                            <div class="topnav-dropdown-header">
                                <span>Notifications</span>
                            </div>
                            <div class="drop-scroll">
                                <ul class="notification-list">
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">
                                                    <img alt="John Doe" src="assets/img/user.jpg" class="img-fluid">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">John Doe</span> added new task <span class="noti-title">Patient appointment booking</span></p>
                                                    <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">V</span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Tarah Shropshire</span> changed the task name <span class="noti-title">Appointment booking with payment gateway</span></p>
                                                    <p class="noti-time"><span class="notification-time">6 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">L</span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Misty Tison</span> added <span class="noti-title">Domenic Houston</span> and <span class="noti-title">Claire Mapes</span> to project <span class="noti-title">Doctor available module</span></p>
                                                    <p class="noti-time"><span class="notification-time">8 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">G</span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Rolland Webber</span> completed task <span class="noti-title">Patient and Doctor video conferencing</span></p>
                                                    <p class="noti-time"><span class="notification-time">12 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">V</span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Bernardo Galaviz</span> added new task <span class="noti-title">Private chat module</span></p>
                                                    <p class="noti-time"><span class="notification-time">2 days ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="topnav-dropdown-footer">
                                <a href="activities.html">View all Notifications</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown d-none d-sm-block">
                        <a href="javascript:void(0);" id="open_msg_box" class="hasnotifications nav-link"><i class="fa fa-comment-o"></i> <span class="badge badge-pill bg-danger float-right">8</span></a>
                    </li>
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/user.jpg" width="40" alt="Admin">
                                <span class="status online"></span></span>
                            <span>Admin</span>
                        </a>
                        <div class="dropdown-menu">

                            <a class="dropdown-item" href="login.html">Logout</a>
                        </div>
                    </li>
                </ul>
                <div class="dropdown mobile-user-menu float-right">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu dropdown-menu-right">

                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="menu-title">Main</li>
                            <li class="active">
                                <a href="employeehome.jsp"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a>
                            </li>
                            <li>
                                <a href="doctors_1.jsp"><i class="fa fa-user-md"></i> <span>Doctors</span></a>
                            </li>
                            <li>
                                <a href="patients.jsp"><i class="fa fa-wheelchair"></i> <span>Patients</span></a>
                            </li>

                            <li class="submenu">
                                <a href="#"><i class="fa fa-user"></i> <span> Appointments </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="add-appointment.jsp">Add Appointment</a></li>
                                    <li><a href="view-appointment.jsp">View Appointment</a></li>

                                </ul>
                            </li>









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


                    <div>
                        <table border>
                            <%

                                Connection conn = null;
                                Class.forName("com.mysql.jdbc.Driver");
                                String a = "jdbc:mysql://localhost:3306/mfas";
                                conn = DriverManager.getConnection(a, "root", "root18");


                                ResultSet rs = null;
                                String sql = "SELECT * FROM doctor";

                                PreparedStatement p = conn.prepareStatement(sql);

                                rs = p.executeQuery(sql);
                                int cnt = 1;
                                while (rs.next()) {
                                    if (cnt % 4 == 1) {
                            %>
                            <TR><td>
                                    <div class="card" style="width:20rem;">
                                        <img class="img-fluid" src='image.jsp?imgid=<%=rs.getString("doctor_id")%>'  width="150"  height="150"  class="card-img-top">

                                        <div class="card-body">
                                            Name  <h5 class="card-title"><%=rs.getString("f_name")%></h5>
                                            Phone  <p class="card-text"><%=rs.getString("phone")%></p>
                                            Address  <p class="card-text"><%=rs.getString("addr")%></p>

                                            <%
                                            } else {
                                            %>
                                            <td>
                                                <div class="card" style="width:20rem;">
                                                    <img class="img-fluid" src='image.jsp?imgid=<%=rs.getString("doctor_id")%>'  width="150"  height="150"  class="card-img-top">

                                                    <div class="card-body">
                                                        Name  <h5 class="card-title"><%=rs.getString("f_name")%></h5>
                                                        Phone  <p class="card-text"><%=rs.getString("phone")%></p>
                                                        Address  <p class="card-text"><%=rs.getString("addr")%></p>></td>
                                                        <%       }


                                                            }

                                                        %>
                                                        </table>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="see-all">
                                                                <a class="see-all-btn" href="javascript:void(0);">Load More</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="notification-box">
                                                    <div class="msg-sidebar notifications msg-noti">
                                                        <div class="topnav-dropdown-header">
                                                            <span>Messages</span>
                                                        </div>
                                                        <div class="drop-scroll msg-list-scroll" id="msg_list">
                                                            <ul class="list-box">
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">R</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author">Richard Miles </span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item new-message">
                                                                            <div class="list-left">
                                                                                <span class="avatar">J</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author">John Doe</span>
                                                                                <span class="message-time">1 Aug</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">T</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author"> Tarah Shropshire </span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">M</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author">Mike Litorus</span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">C</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author"> Catherine Manseau </span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">D</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author"> Domenic Houston </span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">B</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author"> Buster Wigton </span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">R</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author"> Rolland Webber </span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">C</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author"> Claire Mapes </span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">M</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author">Melita Faucher</span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">J</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author">Jeffery Lalor</span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">L</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author">Loren Gatlin</span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="chat.html">
                                                                        <div class="list-item">
                                                                            <div class="list-left">
                                                                                <span class="avatar">T</span>
                                                                            </div>
                                                                            <div class="list-body">
                                                                                <span class="message-author">Tarah Shropshire</span>
                                                                                <span class="message-time">12:28 AM</span>
                                                                                <div class="clearfix"></div>
                                                                                <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="topnav-dropdown-footer">
                                                            <a href="chat.html">See all messages</a>
                                                        </div>
                                                    </div>
                                                </div>
                                        </div>
                                        <div id="delete_doctor" class="modal fade delete-modal" role="dialog">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-body text-center">
                                                        <img src="assets/img/sent.png" alt="" width="50" height="46">
                                                        <h3>Are you sure want to delete this Doctor?</h3>
                                                        <div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                                                            <button type="submit" class="btn btn-danger">Delete</button>
                                                        </div>
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
                                    <script src="assets/js/select2.min.js"></script>
                                    <script src="assets/js/moment.min.js"></script>
                                    <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
                                    <script src="assets/js/app.js"></script>
                                    </body>


                                    <!-- doctors23:17-->
                                    </html>