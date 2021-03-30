/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.ModalRelease;
import Model.Photograph;
import java.sql.SQLDataException;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS
 */
public interface ModalReleaseDao {
    
    public void addModalrelease(int photoid,String Modpath) throws SQLException;
    public ModalRelease getModalrelease(int PhotographId) throws SQLException;
}
