/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photograph;
import com.google.gson.Gson;
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
public class DetailsofPhotos extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String para = request.getParameter("photographid");
            PhotographDao imagedetails = new PhotographDaoImpl();
            Photograph photodetails = imagedetails.getPhotographById(Integer.parseInt(para));

            ArrayList details = new ArrayList();

            details.add(photodetails.getTitle());
            details.add(photodetails.getUploadedDate());
            details.add(photodetails.getCategoryId());
            details.add(photodetails.getId());

            Gson g = new Gson(); //jason object
            String ConverttoJson = g.toJson(details); 
            response.getWriter().write(ConverttoJson);

        } catch (SQLException ex) {
            Logger.getLogger(DetailsofPhotos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
