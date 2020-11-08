/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import DB.DB;
import Model.Client;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import com.google.gson.Gson;
import java.io.IOException;
import java.sql.ResultSet;
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
public class UserMgt extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("search");

        try {

            ClientDao clientDao = new ClientDaoImpl();
            Client client = clientDao.getClientbyEmail(email);
            
            PhotographerDao photographerDao = new PhotographerDaoImp();
            Photographer photographer = photographerDao.getPhotographerByEmail(email);

            ArrayList<String> a = new ArrayList();

            if (client!= null && photographer!= null) {

                a.add(client.getClientId());
                a.add(client.getFname() + " " + client.getLname());
                a.add("Client");

                a.add(photographer.getPhotographerId());
                a.add(photographer.getFname() + " " + photographer.getLname());
                a.add("Photographer");

            } else if (client!= null) {

                a.add(client.getClientId());
                a.add(client.getFname() + " " + client.getLname());
                a.add("Client");

            } else if (photographer!= null) {

                a.add(photographer.getPhotographerId());
                a.add(photographer.getFname() + " " + photographer.getLname());
                a.add("Photographer");
            }

            Gson g = new Gson();
            String toJson = g.toJson(a);
            response.getWriter().write(toJson);

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (Exception e) {
        }
    }
}
