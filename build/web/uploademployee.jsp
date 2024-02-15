<%-- 
    Document   : uploademployee
    Created on : 8 Sep, 2023, 11:39:24 PM
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
            
            
            String f_name = request.getParameter("f_name");
            String l_name = request.getParameter("l_name");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            String join_date = request.getParameter("join_date");
            String phone = request.getParameter("phone");
            String role = request.getParameter("role");
            String status = request.getParameter("status");
            
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(c,"root","root18");
                
                
               
                    
                    
                    String sql = "INSERT INTO employee(f_name,l_name,username,email,pass,join_date,phone,role,status) values(?,?,?,?,?,?,?,?,?)";
                    
                    PreparedStatement p1 = connection.prepareStatement(sql);
                    
                    p1.setString(1,f_name);
                    p1.setString(2,l_name);
                    p1.setString(3,username);
                    p1.setString(4,email);
                    p1.setString(5,pass);
                    p1.setString(6,join_date);
                    p1.setString(7,phone);
                    p1.setString(8,role);
                    p1.setString(9,status);
                    
                    int row = p1.executeUpdate();
                    if(row>0){
                        %>
                        <script>
                            alert('Registration Done');
                            window.location.href = 'employees.jsp';
                        </script>
                        <%
                    }
                                                          
               
                                          }
         
            catch(Exception e){
                out.print(e.toString());
            }
                   
        %>
    </body>
</html>
