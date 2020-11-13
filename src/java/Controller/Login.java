/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Controller.DaoImpl.AdminDaoImpl;
import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import DB.DB;
import Model.Admin;
import Model.Client;
import Model.Dao.AdminDao;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
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

            ClientDao clientDao = new ClientDaoImpl();
            Client clientbyEmail = clientDao.getClientbyEmail(email);

            PhotographerDao photographerDao = new PhotographerDaoImp();
            Photographer photographerByEmail = photographerDao.getPhotographerByEmail(email);

            AdminDao adminDao = new AdminDaoImpl();
            Admin adminByEmail = adminDao.getAdminByEmail(email);

            if (adminByEmail != null) {
                try {
                    Admin adminByEmailAndPassword = adminDao.getAdminByEmailAndPassword(email, pw);

                    if (adminByEmailAndPassword != null) {

                        request.getSession().setAttribute("loggedAdmin", adminByEmailAndPassword);
                        response.sendRedirect("View/Admin/AdminDashboard.jsp");

                    } else {
                        request.setAttribute("account", "false");
                        request.setAttribute("msg", "Invalid Password");
                        request.getRequestDispatcher("/View/login.jsp").forward(request, response);
                    }

                } catch (Exception e) {
                    // inavalid password
                    request.setAttribute("account", "false");
                    request.setAttribute("msg", "Invalid Password");
                    request.getRequestDispatcher("/View/login.jsp").forward(request, response);
                }
            } else if (clientbyEmail != null && photographerByEmail != null) {

                request.setAttribute("account", "true");
                request.getSession().setAttribute("pw", pw);
                request.getSession().setAttribute("email", email);
                request.getRequestDispatcher("/View/login.jsp").forward(request, response);

                //logged palace
//               
            } else if (clientbyEmail != null) {
                try {
                    Client clientbyEmailAndPassword = clientDao.getClientbyEmailAndPassword(email, pw);

                    if (clientbyEmailAndPassword != null) {

                        request.getSession().setAttribute("loggedClient", clientbyEmailAndPassword);
                        String page = (String) request.getSession().getAttribute("PageLocation");

                        if (page != null) {
                            if (page.equals("ch")) {
                                response.sendRedirect("View/Home.jsp");

                            } else if (page.equals("cu")) {
                                response.sendRedirect("View/User/ClientProfileUpdate.jsp");
                            } else if (page.equals("cph")) {
                                response.sendRedirect("View/User/AdvancedSearch.jsp");
                            }
                        } else {
                            response.sendRedirect("View/Home.jsp");
                        }

                    } else {
                        request.setAttribute("account", "false");
                        request.setAttribute("msg", "Invalid Password");
                        request.getRequestDispatcher("/View/login.jsp").forward(request, response);
                    }

                } catch (Exception e) {
                    // inavalid password
                    e.printStackTrace();
                    request.setAttribute("account", "false");
                    request.setAttribute("msg", "Invalid Password");
                    request.getRequestDispatcher("/View/login.jsp").forward(request, response);
                }

            } else if (photographerByEmail != null) {

                try {
                    Photographer photographerByEmailAndPassword = photographerDao.getPhotographerByEmailAndPassword(email, pw);
                    ResultSet photographer = DB.search("SELECT * FROM Photographer Where Email = '" + email + "' AND Password = '" + pw + "' ");

                    if (photographerByEmailAndPassword != null) {                 

                        request.getSession().setAttribute("loggedPhotographer", photographerByEmailAndPassword);
                        response.sendRedirect("View/PhotographerHome.jsp");
                        
                    } else {
                        request.setAttribute("account", "false");
                        request.setAttribute("msg", "Invalid Password");
                        request.getRequestDispatcher("View/login.jsp").forward(request, response);
                    }

                } catch (Exception e) {
                    request.setAttribute("account", "false");
                    request.setAttribute("msg", "Invalid Password");
                    request.getRequestDispatcher("/View/login.jsp").forward(request, response);
                }

            } else {
                request.setAttribute("account", "false");
                request.setAttribute("msg", "Invalid Email");
                request.getRequestDispatcher("/View/login.jsp").forward(request, response);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (NullPointerException e) {

            e.printStackTrace();
            //invalid username 
            request.setAttribute("msg", "Invalid Email");
            request.getRequestDispatcher("/View/login.jsp").forward(request, response);
        }

//        System.out.println(getServletContext().getRealPath(""));
//        request.getRequestDispatcher("/View/Photographer/PhotographerProfile.jsp").forward(request, response);
//        response.sendRedirect("View/Photographer/PhotographerProfile.jsp");
    }

}
