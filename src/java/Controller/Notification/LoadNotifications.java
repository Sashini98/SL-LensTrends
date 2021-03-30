/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Notification;

import Controller.DaoImpl.NotificationsDaoImpl;
import Model.Dao.NotificationDao;
import Model.Notifications;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class LoadNotifications extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String logged = request.getParameter("logged");
        ArrayList<Notifications> noti = new ArrayList<>();

        try {
            if (logged.equals("client") || logged.equals("nl")) {
                NotificationDao dao = new NotificationsDaoImpl();
                ArrayList<Notifications> notificationofBoth = dao.getNotificationofBoth();
                ArrayList<Notifications> notificationofClient = dao.getNotificationofClient();

                noti.addAll(notificationofBoth);
                noti.addAll(notificationofClient);

            } else if (logged.equals("photographer")) {
                NotificationDao dao = new NotificationsDaoImpl();
                ArrayList<Notifications> notificationofBoth = dao.getNotificationofBoth();
                ArrayList<Notifications> notificationofPhotographer = dao.getNotificationofPhotographer();

                noti.addAll(notificationofBoth);
                noti.addAll(notificationofPhotographer);

            }

            Collections.sort(noti, new Comparator<Notifications>() {
                public int compare(Notifications o1, Notifications o2) {
                    if (o1.getNotify_date() == null || o2.getNotify_date() == null) {
                        return 0;
                    }
                    return o1.getNotify_date().compareTo(o2.getNotify_date());
                }
            });
            
            request.setAttribute("data", noti);
            request.getRequestDispatcher("/View/Notifications/NotificationsHomeTemp.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoadNotifications.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
