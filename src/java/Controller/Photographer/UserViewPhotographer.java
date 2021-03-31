/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class UserViewPhotographer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");

        try {
            PhotographerDao pDao = new PhotographerDaoImp();
            Photographer p = pDao.getPhotographerById(id);

            ArrayList a = new ArrayList();

            a.add(p.getFname() + " " + p.getLname());
            a.add(p.getCity());
            a.add(p.getEmail());
            a.add(p.getBio());
            a.add(pDao.getUploadCount(id));

            ArrayList<String> photographerCategories = pDao.getPhotographerCategories(id);
            a.add(photographerCategories);
            System.out.println("a " + a);

            Gson g = new Gson();
            String toJson = g.toJson(a);
            response.getWriter().write(toJson);

        } catch (SQLException ex) {
            Logger.getLogger(UserViewPhotographer.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
