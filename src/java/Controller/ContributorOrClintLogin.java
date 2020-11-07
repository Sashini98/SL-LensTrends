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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class ContributorOrClintLogin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = request.getParameter("a");
        String pw = (String) request.getSession().getAttribute("pw");
        String email = (String) request.getSession().getAttribute("email");

        try {

            if (user.equals("u")) {
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
                        if (page != null) {
                            if (page.equals("ch")) {
                                response.sendRedirect("View/Home.jsp");

                            } else if (page.equals("cu")) {
                                response.sendRedirect("View/User/ClientProfileUpdate.jsp");
                            }
                        } else {
                            response.sendRedirect("View/Home.jsp");
                        }

                    } else {
                        request.setAttribute("account", "false");
                        request.setAttribute("msg", "Invalid Password");
                        request.getRequestDispatcher("View/login.jsp").forward(request, response);

                    }

                } catch (Exception e) {
                    // inavalid password
                    request.setAttribute("msgp", "Invalid Password");
                    request.getRequestDispatcher("View/login.jsp").forward(request, response);
                }

            } else if (user.equals("c")) {

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
                    } else {

                        request.setAttribute("account", "false");
                        request.setAttribute("msg", "Invalid Password");
                        request.getRequestDispatcher("View/login.jsp").forward(request, response);
                    }

                } catch (Exception e) {
                    request.setAttribute("msgp", "Invalid Password");
                    request.getRequestDispatcher("View/login.jsp").forward(request, response);
                }

            } else {
                request.setAttribute("account", "false");
                request.setAttribute("msg", "Invalid Email");
                request.getRequestDispatcher("View/login.jsp").forward(request, response);

            }

        } catch (Exception e) {
            request.setAttribute("error", "true");
            request.getRequestDispatcher("View/login.jsp").forward(request, response);
        }

    }

}
