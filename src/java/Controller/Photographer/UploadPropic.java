/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographerDao;
import Model.Photographer;
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
public class UploadPropic extends HttpServlet {

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            DiskFileItemFactory dfif = new DiskFileItemFactory();
            ServletFileUpload sfu = new ServletFileUpload(dfif);

            List<FileItem> fil = sfu.parseRequest(request);

            FileItem fi = fil.get(0);

            Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            String Photographer_Id = p.getPhotographerId();

            String realpath = getServletContext().getRealPath("");
            String imagename = String.valueOf(" ProPic " + Photographer_Id + System.currentTimeMillis());
            String propathname = imagename +".jpeg";
            
            String filepath = "";
            filepath = realpath + "\\Resources\\Img\\Gallery Sample Images\\ProfilePicture\\" + imagename + ".jpeg";

            File fileorg = new File(filepath);
            fi.write(fileorg);
            
            p.setProfilpic(propathname);
            p.setPhotographerId(Photographer_Id);
            
            PhotographerDao photographerDao = new PhotographerDaoImp();
            photographerDao.uploadprofilepic(p);
            
            response.getWriter().write("Successfully Uploaded");
            
            
        } catch (FileUploadException ex) {
            Logger.getLogger(UploadPropic.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UploadPropic.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
