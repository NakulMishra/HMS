<%-- 
    Document   : discharge-patient
    Created on : 23 Sep, 2023, 9:38:14 AM
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
            function funct(x){
                //alert(x);
                var name1= document.form1.admit_id.value;
             
                window.location.replace("discharge-patient.jsp?pid="+name1);
                                   //    x.value=charges;
            }
        </script>
    </head>

    <body>
         <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/mfas?charaterEncoding=utf8", "root", "root18");
            String name1 ;
            name1 = request.getParameter("pid");
           Statement st1 = con1.createStatement();
           ResultSet rs1 = st1.executeQuery("SELECT * FROM admit WHERE admit_id='" + name1 + "'");
           String aid="";
           String a = "";
           String b = "";
           String c = "";
           String d = "";
           String e = "";
           String f = "";
           String g = "";
           String h = "";
           String pid="";

           while(rs1.next()){
               aid=rs1.getString("admit_id");
               a = rs1.getString("patient_id");
               b = rs1.getString("ward");
               c = rs1.getString("bed");
               d = rs1.getString("doctor_id");
               e = rs1.getString("date");
               f = rs1.getString("ward_charges");
               g = rs1.getString("f_name");
               h = rs1.getString("l_name");
               pid= rs1.getString("patient_id");
           }

        %>
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
                            <h4 class="page-title">Discharge Patient</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <form action="upload-discharge.jsp" method="post" name="form1" >
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Admit ID</label>
                                            <select class="select" name="admit_id"  onchange="funct(this.value)">
                                                <option><%=aid%></option>
                                                <%
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8", "root", "");
                                                    Statement st2 = con2.createStatement();
                                                    ResultSet rs2 = st2.executeQuery("SELECT admit_id from admit");

                                                    while (rs2.next()) {
                                                %>
                                                <option><%=rs2.getString("admit_id")%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Patient ID</label>
                                                <input class="form-control" type="text" name="patient_id" readonly="" value="<%=a%>">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Ward</label>
                                            <input class="form-control" type="text" name="ward" value="<%=b%>">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Bed</label>
                                            <input class="form-control" type="text" name="bed" value="<%=c%>">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Doctor ID</label>
                                        <input class="form-control" type="text" name="doctor_id" value="<%=d%>">
                                             
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Date</label>
                                            <input class="form-control datetimepicker" type="text" name="date" >
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Ward Charge (Per Day)</label>
                                            <input class="form-control" type="text" name="amount" readonly="" value="<%=f%>">
                                        </div>
                                    </div>
                                        <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Admit Date</label>
                                            <input class="form-control" type="text" name="a_date" readonly="" value="<%=e%>">
                                        </div>
                                    </div>
                                        <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Patient First Name</label>
                                            <input class="form-control" type="text" name="f_name" readonly="" value="<%=g%>">
                                        </div>
                                    </div>
                                        <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Patient Last Name</label>
                                            <input class="form-control" type="text" name="l_name" readonly="" value="<%=h%>">
                                        </div>
                                    </div>
                                    <div class="m-t-20 text-center">
                                        <button class="btn btn-primary submit-btn">Discharge Patient</button>
                                    </div>       
                                            <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                                    <div class="m-t-20 text-center">
                                        <button class="btn btn-primary submit-btn" type="button" onclick="window.location.href='generate-bill.jsp'">Generate Bill</button>
                                    </div>        
                            </form>
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