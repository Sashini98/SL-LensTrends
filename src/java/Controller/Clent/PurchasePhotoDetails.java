/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PhotographCategoryDaoImpl;
import Controller.DaoImpl.PhotographDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Controller.DaoImpl.PurchaseInvoiceDaoImpl;
import Model.Dao.PhotographCategoryDao;
import Model.Dao.PhotographDao;
import Model.Dao.PhotographerDao;
import Model.Photograph;
import Model.Photographer;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class PurchasePhotoDetails extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int photoId = Integer.parseInt(request.getParameter("id"));

            PhotographDao photographDao = new PhotographDaoImpl();
            Photograph photograph = photographDao.getPhotographById(photoId);

            PhotographerDao photographerDao = new PhotographerDaoImp();
            Photographer photographer = photographerDao.getPhotographerById(photograph.getPhotogrpherId());
            
           

            ArrayList<Photograph> photographerPhotos = photographDao.getAllphotosofPhotographer(photographer.getPhotographerId());
            ArrayList<Photograph> removingPics = new ArrayList<>();
            
            if (photographerPhotos.size() > 12) {
                for (int i = 0; i < photographerPhotos.size(); i++) {
                    if (i >= 12) {
                        removingPics.add(photographerPhotos.get(i));
                    }
                }
                photographerPhotos.removeAll(removingPics);
            }

            PhotographCategoryDao pcd = new PhotographCategoryDaoImpl();
            String category = pcd.getCategory(photograph.getCategoryId());

            request.getSession().setAttribute("photo", photograph);
            request.getSession().setAttribute("photographer", photographer);
            request.getSession().setAttribute("photographCategory", category);
            request.getSession().setAttribute("photographerPhotos", photographerPhotos);

            response.sendRedirect("View/User/PurchasePhoto.jsp");

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }

}
