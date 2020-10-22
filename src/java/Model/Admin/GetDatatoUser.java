/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Admin;

import DB.DB;
import DbClasses.Client;
import DbClasses.Photographer;
import DbClasses.Users;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Madusha
 */
public class GetDatatoUser {

    public Users checkUserDetails(String email) {

        try {

            ResultSet client = DB.search("SELECT * FROM Client Where Email = '" + email + "' ");

            if (client.next()) {
                Client c = new Client();
                c.setClientId(client.getInt("Client_Id"));
                c.setEmail(client.getString("Email"));
                c.setPassword(client.getString("Password"));
                c.setFname(client.getString("Fname"));
                c.setLname(client.getString("Lname"));
                c.setAddress_no(client.getString("Address_No"));
                c.setStreet(client.getString("Street"));
                c.setCity(client.getString("City"));
                c.setGenderId(client.getInt("Gender_Id"));

                return c;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (NullPointerException e) {

            try {
                ResultSet photographer = DB.search("SELECT * FROM Photographer Where Email = '" + email + "' ");

                if (photographer.next()) {
                    Photographer p = new Photographer();
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

                    return p;
                }
            } catch (SQLException ex) {
                
                ex.printStackTrace();
            }
        }

        return new Users();
    }

}
