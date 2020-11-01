/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DB.DB;
import Model.Admin;
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

                        Admin a = new Admin();
                        a.setEmail(admin.getString("Email"));
                        a.setPassword(admin.getString("Password"));
                        a.setType(admin.getString("Type"));
                        a.setAdminId(admin.getInt("Admin_id"));

                        request.getSession().setAttribute("loggedAdmin", a);
                        response.sendRedirect("View/Admin/UserManagement.jsp");

                    }

                } catch (Exception e) {
                    // inavalid password
                    request.setAttribute("msgp", "Invalid Password");
                    request.getRequestDispatcher("View/login.jsp").forward(request, response);
                }
            } else if (clientAcc && photographerAcc) {

                //logged palace
                String user = (String) request.getSession().getAttribute("User");

                if (user.equals("Client")) {
                    try {
                        ResultSet client = DB.search("SELECT * FROM Client Where Email = '" + email + "' AND Password = '" + pw + "' ");
                        if (client.next()) {
                            Client c = new Client();
                            c.setClientId(client.getString("Client_Id"));
                            c.setEmail(client.getString("Email"));
                            c.setPassword(client.getString("Password"));
                            c.setFname(client.getString("Fname"));
                            c.setLname(client.getString("Lname"));
                            c.setAddress_no(client.getString("Address_No"));
                            c.setCity(client.getString("City"));
                            c.setProvince(client.getString("Province"));
                            c.setGenderId(client.getInt("Gender_Id"));

                            request.getSession().setAttribute("loggedClient", c);
                            String page = (String) request.getSession().getAttribute("PageLocation");
                            if (page.equals("ch")) {
                                response.sendRedirect("View/Home.jsp");

                            }

                        }

                    } catch (Exception e) {
                        // inavalid password
                        request.setAttribute("msgp", "Invalid Password");
                        request.getRequestDispatcher("View/login.jsp").forward(request, response);
                    }

                } else {

                    try {

                        ResultSet photographer = DB.search("SELECT * FROM Photographer Where Email = '" + email + "' AND Password = '" + pw + "' ");

                        if (photographer.next()) {
                            Photographer p = new Photographer();
                            p.setPhotographerId(photographer.getString("Photographer_Id"));
                            p.setEmail(photographer.getString("Email"));
                            p.setPassword(photographer.getString("Password"));
                            p.setFname(photographer.getString("Fname"));
                            p.setLname(photographer.getString("Lname"));
                            p.setAddress_no(photographer.getString("Address_No"));
                            p.setCity(photographer.getString("City"));
                            p.setProvince(photographer.getString("Province"));
                            p.setJoined_date(photographer.getDate("Joined_Date"));
                            p.setGenderId(photographer.getInt("Gender_Id"));
                            p.setPlanId(photographer.getInt("Plan_Id"));
                            p.setMobile(photographer.getString("Mobile"));
                            p.setWebsite(photographer.getString("Website"));
                            p.setBio(photographer.getString("bio"));
                            p.setFielsOfdInterest(photographer.getString("FieldofInterest"));
                            p.setPostalCode(photographer.getInt("PostalCode"));

                            request.getSession().setAttribute("loggedPhotographer", p);
                            response.sendRedirect("View/Photographer/PhotographerUpdate.jsp");
                        }

                    } catch (Exception e) {
                        request.setAttribute("msgp", "Invalid Password");
                        request.getRequestDispatcher("View/login.jsp").forward(request, response);
                    }

                }

            } else if (clientAcc) {

                try {
                    ResultSet client = DB.search("SELECT * FROM Client Where Email = '" + email + "' AND Password = '" + pw + "' ");
                    if (client.next()) {
                        Client c = new Client();
                        c.setClientId(client.getString("Client_Id"));
                        c.setEmail(client.getString("Email"));
                        c.setPassword(client.getString("Password"));
                        c.setFname(client.getString("Fname"));
                        c.setLname(client.getString("Lname"));
                        c.setAddress_no(client.getString("Address_No"));
                        c.setProvince(client.getString("Province"));
                        c.setCity(client.getString("City"));
                        c.setGenderId(client.getInt("Gender_Id"));

                        request.getSession().setAttribute("loggedClient", c);
                        String page = (String) request.getSession().getAttribute("PageLocation");
                        if (page.equals("ch")) {
                            response.sendRedirect("View/Home.jsp");

                        }

                    }

                } catch (Exception e) {
                    // inavalid password
                    request.setAttribute("msgp", "Invalid Password");
                    request.getRequestDispatcher("View/login.jsp").forward(request, response);
                }

            } else if (photographerAcc) {

                try {

                    ResultSet photographer = DB.search("SELECT * FROM Photographer Where Email = '" + email + "' AND Password = '" + pw + "' ");

                    if (photographer.next()) {
                        Photographer p = new Photographer();
                        p.setPhotographerId(photographer.getString("Photographer_Id"));
                        p.setEmail(photographer.getString("Email"));
                        p.setPassword(photographer.getString("Password"));
                        p.setFname(photographer.getString("Fname"));
                        p.setLname(photographer.getString("Lname"));
                        p.setAddress_no(photographer.getString("Address_No"));
                        p.setCity(photographer.getString("City"));
                        p.setProvince(photographer.getString("Province"));
                        p.setJoined_date(photographer.getDate("Joined_Date"));
                        p.setGenderId(photographer.getInt("Gender_Id"));
                        p.setPlanId(photographer.getInt("Plan_Id"));
                        p.setMobile(photographer.getString("Mobile"));
                        p.setWebsite(photographer.getString("Website"));
                        p.setBio(photographer.getString("bio"));
                        p.setFielsOfdInterest(photographer.getString("FieldofInterest"));
                        p.setPostalCode(photographer.getInt("PostalCode"));

                        request.getSession().setAttribute("loggedPhotographer", p);
                        response.sendRedirect("View/Photographer/PhotographerUpdate.jsp");
                    }

                } catch (Exception e) {
                    request.setAttribute("msgp", "Invalid Password");
                    request.getRequestDispatcher("View/login.jsp").forward(request, response);
                }

            } else {

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (NullPointerException e) {

            e.printStackTrace();
            //invalid username 
            request.setAttribute("msge", "Invalid Email");
            request.getRequestDispatcher("View/login.jsp").forward(request, response);
        }

//        System.out.println(getServletContext().getRealPath(""));
//        request.getRequestDispatcher("/View/Photographer/PhotographerProfile.jsp").forward(request, response);
//        response.sendRedirect("View/Photographer/PhotographerProfile.jsp");
    }

}
