/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.OrientationdaoImpl;
import Controller.DaoImpl.PhotographCategoryDaoImpl;
import Controller.DaoImpl.PhotographDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Controller.DaoImpl.ReportedPhotographDaoImpl;
import Model.Dao.OrientationDao;
import Model.Dao.PhotographCategoryDao;
import Model.Dao.PhotographDao;
import Model.Dao.PhotographerDao;
import Model.Dao.ReportedPhotographDao;
import Model.Photograph;
import Model.Photographer;
import Model.ReportedPhotographs;
import com.google.gson.Gson;
import java.io.IOException;
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
public class ViewReportedPhotoDetails extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int photoid = Integer.parseInt(request.getParameter("pid"));
            System.out.println(photoid);

            PhotographDao photographDao = new PhotographDaoImpl();
            Photograph photograph = photographDao.getPhotographById(photoid);
            System.out.println(photograph+" jjjjjjjjjjjj");
            PhotographerDao photographerDao = new PhotographerDaoImp();
            System.out.println(photograph.getPhotogrpherId());
            Photographer photographer = photographerDao.getPhotographerById(photograph.getPhotogrpherId());
            System.out.println(photographer);

            PhotographCategoryDao cDao = new PhotographCategoryDaoImpl();
            String category = cDao.getCategory(photoid);

            OrientationDao oDao = new OrientationdaoImpl();
            String orientation = oDao.getOrientation(photoid);

            ReportedPhotographDao rDao = new ReportedPhotographDaoImpl();
            ReportedPhotographs rphotograph = rDao.getReportedPhotographById(photoid);

            ArrayList<String> c = new ArrayList();
            Date uploadedDate = photograph.getUploadedDate();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
            String date = sdf.format(uploadedDate);
            
            c.add("../../Resources/Img/Gallery Sample Images/" + photograph.getPath());
            c.add(rphotograph.getReason());
            c.add(rphotograph.getDescription());
            c.add(photograph.getTitle());
            c.add(photograph.getHeight() + "");
            c.add(photograph.getWidth() + "");
            c.add(photograph.getKeywords());
            c.add(date);
            c.add(photographer.getFname() + " " + photographer.getLname());
            c.add(category);
            c.add(photograph.getHeight() * photograph.getWidth() / 1000000 + "");
            c.add(photograph.getId() + "");

            Gson g = new Gson();
            String toJson = g.toJson(c);
            response.getWriter().write(toJson);

        } catch (SQLException ex) {
            Logger.getLogger(ViewUploadedPhotoDetails.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
