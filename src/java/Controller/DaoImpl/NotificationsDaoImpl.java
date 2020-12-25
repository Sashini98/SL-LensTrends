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
import java.util.Date;

/**
 *
 * @author Madusha
 */
public class NotificationsDaoImpl implements NotificationDao{

    @Override
    public void addNotification(Notifications notifications) throws SQLException {
        DB.iud("INSERT INTO notification ( title, message, date,time, Admin_id) VALUES ( '"+notifications.getTitle()+"', '"+ notifications.getNotification()+"', '"+notifications.getNotify_date()+"','"+notifications.getTime()+"', '"+notifications.getAdmin_id()+"');");
    }

}
