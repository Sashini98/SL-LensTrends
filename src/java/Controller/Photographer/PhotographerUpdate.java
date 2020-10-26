/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import DB.DB;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
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
public class PhotographerUpdate extends HttpServlet {



    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fname = request.getParameter("userfname");
        String lname = request.getParameter("userlname");
        if ( !fname.equals(null) ) {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                int photographerId = p.getPhotographerId();
                DB.iud("update Photographer set Fname='"+fname+"' where Photographer_Id = '"+photographerId+"'");
                response.getWriter().write("First Name Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating First Name");
                ex.printStackTrace();
            }
            
        }
    }

 
}
