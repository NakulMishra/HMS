<%-- 
    Document   : delete-employee
    Created on : 18 Sep, 2023, 6:23:06 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String id = request.getParameter("id");
            int no = Integer.parseInt(id);

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8", "root", "root18");
                Statement st = conn.createStatement();

                st.executeUpdate("DELETE FROM employee  WHERE emp_id = '" + no + "'");
                response.sendRedirect("employees.jsp");
            } catch (Exception e) {
            }
        %>
    </body>
</html>
