/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographerRatingDaoImpl;
import Model.Client;
import Model.Dao.PhotographerRatingDao;
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
public class RatePhotographer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pid = request.getParameter("pid");
        String rate = request.getParameter("rate");
        String id = "";
        String message = "";
        try {
            PhotographerRatingDao pdao = new PhotographerRatingDaoImpl();

            Client c = (Client) request.getSession().getAttribute("loggedClient");
            id = c.getClientId();
            
             boolean checkLike = pdao.checkLikes(pid, id);
            boolean checkDislike = pdao.checkDislikes(pid, id);
            
            if (rate.equals("like")) {
                if (checkLike == true) {
                    message="Liked";
                    
                } 
                else if (checkDislike == true) {
                    pdao.deleteDisike(pid, id);
                    pdao.addLike(pid, id);
                } else {                    
                    pdao.addLike(pid, id);
                }
                
            }
            
            if (rate.equals("dislike")) {
                if (checkDislike == true) {
                    message="Disliked";
                    
                } else if (checkLike == true) {
                    pdao.deleteLike(pid, id);
                    pdao.addDisike(pid, id);
                    
                } else {                    
                    pdao.addDisike(pid, id);
                }
            }
            
            int likes=pdao.getLikes(pid);
            int disLikes=pdao.getDislikes(pid);
            
            ArrayList resp=new ArrayList();
            resp.add(likes);
            resp.add(disLikes);
            resp.add(message);
            
            Gson gson=new Gson();
            String toJson = gson.toJson(resp);
            response.getWriter().write(toJson);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
}
