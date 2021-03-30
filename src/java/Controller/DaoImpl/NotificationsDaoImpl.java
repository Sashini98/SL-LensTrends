/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.NotificationDao;
import Model.Notifications;
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
        DB.iud("SELECT * FROM notification WHERE ");
        return  
    }

    @Override
    public ArrayList<Notifications> getNotificationofClient() throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Notifications> getNotificationofPhotographer() throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
