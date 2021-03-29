/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.ReportedPhotographDaoImpl;
import Controller.DaoImpl.ReportedPhotographerDaoImpl;
import Controller.DaoImpl.ReportedQuestionDaoImpl;
import Model.Client;
import Model.Dao.ClientDao;
import Model.Dao.ReportedPhotographDao;
import Model.Dao.ReportedPhotographerDao;
import Model.Dao.ReportedQuestionDao;
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
public class DeleteClientAccount extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Client c = (Client) request.getSession().getAttribute("loggedClient");
            String clientId = c.getClientId();

            ClientDao dao = new ClientDaoImpl();
            dao.updateClientActiveStatus(0, clientId);
            request.getSession().invalidate();
            response.getWriter().write("success");
            
            
        } catch (SQLException ex) {
            response.getWriter().write("error");
            ex.printStackTrace();
        }
    }

}
