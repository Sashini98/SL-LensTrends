/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.QuestinRatingDaoImpl;
import Model.Client;
import Model.Dao.QuestionRatingDao;
import Model.Photographer;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdk.nashorn.internal.runtime.regexp.joni.Option;

/**
 *
 * @author Sashini Shihara
 */
public class RateAnswer extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
        System.out.println("rateanswer");
        
        int aid = parseInt(request.getParameter("aid"));
        String rate = request.getParameter("rate");
        String id = "";
        String message="";
        
        try {
            
            QuestionRatingDao qrDao = new QuestinRatingDaoImpl();
            if (request.getSession().getAttribute("loggedPhotographer") == null && request.getSession().getAttribute("loggedClient") == null) {
                response.sendRedirect("/GroupProject/View/login.jsp");
                
                
            } else if (request.getSession().getAttribute("loggedPhotographer") == null) {
                Client c = (Client) request.getSession().getAttribute("loggedClient");
                id = c.getClientId();
                
            } else {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                id = p.getPhotographerId();
            }
            
            boolean checkLike = qrDao.checkLikes(aid, id);
            boolean checkDislike = qrDao.checkDislikes(aid, id);
            
            if (rate.equals("like")) {
                if (checkLike == true) {
                    message="Liked";
                    
                } 
                else if (checkDislike == true) {
                    qrDao.deleteDisike(aid, id);
                    qrDao.addLike(aid, id);
                } else {                    
                    qrDao.addLike(aid, id);
                }
                
            }
            
            else if (rate.equals("dislike")) {
                if (checkDislike == true) {
                    message="Disliked";
                    
                } else if (checkLike == true) {
                    qrDao.deleteLike(aid, id);
                    qrDao.addDisike(aid, id);
                    
                } else {                    
                    qrDao.addDisike(aid, id);
                }
            }
            
            int likes=qrDao.getLikes(aid);
            int disLikes=qrDao.getDislikes(aid);
            
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
