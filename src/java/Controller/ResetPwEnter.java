/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Controller.DaoImpl.AdminDaoImpl;
import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Admin;
import Model.Client;
import Model.Dao.AdminDao;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class ResetPwEnter extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = (String) request.getSession().getAttribute("emailForward");
        String pw = request.getParameter("pw");
        String cpw = request.getParameter("cpw");
        String attribute = (String) request.getSession().getAttribute("loggingAS");

        if (pw.equals(cpw)) {
            try {

                if (attribute.equals("user")) {
                    try {
                        ClientDao clientDao = new ClientDaoImpl();
                        Client clientbyEmailAndPassword = clientDao.getClientbyEmailAndPassword(email, pw);

                        if (clientbyEmailAndPassword != null) {

                            request.getSession().setAttribute("loggedClient", clientbyEmailAndPassword);

                            response.sendRedirect("View/Home.jsp");

                        } else {
                            request.setAttribute("account", "false");
                            request.setAttribute("msg", "Invalid Password");
                            request.getRequestDispatcher("/View/ResetPwd2.jsp").forward(request, response);
                        }
                    } catch (SQLException ex) {
                        Logger.getLogger(ResetPwEnter.class.getName()).log(Level.SEVERE, null, ex);
                        request.setAttribute("msg", "Error while accessing Password");
                    }

                } else if (attribute.equals("photographer")) {
                    PhotographerDao photographerDao = new PhotographerDaoImp();
                    Photographer photographerByEmailAndPassword = photographerDao.getPhotographerByEmailAndPassword(email, pw);

                    if (photographerByEmailAndPassword != null) {

                        request.getSession().setAttribute("loggedPhotographer", photographerByEmailAndPassword);
                        response.sendRedirect("View/PhotographerHome.jsp");

                    } else {
                        request.setAttribute("account", "false");
                        request.setAttribute("msg", "Invalid Password");
                        request.getRequestDispatcher("/View/ResetPwd2.jsp").forward(request, response);
                    }
                } else if (attribute.equals("admin")) {
                    AdminDao adminDao = new AdminDaoImpl();
                    Admin adminByEmailAndPassword = adminDao.getAdminByEmailAndPassword(email, pw);

                    if (adminByEmailAndPassword != null) {

                        request.getSession().setAttribute("loggedAdmin", adminByEmailAndPassword);;
                        response.sendRedirect("View/Admin/AdminDashboard.jsp");

                    } else {
                        request.setAttribute("account", "false");
                        request.setAttribute("msg", "Invalid Password");
                        request.getRequestDispatcher("/View/ResetPwd2.jsp").forward(request, response);
                    }
                } else {
                    request.setAttribute("msg", "Error while accessing Password");
                    request.getRequestDispatcher("/View/ResetPwd2.jsp").forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }
}
