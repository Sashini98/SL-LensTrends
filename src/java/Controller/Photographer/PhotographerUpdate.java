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
        String email = request.getParameter("useremail");
        String mnum = request.getParameter("usermnum");
        String web = request.getParameter("userweb");
        String bio = request.getParameter("userbio");
        String interest = request.getParameter("userinterest");
        String address = request.getParameter("useraddress");
        String city = request.getParameter("usercity");
        String province = request.getParameter("userprovince");
        String zip = request.getParameter("userzip");
        int postal = 0;
        if (zip != null) {
            postal = Integer.parseInt(zip);

        }

        Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
        String photographerId = p.getPhotographerId();
        
        if (fname != null) {
            try {
                DB.iud("update Photographer set Fname='" + fname + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("First Name Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating First Name");
                ex.printStackTrace();
            }

        } else if (lname != null) {
            try {
                DB.iud("update Photographer set Lname='" + lname + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("Last Name Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Last Name");
                ex.printStackTrace();
            }

        } else if (email != null) {
            try {
                DB.iud("update Photographer set Email='" + email + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("Email Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Email");
                ex.printStackTrace();
            }

        } else if (mnum != null) {
            try {
                DB.iud("update Photographer set Mobile='" + mnum + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("Mobile Number Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Mobile Number");
                ex.printStackTrace();
            }

        } else if (web != null) {
            try {
                DB.iud("update Photographer set Website='" + web + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("Website Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Website");
                ex.printStackTrace();
            }

        } else if (bio != null) {
            try {
                DB.iud("update Photographer set bio='" + bio + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("You Bio Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Your Bio");
                ex.printStackTrace();
            }

        } else if (interest != null) {
            try {
                DB.iud("update Photographer set FieldofInterest='" + interest + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("Your Field of interest Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Field of interest");
                ex.printStackTrace();
            }

        } else if (address != null) {
            try {
                DB.iud("update Photographer set Address_No='" + address + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("Address Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Address");
                ex.printStackTrace();
            }

        } else if (city != null) {
            try {
                DB.iud("update Photographer set City'" + city + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("City Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating City");
                ex.printStackTrace();
            }

        } else if (province != null) {
            try {
                DB.iud("update Photographer set Province'" + province + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("Province Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Province");
                ex.printStackTrace();
            }

        } else if (zip != null) {
            try {
                DB.iud("update Photographer set PostalCode'" + postal + "' where Photographer_Id = '" + photographerId + "'");
                response.getWriter().write("Postal code Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Postal code");
                ex.printStackTrace();
            }
        }
    }

}
