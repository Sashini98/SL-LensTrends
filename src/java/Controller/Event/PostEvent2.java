/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Event;

import Controller.DaoImpl.EventDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.EventDao;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
public class PostEvent2 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String photographers = request.getParameter("cat");
        String eid = request.getParameter("eid");
        String area = request.getParameter("area");
        PhotographerDao pDao = new PhotographerDaoImp();
        EventDao eDao = new EventDaoImpl();

        if (area.equalsIgnoreCase("none")) {
            String[] tokens = photographers.split(",");
            String[] photog = new String[tokens.length];
            String pid = "";
            try {

                int i = 0;

                for (String token : tokens) {
                    photog[i++] = token;
                }

                for (int j = 1; j < photog.length; j++) {
                    ArrayList<Photographer> p = new ArrayList();
                    p = (ArrayList<Photographer>) pDao.getPhotographByName(photog[j]);
                    for (Photographer pg : p) {
                        pid = pg.getPhotographerId();
                        eDao.addEventPhotographers(eid, pid);
                    }
//                int categoryy = questionDao.getCategory(photog[j]);
//
//                    ques.setcategoryId(categoryy);
//                    questionDao.addQuestionCategory(ques);

                }

            } catch (Exception e) {

            }
        } else {
            try {                
                ArrayList<String> a  = (ArrayList) pDao.getPhotographByProvine(area);
                 for(int j=0;j<a.size();j++)
                 {
                     eDao.addEventPhotographers(eid, a.get(j));
                 }
                
            } catch (SQLException ex) {
                
            }
            

        }
    }
}
