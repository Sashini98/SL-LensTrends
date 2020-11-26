/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import java.io.IOException;
import java.sql.SQLException;
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
        String province = request.getParameter("province");
        String zip = request.getParameter("userzip");
        int postal = 0;
        if (zip != null) {
            postal = Integer.parseInt(zip);

        }

        Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
        String photographerId = p.getPhotographerId();
        PhotographerDao photographerDao = new PhotographerDaoImp();

        if (fname != null) {
            try {
                
                photographerDao.updatePhotographerFname(fname, photographerId);
                response.getWriter().write("First Name Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating First Name");
                ex.printStackTrace();
            }

        } else if (lname != null) {
            try {
                photographerDao.updatePhotographerLname(lname, photographerId);
                response.getWriter().write("Last Name Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Last Name");
                ex.printStackTrace();
            }

        } else if (email != null) {
            try {
                photographerDao.updatePhotographerEmail(email, photographerId);
                response.getWriter().write("Email Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Email");
                ex.printStackTrace();
            }

        } else if (mnum != null) {
            try {
                photographerDao.updatePhotographerMobile(mnum, photographerId);
                response.getWriter().write("Mobile Number Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Mobile Number");
                ex.printStackTrace();
            }

        } else if (web != null) {
            try {
                photographerDao.updatePhotographerWebsite(web, photographerId);
                response.getWriter().write("Website Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Website");
                ex.printStackTrace();
            }

        } else if (bio != null) {
            try {
                photographerDao.updatePhotographerBio(bio, photographerId);
                response.getWriter().write("You Bio Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Your Bio");
                ex.printStackTrace();
            }

        } else if (interest != null) {
            try {
                photographerDao.updatePhotographerFieldOfInterest(interest, photographerId);
                response.getWriter().write("Your Field of interest Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Field of interest");
                ex.printStackTrace();
            }

        } else if (address != null) {
            try {
                photographerDao.updatePhotographerAddressNo(address, photographerId);
                response.getWriter().write("Address Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Address");
                ex.printStackTrace();
            }

        } else if (city != null) {
            try {
                photographerDao.updatePhotographerCity(city, photographerId);
                response.getWriter().write("City Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating City");
                ex.printStackTrace();
            }

        } else if (province != null) {
            try {
                photographerDao.updatePhotographerProvince(province, photographerId);
                response.getWriter().write("Province Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Province");
                ex.printStackTrace();
            }

        } else if (zip != null) {
            try {
                photographerDao.updatePhotographerPostalCode(postal, photographerId);
                response.getWriter().write("Postal code Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Postal code");
                ex.printStackTrace();
            }
        }
    }

}
