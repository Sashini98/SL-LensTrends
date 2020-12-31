/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.NotificationsDaoImpl;
import Model.Admin;
import Model.Dao.NotificationDao;
import Model.Notifications;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class SendNotifications extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String message = request.getParameter("msgbody");
        Date date = new Date();
        Date time = new Date();

        Notifications note = new Notifications();
        note.setTitle(title);
        note.setNotification(message);
        note.setNotify_date(date);
        note.setTime(time);

        String id = "";

        try {
            Admin a = (Admin) request.getSession().getAttribute("loggedAdmin");
            id = a.getAdminId();
            note.setAdmin_id(id);

            try {
                NotificationDao notificationDao = new NotificationsDaoImpl();
                notificationDao.addNotification(note);

            } catch (Exception e) {
                e.printStackTrace();
            }

            response.getWriter().write("Notification Send Successfully.");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("There is an error.");

        }

    }
}
