/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Event;

import Controller.DaoImpl.EventDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Client;
import Model.Dao.EventDao;
import Model.Dao.PhotographerDao;
import Model.PastEvent;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class PastEvents extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Client c = (Client) request.getSession().getAttribute("loggedClient");
            String id = c.getClientId();
            
             ArrayList<String> a = new ArrayList();
             
             EventDao eventdao=new EventDaoImpl();
             ArrayList<PastEvent> pastevent=(ArrayList<PastEvent>)eventdao.getPastEvents(id);
             
             for(PastEvent p : pastevent)
             {
                 String name = "";
                 String pid = p.getPhotographerId();
                 PhotographerDao pDao = new PhotographerDaoImp();
                 Photographer photographer = pDao.getPhotographerById(pid);
                 name = photographer.getFname() + " " + photographer.getLname();
                 
                 
                    
                    
             }
        } catch (Exception e) {
        }
        
    }
}
