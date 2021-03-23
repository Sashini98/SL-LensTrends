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
            ResultSet cartItems = DB.search("SELECT cart_has_photograph FROM cart WHERE Cart_Id = '" + cartIdRes.getInt("cartIdRes") + "'");
            while (cartItems.next()) {
                
                int photoid = cartItems.getInt("Photograph_Id");
                PhotographDao pd = new PhotographDaoImpl();
                Photograph photographById = pd.getPhotographById(photoid);
                items.add(photographById);
                
            }

        }
        return items;
    }

}
