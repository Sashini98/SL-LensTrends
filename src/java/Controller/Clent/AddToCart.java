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
public class AddToCart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int photoId = Integer.parseInt(req.getParameter("no"));

            Client client = (Client) req.getSession().getAttribute("loggedClient");

            CartHasPhotographDao chpd = new CartHasPhotographDaoImpl();
            ArrayList<Photograph> cartItems = chpd.getCartItems(client.getClientId());

            boolean cartContains = false;

            for (Photograph cartItem : cartItems) {
                if (cartItem.getId() == photoId) {
                    req.getSession().setAttribute("errorInCart", "Image is already added!");
                    cartContains = true;
                }
            }

            if (!cartContains) {
                CartHasPhotographDao dao = new CartHasPhotographDaoImpl();
                dao.addCartItem(client.getClientId(), photoId);
            }
            
            resp.sendRedirect("/GroupProject/View/User/Cart.jsp");

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }
}
