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
public class ChangePassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cpass = request.getParameter("cpass");
        String npass = request.getParameter("npass");
        String rpass = request.getParameter("rpass");
        String user = request.getParameter("user");

        cpass = cpass.trim();
        npass = npass.trim();
        rpass = rpass.trim();

        if (cpass.equals(null) || npass.equals(null) || rpass.equals(null)) {
            response.getWriter().write("fill");
        } else if (!npass.equals(rpass)) {
            response.getWriter().write("match");
        } else {
            if (user.equals("client")) {
                try {
                    Client c = (Client) request.getSession().getAttribute("loggedClient");
                    ClientDao dao = new ClientDaoImpl();
                    if (c.getPassword().equals(cpass)) {
                        dao.updateClientPassword(npass, c.getClientId());
                        response.getWriter().write("success");

                    } else {
                        response.getWriter().write("cur");

                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            } else if (user.equals("photographer")) {
                try {

                    Photographer c = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                    PhotographerDao dao = new PhotographerDaoImp();
                    if (c.getPassword().equals(cpass)) {
                        dao.updatePhotographerPassword(npass, c.getPhotographerId());
                        response.getWriter().write("success");
                    } else {
                        response.getWriter().write("cur");

                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }

            } else if (user.equals("admin")) {
                try {
                    Admin c = (Admin) request.getSession().getAttribute("loggedAdmin");
                    AdminDao dao = new AdminDaoImpl();
                    if (c.getPassword().equals(cpass)) {
                        dao.updateAdminPassword(npass, c.getAdminId());
                        response.getWriter().write("success");
                    } else {
                        response.getWriter().write("cur");

                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }

    }

}
