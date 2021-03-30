/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Event;

import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class photographer_suggest extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("phottogsu");
        
        try {
            ArrayList<String> a = new ArrayList();
            PhotographerDao pDao = new PhotographerDaoImp();
            ArrayList<Photographer> pg = (ArrayList<Photographer>) pDao.getPhotographerNames();

            for (Photographer p : pg) {
                String name = p.getFname() + " " + p.getLname();
                a.add(name);
            }

            Gson g = new Gson();
            String toJson = g.toJson(a);
            response.getWriter().write(toJson);
           
        } catch (Exception e) {
        }

    }

}
