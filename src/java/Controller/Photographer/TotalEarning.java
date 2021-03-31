/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PurchaseInvoiceDaoImpl;
import Model.Dao.PurchaseInvoiceDao;
import com.google.gson.Gson;
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
 * @author ASUS
 */
public class TotalEarning extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //        System.out.println(request.getParameter("pid"));
            String para = request.getParameter("pid");
            PurchaseInvoiceDao d = new PurchaseInvoiceDaoImpl();
            
            d.gettotalPurchacedimage(para);
//            ArrayList details = new ArrayList();
            
            Gson g = new Gson();
            String toJson = g.toJson(d.gettotalPurchacedimage(para));
            response.getWriter().write(toJson);
            
        } catch (SQLException ex) {
            Logger.getLogger(TotalEarning.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        
    }

}
