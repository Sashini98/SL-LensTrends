/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.CartHasPhotographDaoImpl;
import Model.Client;
import Model.Dao.CartHasPhotographDao;
import Model.Photograph;
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
public class AddToCart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int photoId = Integer.parseInt(req.getParameter("no"));
            
            Client client = (Client) req.getSession().getAttribute("loggedClient");
            
            CartHasPhotographDao chpd = new CartHasPhotographDaoImpl();
            ArrayList<Photograph> cartItems = chpd.getCartItems(client.getClientId());
            
            for (Photograph cartItem : cartItems) {
                if (cartItem.getId() == photoId) {
                    req.setAttribute("error", "Image is already added!");
                } else {
                    CartHasPhotographDao dao = new CartHasPhotographDaoImpl();
                    dao.addCartItem(client.getClientId(), photoId);
                }

            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }
}
