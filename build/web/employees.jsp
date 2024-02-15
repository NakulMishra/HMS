<%-- 
    Document   : employees
    Created on : 15 Sep, 2023, 10:51:50 PM
    Author     : hp
--%>

<%@page import="java.sql.*"  contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">


    <!-- patients23:17-->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <title>SPAN Hospitals and Research Center</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/select2.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/dataTables.bootstrap4.min.css">
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
                        <img src="Hospital_LOGO.png" width="35" height="35" alt=""> <span>SPAN Hospitals</span>
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
                                    <li><a href="employees.jsp">Employees List</a></li>

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
                            <h4 class="page-title">Employees</h4>
                        </div>
                        <div class="col-sm-8 col-9 text-right m-b-20">
                            <a href="add-employee.html" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Employee</a>
                        </div>
                        
                    <%

                        Class.forName("com.mysql.jdbc.Driver");
                        String a = "jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8";
                        Connection conn = DriverManager.getConnection(a, "root", "root18");

                        Statement p = null;
                        ResultSet rs = null;
                        String sql = null;
                        String rid = (String) session.getAttribute("user");
                        sql = "SELECT * FROM employee ";

                        p = conn.createStatement();
                        rs = p.executeQuery(sql);


                    %>        

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-striped custom-table">
                                    <thead>
                                        <tr>
                                            <th style="min-width:200px;">Name</th>
                                            <th>Employee ID</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th style="min-width: 110px;">Join Date</th>
                                            <th>Role</th>
                                            <th class="text-right">Action</th>
                                        </tr>
                                    </thead>

                                        <%
                                            int cnt = 1;
                                            while (rs.next()) {
                                        %>
                                    <tbody>
                                        <tr>
                                            <td><%=rs.getString("f_name")%> <%=rs.getString("l_name")%></td>
                                            <td><%=rs.getString("emp_id")%></td>
                                            <td><%=rs.getString("email")%></td>
                                            <td><%=rs.getString("phone")%></td>
                                            <td><%=rs.getString("join_date")%></td>
                                            <td>
                                                <span class="custom-badge status-green"><%=rs.getString("role")%></span>
                                            </td>
                                            <td class="text-right">
                                                <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="edit-employee.jsp?id=<%=rs.getString("emp_id") %>"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                        <a class="dropdown-item" href="delete-employee.jsp?id=<%=rs.getString("emp_id") %>" data-toggle="modal" data-target="#delete_employee"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <%
                                        }
                                    %>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="notification-box">
                    <div class="msg-sidebar notifications msg-noti">


                    </div>
                </div>
                
            </div>
            <div class="sidebar-overlay" data-reff=""></div>
            <script src="assets/js/jquery-3.2.1.min.js"></script>
            <script src="assets/js/popper.min.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/jquery.slimscroll.js"></script>
            <script src="assets/js/select2.min.js"></script>
            <script src="assets/js/jquery.dataTables.min.js"></script>
            <script src="assets/js/dataTables.bootstrap4.min.js"></script>
            <script src="assets/js/moment.min.js"></script>
            <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
            <script src="assets/js/app.js"></script>
    </body>


    <!-- patients23:19-->
</html>