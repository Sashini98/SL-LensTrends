/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.QuestionDaoImpl;
import DB.DB;
import Model.Client;
import Model.Dao.QuestionDao;
import Model.Photographer;
import Model.Question;
import Model.QuestionCategory;
import java.time.LocalDateTime;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class AskQues extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String body = request.getParameter("Questionbody");
        String category = request.getParameter("categ");
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String d = sdf.format(date);

        Question ques = new Question();
        ques.settitle(title);
        ques.setquestion(body);
        ques.setcategory(category);
        ques.setquestion_date(date);

        String t = "";
        t = ques.gettitle();
        System.out.println(t);

        String id = "";
        try {

            if (request.getSession().getAttribute("loggedPhotographer") == null) {

                Client c = (Client) request.getSession().getAttribute("loggedClient");
                id = c.getClientId();
                ques.setclientId(id);
                System.out.println(ques.getclientId());

                try {
                    QuestionDao questionDao = new QuestionDaoImpl();
                    questionDao.addQuestionifClient(ques);
//                DB.iud("INSERT INTO question ( title, Question, Category, Question_Date, Client_Id) VALUES ( '"+title+"', '"+body+"', '"+category+"', '"+d+"', '"+id+"');");

                } catch (Exception e) {
                    e.printStackTrace();
                }

            } else {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                id = p.getPhotographerId();
                ques.setPhotographerId(id);
                try {
                    QuestionDao questionDao = new QuestionDaoImpl();
                    questionDao.addQuestionifPhotographer(ques);
//               DB.iud("INSERT INTO question ( title, Question, Category, Question_Date, Photographer_Id) VALUES ( '"+title+"', '"+body+"', '"+category+"', '"+d+"', '"+id+"');");

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            response.sendRedirect("View/Fourm/BrowseQn.jsp");
        } catch (Exception e) {
            response.sendRedirect("View/Fourm/AskQues.jsp");
        }

    }

}
