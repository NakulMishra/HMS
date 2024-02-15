<%-- 
    Document   : admit-patient
    Created on : 22 Sep, 2023, 10:05:49 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">


    <!-- add-patient24:06-->
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
        <script>
            function funct(){
               
                var name1= document.form.ward.value;
                  charges = "";
                                        if (name1=="Private Room") {
                                            charges = "1800";
                                        } else if (name1=="I C U") {
                                            charges = "5000";
                                        } else if (name1=="N I C U") {
                                            charges = "3000";
                                        } else if (name1=="General Ward") {
                                            charges = "1000";
                                        }
                                       document.form.ward_charges.value=charges;
                                   //    x.value=charges;
            }
        </script>
    </head>

    <body>

        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="index.jsp" class="logo">
                        <img src="Hospital_LOGO.png" width="35" height="35" alt=""> <span>Preclinic</span>
                    </a>
                </div>
                <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
                <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
                <ul class="nav user-menu float-right">

                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/user.jpg" width="40" alt="Employee">
                                <span class="status online"></span></span>
                            <span>Employee</span>
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
                        <div class="col-lg-8 offset-lg-2">
                            <h4 class="page-title">Admit Patient</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <form action="upload-admit.jsp" method="post" name="form" >
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Admit ID </label>
                                            <input class="form-control" type="text" name="admit_id" readonly="">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Patient ID</label>
                                            <select class="select" value="" name="patient_id">
                                                <option>Select</option>
                                                <%
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8", "root", "root18");
                                                    Statement st = con.createStatement();
                                                    ResultSet rs = st.executeQuery("SELECT patient_id from patient");

                                                    while (rs.next()) {
                                                %>
                                                <option><%=rs.getString("patient_id")%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Ward</label>
                                            <select class="select" name="ward" onchange="funct(this.value)">
                                               
                                                <option></option>
                                                <option>Private Room</option>
                                                <option>I C U</option>
                                                <option>N I C U</option>
                                                <option>General Ward</option>
                                            </select>    
                                        </div>
                                    </div>
                                    <%
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8", "root", "root18");
                                        String name1 ;
                                        //name1 = request.getParameter("ward");
                                       // Statement st1 = con1.createStatement();
                                       // ResultSet rs1 = st1.executeQuery("SELECT * FROM admit WHERE ward='" + name1 + "'");
                                       
                                    %>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Ward Charges</label>

                                            <input class="form-control" type="text"  value="" id="ward_charges" name="ward_charges" readonly="">


                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Bed No.</label>
                                            <input class="form-control" type="text" name="bed">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Doctor ID</label>
                                            <select class="select" value="" name="doctor_id">
                                                <option>Select</option>
                                                <%
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8", "root", "root18");
                                                    Statement st2 = con2.createStatement();
                                                    ResultSet rs2 = st2.executeQuery("SELECT doctor_id from doctor");

                                                    while (rs2.next()) {
                                                %>
                                                <option><%=rs2.getString("doctor_id")%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Date</label>
                                            <input class="form-control datetimepicker" type="text" name="date">
                                        </div>
                                    </div>
                                    <div class="m-t-20 text-center">
                                        <button class="btn btn-primary submit-btn">Admit Patient</button>
                                    </div>
                            </form>
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


<!-- add-patient24:07-->
</html>

