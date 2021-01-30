/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author kesh
 */
public class PurchaseInvoice {
    String invoice_id;
    Date date;
    Date time;
    double total;
    int photographId;
    String clientId;

    public PurchaseInvoice() {
    }

    public PurchaseInvoice(String invoice_id, Date date, Date time, double total, int photographId, String clientId) {
        this.invoice_id = invoice_id;
        this.date = date;
        this.time = time;
        this.total = total;
        this.photographId = photographId;
        this.clientId = clientId;
    }

    public String getInvoice_id() {
        return invoice_id;
    }

    public void setInvoice_id(String invoice_id) {
        this.invoice_id = invoice_id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getPhotographId() {
        return photographId;
    }

    public void setPhotographId(int photographId) {
        this.photographId = photographId;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }
    
}
