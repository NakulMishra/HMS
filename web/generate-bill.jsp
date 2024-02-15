<%-- 
    Document   : generate-bill
    Created on : 6 Oct, 2023, 11:25:04 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">


    <!-- blank-page24:04-->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <title>SPAN Hospitals and Research Center</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
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
                            <span>Employee</span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="logout.jsp">Logout</a>
                        </div>
                    </li>
                </ul>
                <div class="dropdown mobile-user-menu float-right">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="logout.html">Logout</a>
                    </div>
                </div>
            </div>

            <div class="page-wrapper">
                <div class="content">

                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-striped custom-table">
                                <thead>
                                    <tr>
                                         <th>Patient ID</th>
                                        <th>Ward</th>
                                        <th>Bed</th>
                                        <th>Admit Date</th>
                                        <th>Discharge Date</th>
                                        <th>Total Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%

                                        Connection conn = null;
                                        Class.forName("com.mysql.jdbc.Driver");
                                        String a = "jdbc:mysql://localhost:3306/mfas?charaterEncoding=utf8";
                                        conn = DriverManager.getConnection(a, "root", "root18");

                                        //String pid = request.getParameter("pid");
                                        ResultSet rs = null;
                                        String sql = "SELECT * FROM discharge WHERE discharge_id =(SELECT MAX(discharge_id) from discharge)" ;

                                        PreparedStatement p = conn.prepareStatement(sql);

                                        rs = p.executeQuery(sql);
                                        int cnt = 1;
                                        if (rs.next()) {

                                    %>
                                    <tr>
                  
                                        <td><%=rs.getString("patient_id")%></td>
                                        <td><%=rs.getString("ward")%></td>
                                        <td><%=rs.getString("bed")%></td>
                                        <td><%=rs.getString("date")%></td>
                                        <td><%=rs.getString("a_date")%></td>
                                        <td><%=rs.getString("total")%></td>
                                    </tr>

                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                                <input type="button" onclick="window.print()" value="Print Bill"/>
                </div>
            </div>
        </div>


        <div class="sidebar-overlay" data-reff=""></div>
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/app.js"></script>
    </body>


    <!-- blank-page24:04-->
</html>
