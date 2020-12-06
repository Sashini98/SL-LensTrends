/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ActivateUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String userid = request.getParameter("activate");
        int status = 1;
        
        try{
            char first = userid.charAt(0);
            System.out.println(first);
            
            if(first=='C'){
                ClientDao clientDao = new ClientDaoImpl();
                clientDao.updateClientActiveStatus(status, userid);
                
            }else{
                PhotographerDao photographerDao = new PhotographerDaoImp();
                photographerDao.updatePhotographerActiveStatus(status, userid);
            }
            
            response.getWriter().write("User Activated Successfully.");
            
        }catch(Exception e){
            response.getWriter().write("There is an error.");
            e.printStackTrace();
            
        }
    }


}
