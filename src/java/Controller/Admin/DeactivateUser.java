/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import DB.DB;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class DeactivateUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String clientId = request.getParameter("deactivate");
        int status = 0;
        
        try{
            char first = clientId.charAt(0);
            
            if(first=='C'){
                ClientDao clientDao = new ClientDaoImpl();
                clientDao.updateClientActiveStatus(status, clientId);
                
            }else{
                PhotographerDao photographerDao = new PhotographerDaoImp();
                photographerDao.updatePhotographerActiveStatus(status, clientId);
            }
            
            response.getWriter().write("User Deactivated Successfully.");
            
        }catch(Exception e){
            response.getWriter().write("There is an error.");
            e.printStackTrace();
            
        }

    }

}
