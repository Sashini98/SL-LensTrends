/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ModalReleaseDaoImpl;
import Controller.DaoImpl.OrientationdaoImpl;
import Controller.DaoImpl.PhotographCategoryDaoImpl;
import Controller.DaoImpl.PhotographDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.ModalReleaseDao;
import Model.Dao.OrientationDao;
import Model.Dao.PhotographCategoryDao;
import Model.Dao.PhotographDao;
import Model.Dao.PhotographerDao;
import Model.ModalRelease;
import Model.Photograph;
import Model.Photographer;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ViewUploadedPhotoDetails extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            
            int photoid = Integer.parseInt(request.getParameter("id"));
            
            PhotographDao photographDao = new PhotographDaoImpl();
            Photograph photograph = photographDao.getPhotographById(photoid);
            
            PhotographerDao photographerDao = new PhotographerDaoImp();
            Photographer photographer = photographerDao.getPhotographerById(photograph.getPhotogrpherId());
            
            PhotographCategoryDao cDao = new PhotographCategoryDaoImpl();
            String category = cDao.getCategory(photoid);
            
            OrientationDao oDao = new OrientationdaoImpl();
            String orientation = oDao.getOrientation(photoid);
            
            ModalReleaseDao mDao = new ModalReleaseDaoImpl();
            ModalRelease modal = mDao.getModalrelease(photoid);

            ArrayList<String> c = new ArrayList();
            
            Date uploadedDate = photograph.getUploadedDate();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
            String date = sdf.format(uploadedDate);
            
            c.add(photograph.getTitle());
            c.add(photograph.getHeight() + "");
            c.add(photograph.getWidth() + "");
            c.add(photograph.getKeywords());
            c.add(date);
            c.add(photographer.getFname() + " " + photographer.getLname());
            c.add(category);
            c.add(orientation);
            c.add(photograph.getGenderId() +"");
            c.add("../../Resources/Img/Gallery Sample Images/"+ photograph.getPath());
            c.add(photograph.getHeight() * photograph.getWidth() / 1000000 + "");
            c.add(photograph.getId() +"");
            c.add(modal.getPath()+"");

            Gson g = new Gson();
            String toJson = g.toJson(c);
            response.getWriter().write(toJson);

        } catch (SQLException ex) {
            Logger.getLogger(ViewUploadedPhotoDetails.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
