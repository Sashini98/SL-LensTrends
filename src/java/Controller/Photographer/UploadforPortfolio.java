/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photographer;
import Model.portfolio_photograph;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
public class UploadforPortfolio extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            DiskFileItemFactory dfif = new DiskFileItemFactory();
            ServletFileUpload sfu = new ServletFileUpload(dfif);

            List<FileItem> fil = sfu.parseRequest(request);
            FileItem fi = fil.get(0);
            

            String realpath = getServletContext().getRealPath("");
            String imagename = String.valueOf(System.currentTimeMillis());
      
            String filepath = "";
            filepath = realpath + "\\Resources\\Img\\Gallery Sample Images\\" + imagename + ".jpeg";
//             System.out.println(filepath);
            File file = new File(filepath);
            fi.write(file);
            
//            String title = request.getParameter("title");
            
            int id = 0;
            String path = imagename + ".jpeg";
            String title = request.getParameter("title");
            System.out.println(title);
            Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            String Photographer_Id = p.getPhotographerId();

            portfolio_photograph m = new portfolio_photograph();

            m.setId(id);
            m.setPath(path);
            m.setTitle(title);
            m.setPhotogrpherId(Photographer_Id);

            PhotographDao photoDao = new PhotographDaoImpl();
            photoDao.uploadphotoforportfolio(m);
            

            response.getWriter().write("Successfully Uploaded");

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

}
