/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import com.google.gson.Gson;
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
 * @author kesh
 */
public class LoadPhotographerTotalEarning extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Photographer attribute = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            PhotographerDao dao = new PhotographerDaoImp();
            double photographerTotalEarning = dao.getPhotographerTotalEarning(attribute.getPhotographerId());
            
            Gson g = new Gson();
            String toJson = g.toJson(photographerTotalEarning);
            response.getWriter().write(toJson);
        } catch (SQLException ex) {
            Logger.getLogger(LoadPhotographerTotalEarning.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

}
