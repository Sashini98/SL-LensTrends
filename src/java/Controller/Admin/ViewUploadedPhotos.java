/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.PhotographDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographDao;
import Model.Dao.PhotographerDao;
import Model.Photograph;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ViewUploadedPhotos extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            ArrayList<String> a = new ArrayList();

            PhotographDao photoDao = new PhotographDaoImpl();
            ArrayList<Photograph> photos = (ArrayList<Photograph>) photoDao.getAllInReviewPhotographs();
            PhotographerDao pDao = new PhotographerDaoImp();

            for (Photograph p : photos) {

                String name = "";
                String pid = p.getPhotogrpherId();
                Photographer photographer = pDao.getPhotographerById(pid);;

                name = photographer.getFname() + " " + photographer.getLname();                
                a.add(name);

//                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
//                String date = sdf.format(p.getUploadedDate());
               
            }

            request.setAttribute("photos", photos);
            request.setAttribute("photographer", a);
            request.getRequestDispatcher("View/Admin/UploadedPhotos.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
