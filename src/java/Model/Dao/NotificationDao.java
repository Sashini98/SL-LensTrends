/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Notifications;
import java.sql.SQLException;

/**
 *
 * @author Madusha
 */
public interface NotificationDao {
    
    public void addNotification(Notifications notifications) throws SQLException;
}
