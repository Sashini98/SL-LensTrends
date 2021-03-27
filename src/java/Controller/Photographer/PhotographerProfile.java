/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PortfolioPhotographerDaoImpl;
import Controller.DaoImpl.PortfolioPhotographerDaoImpl;
import Model.Dao.PortfolioPhotographerDao;
import Model.Photographer;
import Model.portfolio_photograph;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
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
public class PhotographerProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Photographer photographer = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            PortfolioPhotographerDao loadphotosDao = new PortfolioPhotographerDaoImpl();
            //photos arraylist contains all photos 
            request.setAttribute("photos", (ArrayList<portfolio_photograph>) loadphotosDao.getAllphotosofPhotographer(photographer.getPhotographerId()));
            request.getRequestDispatcher("View/Photographer/PhotographerProfileTem.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(PhotographerProfile.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
