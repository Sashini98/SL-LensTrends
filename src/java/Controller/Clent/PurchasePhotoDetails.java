/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PhotographCategoryDaoImpl;
import Controller.DaoImpl.PhotographDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographCategoryDao;
import Model.Dao.PhotographDao;
import Model.Dao.PhotographerDao;
import Model.Photograph;
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
            
            PhotographCategoryDao pcd = new PhotographCategoryDaoImpl();
            String category = pcd.getCategory(photograph.getCategoryId());

            request.setAttribute("photo", photograph);
            request.setAttribute("photographer", photographer);
            request.setAttribute("photographCategory", category);
            
            request.getRequestDispatcher("View/User/PurchasePhoto.jsp").forward(request, response);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }

}
