/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PhotographDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographDao;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class photographerNameSuggest extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            PhotographerDao dao = new PhotographerDaoImp();
            ArrayList<Photographer> photographerNames = (ArrayList<Photographer>) dao.getPhotographerNames();
            HashSet<String> allkwords = new HashSet();
            for (Photographer photographerName : photographerNames) {
                allkwords.add(photographerName.getFname() + " " + photographerName.getLname());
            }

            Gson g = new Gson();
            String jsonString = g.toJson(allkwords);
            response.getWriter().write(jsonString);

        } catch (SQLException ex) {
            Logger.getLogger(photographerNameSuggest.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
