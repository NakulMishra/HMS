<%-- 
    Document   : upload-admit
    Created on : 22 Sep, 2023, 10:12:38 AM
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

            String patient_id = request.getParameter("patient_id");
            String ward = request.getParameter("ward");
            String bed = request.getParameter("bed");
            String doctor_id = request.getParameter("doctor_id");
            String date = request.getParameter("date");
            String ward_charges = request.getParameter("ward_charges");



            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(c, "root", "root18");



                String sql = "INSERT INTO admit(patient_id,ward,bed,doctor_id,date,ward_charges) values(?,?,?,?,?,?)";

                PreparedStatement p1 = connection.prepareStatement(sql);

                p1.setString(1, patient_id);
                p1.setString(2, ward);
                p1.setString(3, bed);
                p1.setString(4, doctor_id);
                p1.setString(5, date);
                p1.setString(6,ward_charges);


                int row = p1.executeUpdate();
                if (row > 0) {
        %>
        <script>
            alert('Patient Admitted Sucesfully');
            window.location.href = 'employeehome.jsp';
        </script>
        <%                                    }

                }catch(Exception e){
                out.print(e.toString());
            }

        %>
    </body>
</html>

