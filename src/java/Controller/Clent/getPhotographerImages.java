/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PhotographDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Controller.DaoImpl.PortfolioPhotographerDaoImpl;
import Model.Dao.PhotographDao;
import Model.Dao.PhotographerDao;
import Model.Dao.PortfolioPhotographerDao;
import Model.Photograph;
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
 * @author kesh
 */
public class getPhotographerImages extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String pid = request.getParameter("pid");
            
            ArrayList<String> paths = new ArrayList<>();
            ArrayList<String> paths2 = new ArrayList<>();
            
            PhotographDao dao = new PhotographDaoImpl();
            ArrayList<Photograph> allphotosofPhotographer = dao.getAllphotosofPhotographer(pid);
            for (Photograph photograph : allphotosofPhotographer) {
                paths.add(photograph.getPath());
            }
            
            PortfolioPhotographerDao dao2 = new PortfolioPhotographerDaoImpl();
            ArrayList<portfolio_photograph> allportfoliophotosofPhotographer = dao2.getAllphotosofPhotographer(pid);
            for (portfolio_photograph object : allportfoliophotosofPhotographer) {
                paths2.add(object.getPath());
            }
            request.setAttribute("potPics", paths2);
            request.setAttribute("salesPics", paths);
            request.getRequestDispatcher("/View/Photographer/UserViewPhotographerProfileTemp.jsp").forward(request, response);
            
        } catch (SQLException ex) {
            Logger.getLogger(getPhotographerImages.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
