/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.OrientationDao;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Madusha
 */
public class OrientationdaoImpl implements OrientationDao{

    @Override
    public String getOrientation(int id) throws SQLException {
       ResultSet orientation = DB.search("SELECT Orientation FROM orientation WHERE Orientation_Id = '" + id + "'");
        
        if (orientation.next()) {
            return orientation.getString("Orientation");
        } else {
            return null;
        }
    
    }
    
}
