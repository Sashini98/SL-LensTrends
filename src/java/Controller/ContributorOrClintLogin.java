/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Client;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import java.io.IOException;
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
                    ClientDao clientDao = new ClientDaoImpl();
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
                            } else if (page.equals("ps")) {
                                response.sendRedirect("View/User/PhotographerSearch.jsp");
                            } else if (page.equals("cpp")) {
                                response.sendRedirect("View/User/PurchasePhoto.jsp");
                            } else if (page.equals("fh")) {
                                response.sendRedirect("View/Fourm/MainForum.jsp");
                            } else if (page.equals("fhbq")) {
                                response.sendRedirect("View/Fourm/BrowseQn.jsp");
                            } else if (page.equals("me")) {
                                response.sendRedirect("View/Events/MainEventHome.jsp");
                            } else if (page.equals("cspp")) {
                                response.sendRedirect("View/Photographer/UserViewPhotographerProfile.jsp");
                            } else if (page.equals("nh")) {
                                response.sendRedirect("View/Notifications/notificationsHome.jsp");
                            } else {
                                response.sendRedirect("View/Home.jsp");
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
                    request.setAttribute("msgp", "Invalid Password");
                    request.getRequestDispatcher("/View/login.jsp").forward(request, response);
                }

            } else if (user.equals("c")) {

                try {

                    PhotographerDao photographerDao = new PhotographerDaoImp();
                    Photographer photographerByEmailAndPassword = photographerDao.getPhotographerByEmailAndPassword(email, pw);

                    if (photographerByEmailAndPassword != null) {

                        request.getSession().setAttribute("loggedPhotographer", photographerByEmailAndPassword);
                        String page = (String) request.getSession().getAttribute("PageLocation");

                        if (page != null) {
                            if (page.equals("fh")) {
                                response.sendRedirect("View/Fourm/MainForum.jsp");
                            } else if (page.equals("fhbq")) {
                                response.sendRedirect("View/Fourm/BrowseQn.jsp");
                            } else if (page.equals("ps")) {
                                response.sendRedirect("View/User/PhotographerSearch.jsp");
                            } else if (page.equals("cspp")) {
                                response.sendRedirect("View/Photographer/UserViewPhotographerProfile.jsp");
                            } else if (page.equals("nh")) {
                                response.sendRedirect("View/Notifications/notificationsHome.jsp");
                            } else {
                                response.sendRedirect("View/PhotographerHome.jsp");
                            }
                        } else {
                            response.sendRedirect("View/PhotographerHome.jsp");
                        }

                    } else {

                        request.setAttribute("account", "false");
                        request.setAttribute("msg", "Invalid Password");
                        request.getRequestDispatcher("/View/login.jsp").forward(request, response);
                    }

                } catch (Exception e) {
                    request.setAttribute("msgp", "Invalid Password");
                    request.getRequestDispatcher("/View/login.jsp").forward(request, response);
                }

            } else {
                request.setAttribute("account", "false");
                request.setAttribute("msg", "Invalid Email");
                request.getRequestDispatcher("/View/login.jsp").forward(request, response);

            }

        } catch (Exception e) {
            request.setAttribute("error", "true");
            request.getRequestDispatcher("/View/login.jsp").forward(request, response);
        }

    }

}
