/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.NotificationDao;
import Model.Notifications;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Madusha
 */
public class NotificationsDaoImpl implements NotificationDao {

    @Override
    public void addNotification(Notifications notifications) throws SQLException {

        Date date = notifications.getNotify_date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String d = sdf.format(date);

        Date time = notifications.getTime();
        SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
        String t = sdf2.format(time);
        
        DB.iud("INSERT INTO notification ( title, message, date,time, Admin_id) VALUES ( '" + notifications.getTitle() + "', '" + notifications.getNotification() + "', '" + d + "','" + t + "', '" + notifications.getAdmin_id() + "');");
    }

    @Override
    public ArrayList<Notifications> getNotificationofBoth() throws SQLException {
        ResultSet search = DB.search("SELECT * FROM notification WHERE Notification_type_id = 3");
        ArrayList<Notifications> noti = new ArrayList<>();
        while (search.next()) {
            Notifications n = new Notifications();
            n.setNotifyId(search.getInt("id"));
            n.setTitle(search.getString("title"));
            n.setNotification(search.getString("message"));
            n.setNotify_date(search.getDate("date"));
            n.setTime(search.getDate("time"));
            n.setAdmin_id(search.getString("Admin_id"));
            n.setNotification_type_id(search.getInt("Notification_type_id"));
            
        }
        
        return  noti;
    }

    @Override
    public ArrayList<Notifications> getNotificationofClient() throws SQLException {
        ResultSet search = DB.search("SELECT * FROM notification WHERE Notification_type_id = 1");
        ArrayList<Notifications> noti = new ArrayList<>();
        while (search.next()) {
            Notifications n = new Notifications();
            n.setNotifyId(search.getInt("id"));
            n.setTitle(search.getString("title"));
            n.setNotification(search.getString("message"));
            n.setNotify_date(search.getDate("date"));
            n.setTime(search.getDate("time"));
            n.setAdmin_id(search.getString("Admin_id"));
            n.setNotification_type_id(search.getInt("Notification_type_id"));
            
        }
        
        return  noti;
    }

    @Override
    public ArrayList<Notifications> getNotificationofPhotographer() throws SQLException {
        ResultSet search = DB.search("SELECT * FROM notification WHERE Notification_type_id = 2");
        ArrayList<Notifications> noti = new ArrayList<>();
        while (search.next()) {
            Notifications n = new Notifications();
            n.setNotifyId(search.getInt("id"));
            n.setTitle(search.getString("title"));
            n.setNotification(search.getString("message"));
            n.setNotify_date(search.getDate("date"));
            n.setTime(search.getDate("time"));
            n.setAdmin_id(search.getString("Admin_id"));
            n.setNotification_type_id(search.getInt("Notification_type_id"));
            
        }
        
        return  noti;
    }

}
