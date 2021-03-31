package Controller.Photographer;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographerDao;
import Model.Photographer;
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
public class DeletePhotographerAccount extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            String Photographer_Id = p.getPhotographerId();

            PhotographerDao Dao = new PhotographerDaoImp();
            Dao.updatePhotographerActiveStatus(0, Photographer_Id);
            
            request.getSession().invalidate();
            response.getWriter().write("successfully Deleted");
            
        } catch (SQLException ex) {
            response.getWriter().write("error");
            Logger.getLogger(DeletePhotographerAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
