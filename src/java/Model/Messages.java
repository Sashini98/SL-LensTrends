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
public class Messages {
    
    int messageId;
    String message;
    String name;
    String email;
    Date message_date;
    String mobile;
    Time time;

    public Messages() {
    }

    public Messages(int messageId, String message, String name, String email, Date message_date, String mobile, Time time) {
        this.messageId = messageId;
        this.message = message;
        this.name = name;
        this.email = email;
        this.message_date = message_date;
        this.mobile = mobile;
        this.time = time;
    }

    public int getMessageId() {
        return messageId;
    }

    public void setMessageId(int messageId) {
        this.messageId = messageId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getMessage_date() {
        return message_date;
    }

    public void setMessage_date(Date message_date) {
        this.message_date = message_date;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }
    
    
    
}

