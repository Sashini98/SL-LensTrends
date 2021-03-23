/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.CartHasPhotographDaoImpl;
import Model.Dao.CartHasPhotographDao;
import Model.Photograph;
import Model.cart_has_photograph;
import com.google.gson.Gson;
import com.sun.org.apache.bcel.internal.generic.AASTORE;
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
public class CartDetails extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String clentId = request.getParameter("clientId");

            CartHasPhotographDao chpd = new CartHasPhotographDaoImpl();
            ArrayList<Photograph> cartItems = chpd.getCartItems(clentId);
            
            Gson g = new Gson();
            String toJson = g.toJson(cartItems);
            response.getWriter().write(toJson);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
            

    }

}
