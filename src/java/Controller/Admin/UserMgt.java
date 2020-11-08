/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import DB.DB;
import com.google.gson.Gson;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class UserMgt extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("search");

        try {

            ResultSet client = DB.search("SELECT Client_Id, Fname, Lname FROM Client Where Email = '" + email + "' ");
            ResultSet photographer = DB.search("SELECT Photographer_Id, Fname, Lname FROM Photographer Where Email = '" + email + "' ");

            boolean clientAcc = client.next();
            boolean photographerAcc = photographer.next();

            ArrayList<String> a = new ArrayList();
            
            if (clientAcc && photographerAcc) {

                a.add(client.getString("Client_Id"));
                a.add(client.getString("Fname") + " " + client.getString("Lname") );
                a.add("Client");
                
                a.add(photographer.getString("Photographer_Id"));
                a.add(photographer.getString("Fname") + " " + client.getString("Lname"));
                a.add("Photographer");
                
            } else if (clientAcc) {

                a.add(client.getString("Client_Id"));
                a.add(client.getString("Fname") + " " + client.getString("Lname") );
                a.add("Client");
                
            } else if (photographerAcc) {

                a.add(photographer.getString("Photographer_Id"));
                a.add(photographer.getString("Fname") + " " + photographer.getString("Lname"));
                a.add("Photographer");               
            }
            
         
            Gson g = new Gson();
            String toJson = g.toJson(a);
            response.getWriter().write(toJson);

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (Exception e) {
        }
    }
}
