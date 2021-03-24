/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.CartHasPhotographDao;
import Model.Dao.PhotographDao;
import Model.Photograph;
import Model.cart_has_photograph;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author kesh
 */
public class CartHasPhotographDaoImpl implements CartHasPhotographDao {

    @Override
    public ArrayList<Photograph> getCartItems(String clientID) throws SQLException {

        ArrayList<Photograph> items = new ArrayList<>();
        ResultSet cartIdRes = DB.search("SELECT Cart_Id FROM cart WHERE Client_Id = '" + clientID + "';");

        if (cartIdRes.next()) {
            ResultSet cartItems = DB.search("SELECT Photograph_Id FROM cart_has_photograph WHERE Cart_Id = '" + cartIdRes.getInt("Cart_Id") + "'");
            PhotographDao pd = new PhotographDaoImpl();
            while (cartItems.next()) {

                int photoid = cartItems.getInt("Photograph_Id");
                items.add(pd.getPhotographById(photoid));

            }

        }
        return items;
    }

    @Override
    public int getCartItemCount(String clientID) throws SQLException {
        int itemCount = 0;

        ResultSet cartIdRes = DB.search("SELECT Cart_Id FROM cart WHERE Client_Id = '" + clientID + "';");

        if (cartIdRes.next()) {

            ResultSet cartItems = DB.search("SELECT COUNT(Photograph_Id) AS ItemCount FROM cart_has_photograph WHERE Cart_Id = '" + cartIdRes.getInt("Cart_Id") + "' GROUP BY Cart_Id;");
            if (cartItems.next()) {

                itemCount = cartItems.getInt("ItemCount");

            }

        }
        return itemCount;
    }

    @Override
    public void addCartItem(String clientID, int photoId) throws SQLException {

        ResultSet cartIdRes = DB.search("SELECT Cart_Id FROM cart WHERE Client_Id = '" + clientID + "';");
        if (cartIdRes.next()) {

            int cartId = cartIdRes.getInt("Cart_Id");
            DB.iud("INSERT INTO cart_has_photograph (Cart_Id,Photograph_Id) VALUES ('" + cartId + "', '" + photoId + "')");

        } else {
            ResultSet lastCartId = DB.search("SELECT Cart_Id FROM cart ORDER BY Cart_Id DESC LIMIT 1;");

            int cid;
            if (lastCartId.next()) {
                cid = lastCartId.getInt("Cart_Id");
                cid += 1;
            } else {
                cid = 1;
            }

            DB.iud("INSERT INTO cart(Cart_Id,Client_Id) VALUES ('" + cid + "','" + clientID + "')");

            DB.iud("INSERT INTO cart_has_photograph (Cart_Id,Photograph_Id) VALUES ('" + cid + "', '" + photoId + "')");

        }

    }

}
