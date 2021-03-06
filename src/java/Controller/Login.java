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
        System.out.println("pw"+pw);

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
//                        response.sendRedirect("/GroupProject/LoadDashBoardData");
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
                            } else if (page.equals("LCaof")) {
                                response.sendRedirect((String) request.getSession().getAttribute("URL"));
                            } else if (page.equals("prep")) {
                                response.sendRedirect("View/User/PurchasePhoto.jsp");
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
                    e.printStackTrace();
                    request.setAttribute("account", "false");
                    request.setAttribute("msg", "Invalid Password");
                    request.getRequestDispatcher("/View/login.jsp").forward(request, response);
                }

            } else if (photographerByEmail != null) {
                System.out.println("ok");
                try {
                    Photographer photographerByEmailAndPassword = photographerDao.getPhotographerByEmailAndPassword(email, pw);

                    if (photographerByEmailAndPassword != null) {
                        System.out.println("1");

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
                                System.out.println("2");
                            }
                        } else {
                            response.sendRedirect("View/PhotographerHome.jsp");
                            System.out.println("3");
                        }

                    } else {
                        System.out.println("uuuuuuuuuuuuuuuuu");
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
                System.out.println("2222222222222222222222");
                request.getRequestDispatcher("/View/login.jsp").forward(request, response);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (NullPointerException e) {
            System.out.println("email valid ne");
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
