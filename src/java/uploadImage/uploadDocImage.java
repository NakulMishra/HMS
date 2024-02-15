/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uploadImage;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author hp
 */
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class uploadDocImage extends HttpServlet {

    // database connection settings
    private final String dbURL = "jdbc:mysql://localhost:3306/mfas?characterEncoding=utf8";
    private final String dbUser = "root";
    private final String dbPass = "root18";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
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

        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("image");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client

        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // constructs SQL statement
            String sql = "INSERT INTO doctor(f_name,l_name,username,email,pass,dob,gender,addr,country,city,state,postalcode,phone,image,short_bio,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement p1 = conn.prepareStatement(sql);
            p1.setString(1, f_name);
            p1.setString(2, l_name);
            p1.setString(3, username);
            p1.setString(4, email);
            p1.setString(5, pass);
            p1.setString(6, dob);
            p1.setString(7, gender);
            p1.setString(8, addr);
            p1.setString(9, country);
            p1.setString(10, city);
            p1.setString(11, state);
            p1.setString(12, postalcode);
            p1.setString(13, phone);
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                p1.setBlob(14, inputStream);
            }
            p1.setString(15, short_bio);
            p1.setString(16, status);
            // sends the statement to the database server
            int row = p1.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);

            // forwards to the message page use if needed
            //getServletContext().getRequestDispatcher("/doctors.jsp").forward(request, response);
            response.sendRedirect("doctors.jsp");
        }
    }

}
