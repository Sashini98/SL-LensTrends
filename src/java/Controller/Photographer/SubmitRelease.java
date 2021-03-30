/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.ModalReleaseDaoImpl;
import Controller.DaoImpl.PropertyReleaseDaoImpl;
import Model.Dao.ModalReleaseDao;
import Model.Dao.PropertyReleaseDao;
import Model.ModalRelease;
import Model.Photograph;
import Model.Photographer;
import Model.PropertyRelease;
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
public class SubmitRelease extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            
                        
            DiskFileItemFactory dfif = new DiskFileItemFactory();
            ServletFileUpload sfu = new ServletFileUpload(dfif);

            List<FileItem> fil = sfu.parseRequest(request);

            FileItem property = fil.get(0);
            FileItem modal = fil.get(1);
            String id = fil.get(2).getString();
            int photoid = Integer.parseInt(id); 
            
            

            Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            String Photographer_Id = p.getPhotographerId();

            String realpath = getServletContext().getRealPath("");
            String pName = String.valueOf("PropertyRelease" +" - "+ Photographer_Id +" - "+ System.currentTimeMillis());
           
            String mName = String.valueOf("ModalRelease" +" - "+ Photographer_Id +" - "+ System.currentTimeMillis());

            String propertypath = realpath + "\\Resources\\Img\\Gallery Sample Images\\PropertyRelease\\" + pName + ".pdf";
            String modalpath = realpath + "\\Resources\\Img\\Gallery Sample Images\\ModalRelease\\" + mName + ".pdf";
//            String imagename = String.valueOf(System.currentTimeMillis());
            
            
            File filepro = new File(propertypath);
            property.write(filepro);
            
            File filemod = new File(modalpath);
            modal.write(filemod);
            
            ModalReleaseDao modalDao = new ModalReleaseDaoImpl();
            modalDao.addModalrelease(photoid, mName);
            
            PropertyReleaseDao proDao = new PropertyReleaseDaoImpl();
            proDao.addPropertyrelease(photoid, pName);
            
            response.getWriter().write("Release Submitted");

        } catch (Exception ex) {
            Logger.getLogger(SubmitRelease.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
