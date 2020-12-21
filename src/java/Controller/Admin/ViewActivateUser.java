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
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ViewActivateUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String user = request.getParameter("userEmail");

        try {

            ClientDao clientDao = new ClientDaoImpl();
            Client c = clientDao.getClientbyId(user);
            PhotographerDao photographerDao = new PhotographerDaoImp();
            Photographer p = photographerDao.getPhotographerById(user);
            
            
            if (c != null) {
               
                Gson g = new Gson();
                String toJson = g.toJson(c);
                response.getWriter().write(toJson);

            } else {
               
                Gson g = new Gson();
                String toJson = g.toJson(p);
                response.getWriter().write(toJson);

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    

}
