/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographDao;
import Model.Dao.PhotographerDao;
import Model.Photograph;
import Model.Photographer;
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
public class PhotographerUploadPhoto extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            ArrayList<String> a = new ArrayList();
            Photographer photographer = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            PhotographDao loadphotoDao = new PhotographDaoImpl();
            ArrayList<Photograph> photos = (ArrayList<Photograph>) loadphotoDao.getAllphotosofPhotographer(photographer.getPhotographerId());
            request.setAttribute("loadphotographs", photos);
            request.getRequestDispatcher("View/Photographer/PhotographerUploadPhotoTem.jsp").forward(request, response);
            
        } catch (SQLException ex) {
            Logger.getLogger(PhotographerUploadPhoto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
