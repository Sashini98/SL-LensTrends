/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PropertyReleaseDao;
import Model.Photograph;
import Model.PropertyRelease;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class PropertyReleaseDaoImpl implements PropertyReleaseDao {

    @Override
    public void addPropertyrelease(int photoid, String Propath) throws SQLException {
        DB.iud("INSERT INTO property_release (Form_Path,Photograph_Id) VALUES('" + Propath + "','" + photoid + "')");
    }

    @Override
    public void deleteProp(int photoid, String path) throws SQLDataException {

        try {
            File myObj = new File(path);
            myObj.delete();
            DB.iud("DELETE FROM property_release WHERE Photograph_Id = '" + photoid + "'");
        } catch (SQLException ex) {
            Logger.getLogger(ModalReleaseDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public PropertyRelease getpropertylease(int PhotographId) throws SQLException {
        ResultSet release = DB.search("SELECT * FROM property_release WHERE Photograph_Id = '" + PhotographId + "'");
        if (release.next()) {
            PropertyRelease p = new PropertyRelease();
            p.setId(release.getInt("Release_Id"));
            p.setPath(release.getString("Form_Path"));
            p.setPhotographeId(release.getInt("Photograph_Id"));

            return p;
        } 
        return null;
    }
}
