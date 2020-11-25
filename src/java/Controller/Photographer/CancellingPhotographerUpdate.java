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
public class CancellingPhotographerUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String canceloption = request.getParameter("canceledit");

        Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
        String photographerId = p.getPhotographerId();

        PhotographerDao photographerDao = new PhotographerDaoImp();
        
        if (canceloption.equals("fname")) {
            try {
                Photographer photographer = photographerDao.getPhotographerById(photographerId);
                String userfname = photographer.getFname();

                response.getWriter().write(userfname);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption.equals("lname")) {
            try {
                Photographer photographer = photographerDao.getPhotographerById(photographerId);
                String userlname = photographer.getLname();

                response.getWriter().write(userlname);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption.equals("email")) {
            try {
                Photographer photographer = photographerDao.getPhotographerById(photographerId);
                String useremail = photographer.getEmail();
                
                response.getWriter().write(useremail);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption.equals("mnum")) {
            try {
                Photographer photographer = photographerDao.getPhotographerById(photographerId);
                String usermnum = photographer.getMobile();

                response.getWriter().write(usermnum);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption.equals("web")) {
            try {
                 Photographer photographer = photographerDao.getPhotographerById(photographerId);
                 String userweb = photographer.getWebsite();

                response.getWriter().write(userweb);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption.equals("bio")) {
            try {
                Photographer photographer = photographerDao.getPhotographerById(photographerId);
                String userbio = photographer.getBio();
                
                response.getWriter().write(userbio);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption.equals("interest")) {
            try {
                Photographer photographer = photographerDao.getPhotographerById(photographerId);
                String userinterest = photographer.getFielsOfdInterest();
                
                response.getWriter().write(userinterest);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption.equals("address")) {
            try {
                Photographer photographer = photographerDao.getPhotographerById(photographerId);
                String useraddress = photographer.getAddress_no();
                
                response.getWriter().write(useraddress);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption.equals("city")) {
            try {
                Photographer photographer = photographerDao.getPhotographerById(photographerId);
                String usercity = photographer.getCity();

                response.getWriter().write(usercity);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption.equals("province")) {
            try {
                Photographer photographer = photographerDao.getPhotographerById(photographerId);
                String userprovince = photographer.getProvince();
                System.out.println(userprovince);
                response.getWriter().write(userprovince);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (canceloption.equals("postal")) {
            try {
                Photographer photographer = photographerDao.getPhotographerById(photographerId);
                int userpostal = photographer.getPostalCode();
                
                response.getWriter().write(userpostal);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

    }
}
