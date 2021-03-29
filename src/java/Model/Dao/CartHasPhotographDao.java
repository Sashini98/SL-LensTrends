/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Photograph;
import Model.cart_has_photograph;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author kesh
 */
public interface CartHasPhotographDao {

    public ArrayList<Photograph> getCartItems(String clientID) throws SQLException;

    public int getCartItemCount(String clientID) throws SQLException;

    public void addCartItem(String clientID, int photoId) throws SQLException;

    public void deleteClientCart(String clientId) throws SQLException;

}
