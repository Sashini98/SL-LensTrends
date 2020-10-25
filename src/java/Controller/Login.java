/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DB.DB;
import Model.Client;
import Model.Photographer;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String pw = request.getParameter("pw");

        try {

            ResultSet clientEmail = DB.search("SELECT * FROM Client Where Email = '" + email + "' ");
            ResultSet photographerEmail = DB.search("SELECT * FROM Photographer Where Email = '" + email + "' ");
            ResultSet AdminEmail = DB.search("SELECT * FROM Admin Where Email = '" + email + "' ");

            boolean adminAcc = AdminEmail.next();
            boolean clientAcc = clientEmail.next();
            boolean photographerAcc = photographerEmail.next();

            if (adminAcc) {
                try {
                    ResultSet admin = DB.search("SELECT * FROM Admin Where Email = '" + email + "' AND Password = '" + pw + "' ");
                    if (admin.next()) {
                        
//                        Client c = new Client();
//                        c.setClientId(client.getInt("Client_Id"));
//                        c.setEmail(client.getString("Email"));
//                        c.setPassword(client.getString("Password"));
//                        c.setFname(client.getString("Fname"));
//                        c.setLname(client.getString("Lname"));
//                        c.setAddress_no(client.getString("Address_No"));
//                        c.setStreet(client.getString("Street"));
//                        c.setCity(client.getString("City"));
//                        c.setGenderId(client.getInt("Gender_Id"));

//                        request.getSession().setAttribute("loggedClient", c);
//                        response.sendRedirect("/View/Home.jsp");

                    }

                } catch (Exception e) {
                    // inavalid password
                }
            } else if (clientAcc && photographerAcc) {

                //logged palace
                String user = (String) request.getSession().getAttribute("User");

                if (user.equals("Client")) {
                    try {
                        ResultSet client = DB.search("SELECT * FROM Client Where Email = '" + email + "' AND Password = '" + pw + "' ");
                        if (client.next()) {
                            Client c = new Client();
                            c.setClientId(client.getInt("Client_Id"));
                            c.setEmail(client.getString("Email"));
                            c.setPassword(client.getString("Password"));
                            c.setFname(client.getString("Fname"));
                            c.setLname(client.getString("Lname"));
                            c.setAddress_no(client.getString("Address_No"));
                            c.setStreet(client.getString("Street"));
                            c.setCity(client.getString("City"));
                            c.setGenderId(client.getInt("Gender_Id"));

                            request.getSession().setAttribute("loggedClient", c);
                            response.sendRedirect("/View/Home.jsp");

                        }

                    } catch (Exception e) {
                        // inavalid password
                    }

                } else {

                    try {
                        ResultSet client = DB.search("SELECT * FROM Client Where Email = '" + email + "' AND Password = '" + pw + "' ");
                        if (client.next()) {
                            Client c = new Client();
                            c.setClientId(client.getInt("Client_Id"));
                            c.setEmail(client.getString("Email"));
                            c.setPassword(client.getString("Password"));
                            c.setFname(client.getString("Fname"));
                            c.setLname(client.getString("Lname"));
                            c.setAddress_no(client.getString("Address_No"));
                            c.setStreet(client.getString("Street"));
                            c.setCity(client.getString("City"));
                            c.setGenderId(client.getInt("Gender_Id"));

                            request.getSession().setAttribute("loggedClient", c);
                            response.sendRedirect("/View/Home.jsp");

                        }

                    } catch (Exception e) {
                        // inavalid password
                    }

                }

            } else if (clientAcc) {

                try {
                    ResultSet client = DB.search("SELECT * FROM Client Where Email = '" + email + "' AND Password = '" + pw + "' ");
                    if (client.next()) {
                        Client c = new Client();
                        c.setClientId(client.getInt("Client_Id"));
                        c.setEmail(client.getString("Email"));
                        c.setPassword(client.getString("Password"));
                        c.setFname(client.getString("Fname"));
                        c.setLname(client.getString("Lname"));
                        c.setAddress_no(client.getString("Address_No"));
                        c.setStreet(client.getString("Street"));
                        c.setCity(client.getString("City"));
                        c.setGenderId(client.getInt("Gender_Id"));

                        request.getSession().setAttribute("loggedClient", c);
                        response.sendRedirect("/View/Home.jsp");

                    }

                } catch (Exception e) {
                    // inavalid password
                }

            } else if (photographerAcc) {

                try {

                    ResultSet photographer = DB.search("SELECT * FROM Photographer Where Email = '" + email + "' AND Password = '" + pw + "' ");

                    if (photographer.next()) {
                        Photographer p = new Photographer();
                        p.setPhotographerId(photographer.getInt("Photographer_Id"));
                        p.setEmail(photographer.getString("Email"));
                        p.setPassword(photographer.getString("Password"));
                        p.setFname(photographer.getString("Fname"));
                        p.setLname(photographer.getString("Lname"));
                        p.setAddress_no(photographer.getString("Address_No"));
                        p.setStreet(photographer.getString("Street"));
                        p.setCity(photographer.getString("City"));
                        p.setJoined_date(photographer.getDate("Joined_Date"));
                        p.setGenderId(photographer.getInt("Gender_Id"));
                        p.setPlanId(photographer.getInt("Plan_Id"));

                        request.getSession().setAttribute("loggedPhotographer", p);
                        response.sendRedirect("/View/Photographer/PhotographerProfile.jsp");
                    }

                } catch (Exception e) {
                }

            } else {

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (NullPointerException e) {

            //invalid username 
        }

//        System.out.println(getServletContext().getRealPath(""));
//        request.getRequestDispatcher("/View/Photographer/PhotographerProfile.jsp").forward(request, response);
//        response.sendRedirect("View/Photographer/PhotographerProfile.jsp");
    }

}
