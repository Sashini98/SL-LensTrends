/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
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
            System.out.println("athavan");
            int photoid = Integer.parseInt(request.getParameter("photographid"));
            
            PhotographDao deletephoto = new PhotographDaoImpl();
            deletephoto.deletephoto(photoid);
            
//            response.sendRedirect("../../View/Photographer/PhotographerUploadPhotoTem.jsp");
            
        } catch (SQLException ex) {
            Logger.getLogger(DeletePhoto.class.getName()).log(Level.SEVERE, null, ex);
        }
                
    }


}
