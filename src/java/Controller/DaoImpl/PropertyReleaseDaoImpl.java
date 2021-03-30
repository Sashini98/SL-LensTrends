/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PropertyReleaseDao;
import Model.Photograph;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class PropertyReleaseDaoImpl implements PropertyReleaseDao{
    
    @Override
    public void addPropertyrelease(Photograph photoid, String Propath) throws SQLException {
       DB.iud("INSERT INTO property_release (Form_Path,Photograph_Id) VALUES('"+ Propath +"','"+ photoid.getId() +"')");
    } 
}
