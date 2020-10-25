/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import DB.DB;
import DbClasses.Client;
import DbClasses.Photographer;
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

            if (clientAcc && photographerAcc) {
                ArrayList<Client> clientList = (ArrayList) request.getAttribute("clientList");
                ArrayList<Photographer> photographerList = (ArrayList) request.getAttribute("photographerList");

            } else if (clientAcc) {

                Client c = new Client();
                c.getClientId();
                c.getEmail();
                c.getPassword();
                c.getFname();
                c.getLname();
                c.getAddress_no();
                c.getStreet();
                c.getCity();
                c.getGenderId();

            } else if (photographerAcc) {
                Photographer p = new Photographer();
                p.getPhotographerId();
                p.getEmail();
                p.getPassword();
                p.getFname();
                p.getLname();
                p.getAddress_no();
                p.getStreet();
                p.getCity();
                p.getGenderId();
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (Exception e) {
        }
    }
}
