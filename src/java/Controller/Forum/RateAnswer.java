/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.QuestinRatingDaoImpl;
import Model.Dao.QuestionRatingDao;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int aid = parseInt(request.getParameter("aid"));
        String rate = request.getParameter("rate");

        try {

            QuestionRatingDao qrDao = new QuestinRatingDaoImpl();
            
            
            if (rate.equals("like")) {
                qrDao.addLike(aid);
                
            } else {
                System.out.println("else");
                qrDao.addDisike(aid);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
