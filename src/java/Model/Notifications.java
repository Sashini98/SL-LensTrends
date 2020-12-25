/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Time;
import java.util.Date;

/**
 *
 * @author Madusha
 */
public class Notifications {
    
    int notifyId;
    String title;
    String notification;
    Date notify_date;
    Date time;
    String admin_id;

    public Notifications() {
    }

    public Notifications(int notifyId, String title, String notification, Date notify_date, Date time, String admin_id) {
        this.notifyId = notifyId;
        this.title = title;
        this.notification = notification;
        this.notify_date = notify_date;
        this.time = time;
        this.admin_id = admin_id;
    }
    
    public String getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(String admin_id) {
        this.admin_id = admin_id;
    }

    public int getNotifyId() {
        return notifyId;
    }

    public void setNotifyId(int notifyId) {
        this.notifyId = notifyId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getNotification() {
        return notification;
    }

    public void setNotification(String notification) {
        this.notification = notification;
    }

    public Date getNotify_date() {
        return notify_date;
    }

    public void setNotify_date(Date notify_date) {
        this.notify_date = notify_date;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
    
    
}
