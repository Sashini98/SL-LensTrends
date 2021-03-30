/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photograph;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author ASUS
 */
public class SubmitforReview extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            DiskFileItemFactory dfif = new DiskFileItemFactory();
            ServletFileUpload sfu = new ServletFileUpload(dfif);
            List<FileItem> fil = sfu.parseRequest(request);

            String title = fil.get(0).getString();
            String cat = fil.get(1).getString();
            int category = Integer.parseInt(cat);
            System.out.println(category);
            String keyword = fil.get(2).getString();
            
            String id = fil.get(4).getString();
            int photoid = Integer.parseInt(id);

            String prc = fil.get(3).getString();
            double price = Double.parseDouble(prc);

            int stateid = 2;

            Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            String Photographer_Id = p.getPhotographerId();
            int genderID = p.getGenderId();

            Photograph m = new Photograph();

            m.setTitle(title);
            m.setCategoryId(category);
            m.setKeywords(keyword);
            m.setPrice(price);
            m.setStateId(stateid);
            m.setId(photoid);
            m.setGenderId(genderID);

            PhotographDao photoSubmitDao = new PhotographDaoImpl();
            try {
                photoSubmitDao.submitforreview(m);
                response.getWriter().write("Successfully Submitted");
            } catch (SQLException ex) {
                Logger.getLogger(SubmitforReview.class.getName()).log(Level.SEVERE, null, ex);
            }

        } catch (FileUploadException ex) {
            Logger.getLogger(SubmitforReview.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
