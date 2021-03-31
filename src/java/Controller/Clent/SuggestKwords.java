/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photograph;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
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
public class SuggestKwords extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {


            HashSet<String> allkwords = new HashSet();
            
            PhotographDao dao = new PhotographDaoImpl();
            ArrayList<Photograph> photographsByState = dao.getPhotographsByState(4);
            
            for (Photograph p : photographsByState) {
                
                String keywords = p.getKeywords();
                String[] keywordArray = keywords.split(",");
                for (String keyword : keywordArray) {
                    keyword = keyword.trim();
                    allkwords.add(keyword);
                }
            }

          


            Gson g = new Gson();
            String jsonString = g.toJson(allkwords);
            response.getWriter().write(jsonString);
        } catch (SQLException ex) {
            Logger.getLogger(SuggestKwords.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
