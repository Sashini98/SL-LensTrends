/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PortfolioPhotographerDaoImpl;
import Model.Dao.PortfolioPhotographerDao;
import Model.portfolio_photograph;
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
public class DeletePortfolioPhotos extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String photopath = request.getParameter("pathtobedeleted");
            int photoid = Integer.parseInt(request.getParameter("id"));

            PortfolioPhotographerDao deletephotoDao = new PortfolioPhotographerDaoImpl();

            String[] photoarray = photopath.split("/");
            String photoname = photoarray[photoarray.length - 1];

            portfolio_photograph photograph = deletephotoDao.getPhotographById(photoid);
            String filepathcom = getServletContext().getRealPath("Resources/Img/Gallery Sample Images/").replace('\\', '/');

            deletephotoDao.deletephoto(photoid, filepathcom + "/" + photoname);
            response.getWriter().write("Successfully Deleted");

        } catch (SQLException ex) {
            Logger.getLogger(DeletePortfolioPhotos.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("Error on Deleting");
        }

    }

}
