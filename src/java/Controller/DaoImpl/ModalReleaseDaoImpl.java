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
    public void addModalrelease(Photograph photoid, String Modpath) throws SQLException {
        DB.iud("INSERT INTO model_release (Form_Path,Photograph_Id) VALUES('"+ Modpath +"','"+ photoid.getId() +"')");
    }

    @Override
    public ModalRelease getModalrelease(int photoid) throws SQLException {
        return null;
         
    }

    

}
