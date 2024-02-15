<%-- 
    Document   : uploadappointment
    Created on : 13 Sep, 2023, 11:35:24 AM
    Author     : hp
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.InputStream"%>
<%@page import = "java.sql.*" %>
 <%@page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
            Connection connection = null;
            String c = "jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8";
            
            PreparedStatement psmnt = null;
            
            String patient_name = request.getParameter("patient_name");
            String doctor = request.getParameter("doctor");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String patient_email = request.getParameter("patient_email");
            String patient_phn_no = request.getParameter("patient_phn_no");
            String message = request.getParameter("message");
            String status = request.getParameter("status");
            
            
            
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(c,"root","root18");
                
                
                
                    
                    String sql = "INSERT INTO appointment(patient_name,doctor,date,time,patient_email,patient_phn_no,message,status) values(?,?,?,?,?,?,?,?)";
                    
                    PreparedStatement p1 = connection.prepareStatement(sql);
                    
                    p1.setString(1,patient_name);
                    p1.setString(2,doctor);
                    p1.setString(3,date);
                    p1.setString(4,time);
                    p1.setString(5,patient_email);
                    p1.setString(6,patient_phn_no);
                    p1.setString(7,message);
                    p1.setString(8,status);
                    
                    int row = p1.executeUpdate();
                    if(row>0){
                        %>
                        <script>
                            alert('Registration Done');
                            window.location.href = 'register.jsp';
                        </script>
                        <%
                    }
                                                          
                
         
            
                   
        %>
    </body>
</html>
