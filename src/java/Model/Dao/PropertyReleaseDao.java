/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.ModalRelease;
import Model.Photograph;
import Model.PropertyRelease;
import java.sql.SQLDataException;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public interface PropertyReleaseDao {
    public void addPropertyrelease(int photoid, String Propath) throws SQLException;
    public void deleteProp(int photoid, String path) throws SQLDataException;
    public PropertyRelease getpropertylease(int PhotographId) throws SQLException;
}
