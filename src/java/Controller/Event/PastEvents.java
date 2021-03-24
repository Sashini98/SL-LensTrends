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
import Model.Event;
import Model.PastEvent;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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

            int i = 0;
            Client c = (Client) request.getSession().getAttribute("loggedClient");
            String id = c.getClientId();
            System.out.println("cid" + id);

            ArrayList<String> a = new ArrayList();

            EventDao eventdao = new EventDaoImpl();
            ArrayList pastEventList = (ArrayList) eventdao.getPastEventList(id);

            for (i = 0; i < pastEventList.size(); i++) {
                String eId = (String) pastEventList.get(i);
                ArrayList<PastEvent> pastevent = (ArrayList<PastEvent>) eventdao.getPastEvents(eId);

                for (PastEvent p : pastevent) {
                    String name = "";
                    String pid = p.getPhotographerId();
                    PhotographerDao pDao = new PhotographerDaoImp();
                    Photographer photographer = pDao.getPhotographerById(pid);
                    name = photographer.getFname() + " " + photographer.getLname();
                    System.out.println("name" + name);

                    ArrayList<Event> events = (ArrayList<Event>) eventdao.getEvents(p.geteventId());
                    System.out.println("id"+p.geteventId());
                            

                    for (Event e : events) {
                        a.add(e.geteventDate());
                        System.out.println("date111"+e.geteventDate());

                        a.add(e.getvenue());

                    }

                    a.add(name);

                }
                System.out.println("aa"+a);

                
            }
            
            request.setAttribute("event", a);
            System.out.println("a"+a);
                request.getRequestDispatcher("View/Events/PastEvent-single.jsp").forward(request, response);
        } catch (Exception e) {
        }

    }
}
