/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.CartHasPhotographDao;
import Model.cart_has_photograph;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author kesh
 */
public class CartHasPhotographDaoImpl implements CartHasPhotographDao{

    @Override
    public ArrayList<cart_has_photograph> getCartItems(String clientID) throws SQLException {
        
        ResultSet cartIdRes = DB.search("SELCET Cart_Id FROM cart WHERE Client_Id = '"+ clientID +"'");
        
        if (true) {
            
        }
        return new ArrayList<>();
    }
    
}
