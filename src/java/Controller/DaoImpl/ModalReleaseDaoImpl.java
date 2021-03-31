/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.ModalReleaseDao;
import Model.ModalRelease;
import Model.Photograph;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.sql.SQLException;
import java.util.List;
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
public class ModalReleaseDaoImpl implements ModalReleaseDao {

    @Override
    public void addModalrelease(int photoid, String Modpath) throws SQLException {
        DB.iud("INSERT INTO model_release (Form_Path,Photograph_Id) VALUES('" + Modpath + "','" + photoid + "')");
    }

    @Override
    public ModalRelease getModalrelease(int PhotographId) throws SQLException {
        ResultSet release = DB.search("SELECT * FROM model_release WHERE Photograph_Id = '" + PhotographId + "'");
        if (release.next()) {
            ModalRelease m = new ModalRelease();
            m.setId(release.getInt("Release_Id"));
            m.setPath(release.getString("Form_Path"));
            m.setPhotographId(release.getInt("Photograph_Id"));

            return m;

        } else {
            return null;
        }

    }

    @Override
    public void deleteModal(int photoid, String path) throws SQLDataException {

        try {
            File myObj = new File(path);
            myObj.delete();
            DB.iud("DELETE FROM model_release WHERE Photograph_Id = '" + photoid + "'");
        } catch (SQLException ex) {
            Logger.getLogger(ModalReleaseDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
