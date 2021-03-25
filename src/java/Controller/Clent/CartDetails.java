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
public class CartDetails extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String clentId = request.getParameter("clientId");

            CartHasPhotographDao chpd = new CartHasPhotographDaoImpl();
            ArrayList<Photograph> cartItems = chpd.getCartItems(clentId);

            request.setAttribute("cartItems", cartItems);
            request.getRequestDispatcher("View/User/CartTemplate.jsp").forward(request, response);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
       
    }

}
