/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import DB.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class DeactivateUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userid = request.getParameter("deactivate");
        
        try{
            char first = userid.charAt(0);
            
            if(first=='C'){
                DB.iud("UPDATE Client SET ActiveStatus = 0 where Client_Id = '"+ userid +"'");
            }else{
                DB.iud("UPDATE Photographer SET ActiveStatus = 0 where Photographer_Id = '"+ userid +"'");
            }
            
            response.getWriter().write("User Deactivated Successfully.");
            
        }catch(Exception e){
            response.getWriter().write("There is an error..");
            e.printStackTrace();
            
        }

    }

}
