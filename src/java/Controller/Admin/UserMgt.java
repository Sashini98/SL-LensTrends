/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import DB.DB;
import Model.Client;
import Model.Photographer;
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

        String email = request.getParameter("searchBar");

        try {

            ResultSet client = DB.search("SELECT * FROM Client Where Email = '" + email + "' ");
            ResultSet photographer = DB.search("SELECT * FROM Photographer Where Email = '" + email + "' ");

            boolean clientAcc = client.next();
            boolean photographerAcc = photographer.next();
            Client c = new Client();
            Photographer p = new Photographer();
            ArrayList a = new ArrayList();

            if (clientAcc && photographerAcc) {

                c.setClientId(client.getInt("Client_Id"));
                c.setEmail(client.getString("Email"));
                c.setPassword(client.getString("Password"));
                c.setFname(client.getString("Fname"));
                c.setLname(client.getString("Lname"));
                c.setAddress_no(client.getString("Address_No"));
                c.setStreet(client.getString("Street"));
                c.setCity(client.getString("City"));
                c.setGenderId(client.getInt("Gender_Id"));

                p.setPhotographerId(photographer.getInt("Photographer_Id"));
                p.setEmail(photographer.getString("Email"));
                p.setPassword(photographer.getString("Password"));
                p.setFname(photographer.getString("Fname"));
                p.setLname(photographer.getString("Lname"));
                p.setAddress_no(photographer.getString("Address_No"));
                p.setStreet(photographer.getString("Street"));
                p.setCity(photographer.getString("City"));
                p.setJoined_date(photographer.getDate("Joined_Date"));
                p.setGenderId(photographer.getInt("Gender_Id"));
                p.setPlanId(photographer.getInt("Plan_Id"));

            } else if (clientAcc) {

                c.setClientId(client.getInt("Client_Id"));
                c.setEmail(client.getString("Email"));
                c.setPassword(client.getString("Password"));
                c.setFname(client.getString("Fname"));
                c.setLname(client.getString("Lname"));
                c.setAddress_no(client.getString("Address_No"));
                c.setStreet(client.getString("Street"));
                c.setCity(client.getString("City"));
                c.setGenderId(client.getInt("Gender_Id"));

            } else if (photographerAcc) {

                p.setPhotographerId(photographer.getInt("Photographer_Id"));
                p.setEmail(photographer.getString("Email"));
                p.setPassword(photographer.getString("Password"));
                p.setFname(photographer.getString("Fname"));
                p.setLname(photographer.getString("Lname"));
                p.setAddress_no(photographer.getString("Address_No"));
                p.setStreet(photographer.getString("Street"));
                p.setCity(photographer.getString("City"));
                p.setJoined_date(photographer.getDate("Joined_Date"));
                p.setGenderId(photographer.getInt("Gender_Id"));
                p.setPlanId(photographer.getInt("Plan_Id"));

            }

            a.add(c);
            a.add(p);

            Gson g = new Gson();
            String toJson = g.toJson(a);
            response.getWriter().write(toJson);

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (Exception e) {
        }
    }
}
