/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PurchaseInvoiceDaoImpl;
import Model.Client;
import Model.Dao.PurchaseInvoiceDao;
import Model.PurchaseInvoice;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class PurchaceHistoryDetails extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Client client  = (Client)request.getSession().getAttribute("loggedClient");
            
            PurchaseInvoiceDao purchaseInvoiceDao = new PurchaseInvoiceDaoImpl();
            ArrayList<PurchaseInvoice> purchacedPhotos = purchaseInvoiceDao.getPurchacedPhotos(client.getClientId());
            
            request.setAttribute("PurchaceHistoryDetails", purchacedPhotos);
            request.getRequestDispatcher("/View/User/purchasehistory.jsp").forward(request, response);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

}
