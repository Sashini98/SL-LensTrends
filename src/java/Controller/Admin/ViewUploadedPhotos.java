/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photograph;
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

            PhotographDao pDao = new PhotographDaoImpl();
            ArrayList<Photograph> photos = (ArrayList<Photograph>) pDao.getAllPhotographs();

            for(Photograph p : photos) {
                
                a.add(p.getPath());
                a.add(p.getPhotogrpherId());

                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String date = sdf.format(p.getUploadedDate());
                a.add(date); 
            }

            request.setAttribute("photos", a);
            request.getRequestDispatcher("View/Admin/UploadedPhotos.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
    }

}
}
