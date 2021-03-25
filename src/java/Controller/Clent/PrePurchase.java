/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PurchaseInvoiceDaoImpl;
import Model.Client;
import Model.Photograph;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
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
public class PrePurchase extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            Client c = (Client) request.getSession().getAttribute("loggedClient");
            Photograph p = (Photograph) request.getSession().getAttribute("photo");

            PurchaseInvoiceDaoImpl daoImpl = new PurchaseInvoiceDaoImpl();
            String newInvoiceId = daoImpl.getNewInvoiceId();
            
            JsonObject jo = new JsonObject();
            jo.addProperty("sandbox", Boolean.TRUE);
            jo.addProperty("merchant_id", "1214228");
            jo.addProperty("return_url", "undefined");
            jo.addProperty("cancel_url", "undefined");
            jo.addProperty("notify_url",  "http://sample.com/notify");
            jo.addProperty("order_id", newInvoiceId);
            jo.addProperty("items", p.getTitle());
            jo.addProperty("amount", p.Price());
            jo.addProperty("currency", "LKR");
            jo.addProperty("first_name", c.getFname());
            jo.addProperty("last_name", c.getLname());
            jo.addProperty("email", c.getEmail());
            jo.addProperty("phone", "");
            jo.addProperty("address", c.getAddress_no());
            jo.addProperty("city", c.getCity());
            jo.addProperty("country", "Sri Lanka");
            
            response.getWriter().write(jo.toString());

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
