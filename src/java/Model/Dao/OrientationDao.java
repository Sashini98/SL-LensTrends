/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import java.sql.SQLException;

/**
 *
 * @author Madusha
 */
public interface OrientationDao {
    public String getOrientation(int id)throws SQLException;
    
}
