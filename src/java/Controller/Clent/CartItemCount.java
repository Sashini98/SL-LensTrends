/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.CartHasPhotographDaoImpl;
import Model.Dao.CartHasPhotographDao;
import Model.Photograph;
import java.io.IOException;
import java.io.PrintWriter;
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
public class CartItemCount extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String clentId = request.getParameter("ClientId");
            
            CartHasPhotographDao chpd = new CartHasPhotographDaoImpl();
            int cartItems = chpd.getCartItemCount(clentId);

            response.getWriter().write(cartItems + "");
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    }


}
