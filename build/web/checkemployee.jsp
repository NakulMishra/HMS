<%-- 
    Document   : checkemployee
    Created on : 8 Sep, 2023, 3:08:48 PM
    Author     : hp
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
            try{
                String user = request.getParameter("u");
                String pass = request.getParameter("p");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8","root","root18");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from employee where username ='" + user + "' and pass ='" + pass + "'");
                
                if(rs.next()){
                    session.setAttribute("user", user);
                    response.sendRedirect("employeehome.jsp");
                }
                else{
                    %>
                    <script>
                        alert('invalid Login please try again !');
                        window.location = 'index.jsp';
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

