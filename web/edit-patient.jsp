<%-- 
    Document   : edit-patient
    Created on : 19 Sep, 2023, 9:44:12 AM
    Author     : hp
--%>
<%@page import="java.sql.*"  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- edit-patient24:07-->
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
                            <span>Patient</span>
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
                            <li>
                                <a href="patientshome.jsp"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a>
                            </li>
                            <li>
                                <a href="doctors.html"><i class="fa fa-user-md"></i> <span>Doctors</span></a>
                            </li>
                            <li class="active">
                                <a href="patients.html"><i class="fa fa-wheelchair"></i> <span>Patients</span></a>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <h4 class="page-title">Edit Patient Profile</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <%
                                try {
                                    Connection conn = null;
                                   String empID =(String)session.getAttribute("user");
                                    Class.forName("com.mysql.jdbc.Driver");
                                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8", "root", "root18");
                                    Statement s = conn.createStatement();
                                    ResultSet rst = s.executeQuery("SELECT * from patient where username='" + empID + "'");

                                    while (rst.next()) {
                            %>
                            <form action="edit-patient.jsp" method="post">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Patient ID <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" value="<%=rst.getString("patient_id")%>" readonly="" name="patient_id" >
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>First Name <span class="text-danger">*</span></label>
                                            <input class="form-control" type="text" value="<%=rst.getString("f_name")%>" name="f_name">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <input class="form-control" type="text" value="<%=rst.getString("l_name")%>" name="l_name">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Username <span class="text-danger">*</span></label>
                                            <input class="form-control" type="text" value="<%=rst.getString("username")%>" name="username" readonly="">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Email <span class="text-danger">*</span></label>
                                            <input class="form-control" type="email" value="<%=rst.getString("email")%>" name="email">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Date of Birth</label>
                                            <div class="cal-icon">
                                                <input type="text" class="form-control datetimepicker" value="<%=rst.getString("dob")%>" name="dob">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group gender-select">
                                            <label class="gen-label">Gender:</label>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="radio" name="gender" class="form-check-input"  value="Male">Male
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="radio" name="gender" class="form-check-input"  value="Female">Female
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label>Address</label>
                                                    <input type="text" class="form-control" value="<%=rst.getString("addr")%>" name="addr">
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-3">
                                                <div class="form-group">
                                                    <label>Country</label>
                                                    <select class="form-control select" name="country" value="<%=rst.getString("country")%>">
                                                        <option selected>India</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-3">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <input type="text" class="form-control" value="<%=rst.getString("city")%>" name="city">
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-3">
                                                <div class="form-group">
                                                    <label>State/Province</label>
                                                        <select class="select" value="<%=rst.getString("state")%>" name="state">
                                                        <option>Madhya Pradesh</option>
                                                        <option>Uttar Pradesh</option>
                                                        <option>Maharashtra</option>
                                                        <option>Gujarat</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-3">
                                                <div class="form-group">
                                                    <label>Postal Code</label>
                                                    <input type="text" class="form-control" value="<%=rst.getString("postal_code")%>" name="postal_code">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Phone </label>
                                            <input class="form-control" type="text" value="<%=rst.getString("phone")%>" name="phone">
                                        </div>
                                    </div>
                                    
                                    
                                </div>
                                <div class="form-group">
                                    <label class="display-block">Status</label>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="status" id="product_active" value="Active" checked>
                                        <label class="form-check-label" for="product_active">
                                            Active
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="status" id="product_inactive" value="Inactive">
                                        <label class="form-check-label" for="product_inactive">
                                            Inactive
                                        </label>
                                    </div>
                                </div>
                                <input type="hidden" name="h" value="<%=empID%>">
                                <div class="m-t-20 text-center">
                                    <button type="submit" name="s1" class="btn btn-primary submit-btn">Save</button>
                                </div>
                            </form>
                            <%   }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }

                                if (request.getParameter("s1") != null) {
                                    try {
                                        Connection con = null;
                                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8", "root", "root18");


                                        PreparedStatement p1 = null;
                                        String sql = null;
                                        String f_name = request.getParameter("f_name");
                                        String l_name = request.getParameter("l_name");
                                        String email = request.getParameter("email");
                                        String phone = request.getParameter("dob");
                                        String gender = request.getParameter("gender");
                                        String addr = request.getParameter("addr");
                                        String country = request.getParameter("country");
                                        String city = request.getParameter("city");
                                        String state = request.getParameter("state");
                                        String postal_code = request.getParameter("postal_code");
                                        String dob = request.getParameter("phone");
                                        String status = request.getParameter("status");

                                       String h1 = request.getParameter("h");

                                        sql = "UPDATE patient set f_name=?, l_name=?, email=?, dob=?, gender=?, addr=?, country=?, city=?, state=?, postal_code=?, phone=?, status=? WHERE username=?";

                                        p1 = con.prepareStatement(sql);
                                        
                                        p1.setString(1, f_name);
                                        p1.setString(2, l_name);
                                        p1.setString(3, email);
                                        p1.setString(4, dob);
                                        p1.setString(5, gender);
                                        p1.setString(6, addr);
                                        p1.setString(7, country);
                                        p1.setString(8, city);
                                        p1.setString(9, state);
                                        p1.setString(10, postal_code);
                                        p1.setString(11, phone);
                                        p1.setString(12, status);
                                        p1.setString(13, h1);

                                        int y = p1.executeUpdate();
                                        
                                        out.print(y);
                                        if (y == 1) {
                            %>

                            <script>
                                alert("Record Update");
                                window.location.href="patientshome.jsp";
                            </script>
                            <%                    } else {
                                            out.print("Record not Found");
                                        }

                                    } 
                                    catch (SQLException e) {
                                        out.print(e.toString());
                                    //    e.printStackTrace();
                                    }


                                }%>
                        </div>
                    </div>
                </div>
                <div class="notification-box">

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


    <!-- edit-patient24:07-->
</html>
