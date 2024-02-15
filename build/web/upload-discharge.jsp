<%-- 
    Document   : upload-discharge
    Created on : 23 Sep, 2023, 9:38:40 AM
    Author     : hp
--%>


<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.InputStream"%>
<%@page import = "java.sql.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import = "java.util.*" import="java.util.concurrent.TimeUnit" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            Connection connection = null;
            String c = "jdbc:mysql://localhost:3306/mfas?charaterEncoding=utf8";

            PreparedStatement psmnt = null;

            String patient_id = request.getParameter("patient_id");
            String ward = request.getParameter("ward");
            String bed = request.getParameter("bed");
            String doctor_id = request.getParameter("doctor_id");
            String date = request.getParameter("date");
            String admit_id = request.getParameter("admit_id");
            String amount = request.getParameter("amount");
            String a_date = request.getParameter("a_date");
            String f_name = request.getParameter("f_name");
            String l_name = request.getParameter("l_name");
    SimpleDateFormat formatter1=new SimpleDateFormat("dd/MM/yyyy");  


java.util.Date date1 = formatter1.parse(a_date);
java.util.Date date2 = formatter1.parse(date);
 long timeDiff = Math.abs(date1.getTime() - date2.getTime());
    long daysDiff = TimeUnit.DAYS.convert(timeDiff, TimeUnit.MILLISECONDS);
    System.out.println("The number of days between dates: " + daysDiff);
long tot=daysDiff*5000;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(c, "root", "root18");



                String sql = "INSERT INTO discharge(patient_id,ward,bed,doctor_id,date,admit_id,amount,a_date,f_name,l_name,noofdays,total) values(?,?,?,?,?,?,?,?,?,?,?,?)";

                PreparedStatement p1 = connection.prepareStatement(sql);

                p1.setString(1, patient_id);
                p1.setString(2, ward);
                p1.setString(3, bed);
                p1.setString(4, doctor_id);
                p1.setString(5, date);
                p1.setString(6,admit_id);
                p1.setString(7, amount);
                p1.setString(8, a_date);
                p1.setString(9, f_name);
                p1.setString(10, l_name);
                  p1.setLong(11, daysDiff);
             p1.setLong(12,tot);


                int row = p1.executeUpdate();
                if (row > 0) {
        %>
        <script>
            alert('Patient Discharged Sucesfully');
            window.location.href = 'discharge-patient.jsp';
        </script>
        <%                                    }

                }catch(Exception e){
                out.print(e.toString());
            }

        %>
    </body>
</html>


