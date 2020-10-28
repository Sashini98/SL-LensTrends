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
 * @author ASUS
 */
public class CancellingPhotographerUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String canceloption = request.getParameter("canceledit");

        if (canceloption == "fname") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select Fname from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String userfname = searchresult.getString("Fname");
                response.getWriter().write(userfname);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption == "lname") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select Lname from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String userlname = searchresult.getString("Lname");
                response.getWriter().write(userlname);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption == "uname") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select Email from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String useremail = searchresult.getString("Email");
                response.getWriter().write(useremail);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption == "mnum") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select Mobile from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String usermnum = searchresult.getString("Mobile");
                response.getWriter().write(usermnum);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption == "web") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select Website from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String userweb = searchresult.getString("Website");
                response.getWriter().write(userweb);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption == "biotext") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select bio from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String userbio = searchresult.getString("bio");
                response.getWriter().write(userbio);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption == "interest") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select FieldofInterest from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String userinterest = searchresult.getString("FieldofInterest");
                response.getWriter().write(userinterest);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption == "address") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select Address_No from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String useraddress = searchresult.getString("Address_No");
                response.getWriter().write(useraddress);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption == "city") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select City from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String usercity = searchresult.getString("City");
                response.getWriter().write(usercity);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption == "province") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select Province from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String userprovince = searchresult.getString("Province");
                response.getWriter().write(userprovince);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption == "postal") {
            try {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                String photographerId = p.getPhotographerId();
                ResultSet searchresult = DB.search("select PostalCode from Photographer where Photographer_Id ='" + photographerId + "'");
                searchresult.next();
                String userpostal = searchresult.getString("PostalCode");
                response.getWriter().write(userpostal);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

    }
}
