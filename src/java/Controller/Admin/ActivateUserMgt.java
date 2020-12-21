/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Client;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ActivateUserMgt extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("searchbox");

        try {

            ClientDao clientDao = new ClientDaoImpl();
            Client client = clientDao.getDeactivatedClientbyEmail(email);

            PhotographerDao photographerDao = new PhotographerDaoImp();
            Photographer photographer = photographerDao.getDeactivatedPhotographerByEmail(email);

            ArrayList<String> d = new ArrayList();

            if (client != null && photographer != null) {
                d.add(client.getClientId());
                d.add(client.getFname() + " " + client.getLname());
                d.add("Client");

                d.add(photographer.getPhotographerId());
                d.add(photographer.getFname() + " " + photographer.getLname());
                d.add("Photographer");

            } else if (client != null) {

                d.add(client.getClientId());
                d.add(client.getFname() + " " + client.getLname());
                d.add("Client");

            } else if (photographer != null) {

                d.add(photographer.getPhotographerId());
                d.add(photographer.getFname() + " " + photographer.getLname());
                d.add("Photographer");
            } else {
                d.add("error");
            }
            
            Gson g = new Gson();
            String toJson = g.toJson(d);
            response.getWriter().write(toJson);

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (Exception e) {
        }
    }


}
