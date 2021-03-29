/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photograph;
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
 * @author ASUS
 */
public class DeletePhoto extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String photopath = request.getParameter("pathtobedeleted"); //getting request from js
            int idd = Integer.parseInt(request.getParameter("idd")); //getting request from js

            PhotographDao deletephotoDao = new PhotographDaoImpl();
            
            String[] photoidArray = photopath.split("/"); //spliting path within /
            String photoname = photoidArray[photoidArray.length - 1]; //getting name of file last elememt of array
            
            
            
            Photograph photograph = deletephotoDao.getPhotographById(idd);
            String filepathcom = getServletContext().getRealPath("Resources/Img/Gallery Sample Images/").replace('\\', '/'); //getting absolute path of image folder
            String filepathuncom = getServletContext().getRealPath("Resources/Img/Gallery Sample Images/OriginalImageForSales").replace('\\', '/');
            
            Photograph photographOrg = deletephotoDao.getoriginalpath(photoname);
            
            int photostateid = photograph.getStateId();
            String photonameOrg = photographOrg.getUncompresedpath();
            
            deletephotoDao.deletephoto(idd, photostateid, filepathcom + "/" + photoname, filepathuncom + "/" + photonameOrg);

            response.getWriter().write("Successfully Deleted");

        } catch (SQLException ex) {
            Logger.getLogger(DeletePhoto.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("Error on Deleting");
        }

    }

}
