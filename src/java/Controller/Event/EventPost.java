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

        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String date = request.getParameter("dob");
        String time = request.getParameter("time") + ":00";
        String hall = request.getParameter("hall");
        String venue = request.getParameter("venue");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String province = request.getParameter("province");
        String description = request.getParameter("desc");

        Event eve = new Event();
        eve.seteventName(name);
        eve.settype(type);
        eve.seteventDate(date);
        eve.seteventTate(time);
        eve.sethallNo(hall);
        eve.setvenue(venue);
        eve.setstreet(street);
        eve.setcity(city);
        eve.setprovince(province);
        eve.setdescription(description);
        System.out.println("de" + description);

        EventDao eventdao = new EventDaoImpl();
        try {
            System.out.println("1");
            String id = eventdao.getLastId();
            String new_id;
            if (id != null) {
                String[] parts = id.split("e");
                String row = parts[1];
                int lastId = Integer.parseInt(row);
                int newId = lastId + 1;
                new_id = Integer.toString(newId);
                new_id = "e" + new_id;

            } else {
                new_id = "e1";
            }
            System.out.println(""+new_id);
            eve.seteventId(new_id);

            Client c = (Client) request.getSession().getAttribute("loggedClient");
            String cid = c.getClientId();
            eve.setclientId(cid);
            System.out.println("cis"+cid);

            eventdao.addEvent(eve);
            System.out.println("added");

        } catch (SQLException ex) {

        }
        String eid = "";

        try {
            eid = eventdao.getLastId();
            System.out.println("eid");

        } catch (SQLException ex) {

        }

        request.setAttribute("eid", eid);

        request.getRequestDispatcher("View/Events/PostEvent2.jsp").forward(request, response);

    }

}
