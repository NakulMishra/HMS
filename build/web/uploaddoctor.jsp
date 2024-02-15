<%-- 
    Document   : upload
    Created on : 8 Sep, 2023, 3:41:45 PM
    Author     : hp
--%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.io.InputStream"%>
<%@page import ="java.sql.*" %>
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
            
            String f_name = request.getParameter("f_name");
            String l_name = request.getParameter("l_name");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            String dob = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String addr = request.getParameter("addr");
            String country = request.getParameter("country");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String postalcode = request.getParameter("postalcode");
            String phone = request.getParameter("phone");
            String short_bio = request.getParameter("short_bio");
            String status = request.getParameter("status");
            
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(c,"root","root18");
                InputStream inputStream = null;
                Part filepart = request.getPart("image");
                
                if(filepart != null)
                {
                    inputStream = filepart.getInputStream();
                    
                    String sql = "INSERT INTO doctor(f_name,l_name,username,email,pass,dob,gender,addr,country,city,state,postalcode,phone,image,short_bio,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    
                    PreparedStatement p1 = connection.prepareStatement(sql);
                    
                    p1.setString(1,f_name);
                    p1.setString(2,l_name);
                    p1.setString(3,username);
                    p1.setString(4,email);
                    p1.setString(5,pass);
                    p1.setString(6,dob);
                    p1.setString(7,gender);
                    p1.setString(8,addr);
                    p1.setString(9,country);
                    p1.setString(10,city);
                    p1.setString(11,state);
                    p1.setString(12,postalcode);
                    p1.setString(13,phone);
                    p1.setBlob(14,inputStream);
                    p1.setString(15,short_bio);
                    p1.setString(16,status);
                    
                    int row = p1.executeUpdate();
                    if(row>0){
                        %>
                        <script>
                            alert('Registration Done');
                            window.location.href = 'doctors.jsp';
                        </script>
                        <%
                    }
                                                          
                }
            }         
            catch(Exception e){
                out.print(e.toString());
            }
                   
        %>
    </body>
</html>
