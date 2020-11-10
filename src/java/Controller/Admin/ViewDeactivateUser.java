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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ViewDeactivateUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userid = request.getParameter("userid");

        try {

            ClientDao clientDao = new ClientDaoImpl();
            Client client = clientDao.getClientbyId(userid);
            PhotographerDao photographerDao = new PhotographerDaoImp();
            Photographer photographer = photographerDao.getPhotographerById(userid);
            
            
            if (client != null) {
               
                Gson g = new Gson();
                String toJson = g.toJson(client);
                response.getWriter().write(toJson);

            } else {
               
                Gson g = new Gson();
                String toJson = g.toJson(photographer);
                response.getWriter().write(toJson);

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

}
