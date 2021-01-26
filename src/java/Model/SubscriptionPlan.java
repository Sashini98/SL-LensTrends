/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Madusha
 */
public class SubscriptionPlan {
    
    int pid;
    String pname;
    double price;
    Date time;

    public SubscriptionPlan() {
    }

    public SubscriptionPlan(int pid, String pname, double price, Date time) {
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        this.time = time;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
    
    
}
