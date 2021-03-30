/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Photograph;
import java.sql.SQLDataException;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public interface ModalReleaseDao {
    
    public void addModalrelease(int photoid,String Modpath) throws SQLException;
    
}
