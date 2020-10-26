/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author kesh
 */
public class Admin {
         private int adminId;
     private String type;
     private String email;
     private String password;
     private Set notifications = new HashSet(0);

    public Admin() {
    }

	
    public Admin(int adminId) {
        this.adminId = adminId;
    }
    public Admin(int adminId, String type, String email, String password, Set notifications) {
       this.adminId = adminId;
       this.type = type;
       this.email = email;
       this.password = password;
       this.notifications = notifications;
    }
   
    public int getAdminId() {
        return this.adminId;
    }
    
    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public Set getNotifications() {
        return this.notifications;
    }
    
    public void setNotifications(Set notifications) {
        this.notifications = notifications;
    }
}
