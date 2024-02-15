<%-- 
    Document   : edit-employee
    Created on : 18 Sep, 2023, 9:51:30 AM
    Author     : hp
--%>
<%@page import="java.sql.*"  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- edit-employee24:07-->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <title>Preclinic - Medical & Hospital - Bootstrap 4 Admin Template</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/select2.min.css">
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
                        <img src="Hospital_LOGO.png" width="35" height="35" alt=""> <span>Preclinic</span>
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
                                <a href="patients-admin.jsp"><i class="fa fa-wheelchair"></i> <span>Patients</span></a>
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
                        <div class="col-lg-8 offset-lg-2">
                            <h4 class="page-title">Edit Employee</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <%
                                try {
                                    Connection conn = null;
                                    int empID = Integer.parseInt(request.getParameter("id"));
                                    Class.forName("com.mysql.jdbc.Driver");
                                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8", "root", "root18");
                                    Statement s = conn.createStatement();
                                    ResultSet rst = s.executeQuery("SELECT * from employee where emp_id='" + empID + "'");

                                    while (rst.next()) {
                            %>
                            <form action="edit-employee.jsp">

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
                                            <input class="form-control" type="text" value="<%=rst.getString("username")%>" readonly="" name="username">
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
                                            <label>Employee ID <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" value="<%=rst.getString("emp_id")%>" readonly="" name="emp_id">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Phone </label>
                                            <input class="form-control" type="text" value="<%=rst.getString("phone")%>" name="phone">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Role</label>
                                            <select class="select" value="<%=rst.getString("role")%>" name="role">
                                                <option>Select Role</option>
                                                <option>Nurse</option>
                                                <option>Laboratorist</option>
                                                <option>Pharmacist</option>
                                                <option>Accountant</option>
                                                <option>Receptionist</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="display-block">Status</label>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="status" id="employee_active" value="Active" checked>
                                        <label class="form-check-label" for="employee_active">
                                            Active
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="status" id="employee_inactive" value="Inactive">
                                        <label class="form-check-label" for="employee_inactive">
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
                                        String phone = request.getParameter("phone");
                                        String role = request.getParameter("role");
                                        String status = request.getParameter("status");

                                        int h1 = Integer.parseInt(request.getParameter("h"));

                                        sql = "UPDATE employee set f_name=?, l_name=?, email=?, phone=?, role=?, status=?  WHERE emp_id=?";

                                        p1 = con.prepareStatement(sql);
                                        p1.setString(1, f_name);
                                        p1.setString(2, l_name);
                                        p1.setString(3, email);
                                        p1.setString(4, phone);
                                        p1.setString(5, role);
                                        p1.setString(6, status);
                                        p1.setInt(7, h1);

                                        int y = p1.executeUpdate();
                                        out.print(y);
                                        if (y == 1) {
                            %>

                            <script>
                                alert("Record Update");
                                window.location.href="employees.jsp";
                            </script>
                            <%                    } else {
                                            out.print("Record not Found");
                                        }

                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }


                                }%>
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
        <script src="assets/js/moment.min.js"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
        <script src="assets/js/app.js"></script>
    </body>


    <!-- edit-employee24:07-->
</html>