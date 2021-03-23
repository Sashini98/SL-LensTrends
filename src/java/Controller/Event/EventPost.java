/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Event;

import Controller.DaoImpl.EventDaoImpl;
import Model.Client;
import Model.Dao.EventDao;
import Model.Event;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;
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
public class EventPost extends HttpServlet {

    

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("hi");
        String name=request.getParameter("name");
        String type=request.getParameter("type");
        String date=request.getParameter("dob");
        String time=request.getParameter("time");
        String hall=request.getParameter("hall");
        String venue=request.getParameter("venue");
        String street=request.getParameter("street");
        String city=request.getParameter("city");
        String province=request.getParameter("province");
             
              
        Event eve=new Event();
        eve.seteventName(name);
        eve.settype(type);
        eve.seteventDate(date);
        eve.seteventTate(time);
        eve.sethallNo(hall);
        eve.setvenue(venue);
        eve.setstreet(street);
        eve.setcity(city);
        eve.setprovince(province);      
        
        
        EventDao eventdao=new EventDaoImpl();
        
         Client c = (Client) request.getSession().getAttribute("loggedClient");
         String cid = c.getClientId();
         eve.setclientId(cid);
         
        try {
            eventdao.addEvent(eve);
        } catch (SQLException ex) {
            
        }
        
        response.sendRedirect("View/Events/postEvents2.jsp");
        
        
        
        
    }

    

}
