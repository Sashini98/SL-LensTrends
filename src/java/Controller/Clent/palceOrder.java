/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PurchaseInvoiceDaoImpl;
import Model.Client;
import Model.Dao.PurchaseInvoiceDao;
import Model.Photograph;
import Model.PurchaseInvoice;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
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
public class palceOrder extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            Photograph photo = (Photograph) request.getSession().getAttribute("photo");
            Client client = (Client) request.getSession().getAttribute("loggedClient");
            String invoiceId = (String) request.getSession().getAttribute("invoiceId");
            
            PurchaseInvoice pi = new PurchaseInvoice();
            pi.setInvoice_id(invoiceId);
            pi.setDate(new Date());
            pi.setTime(new Date());
            pi.setTotal(photo.Price());
            pi.setPhotograph(photo);
            pi.setClientId(client.getClientId());
            
            PurchaseInvoiceDao dao = new PurchaseInvoiceDaoImpl();
            dao.setPurchasedImage(pi);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        
    }


}
