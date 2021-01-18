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
import static java.lang.Integer.parseInt;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Scanner;
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

        String category = request.getParameter("cat");

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String d = sdf.format(date);

        Question ques = new Question();
        ques.settitle(title);
        ques.setquestion(body);
        ques.setquestion_date(date);

        String t = "";
        t = ques.gettitle();

        String id = "";

        try {
            QuestionDao questionDao = new QuestionDaoImpl();
            if (request.getSession().getAttribute("loggedPhotographer") == null) {

                Client c = (Client) request.getSession().getAttribute("loggedClient");
                id = c.getClientId();
                ques.setclientId(id);

                try {

                    questionDao.addQuestionifClient(ques);

                } catch (Exception e) {
                    e.printStackTrace();
                }

            } else {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                id = p.getPhotographerId();
                ques.setPhotographerId(id);
                try {

                    questionDao.addQuestionifPhotographer(ques);

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            String qid = questionDao.getlastQuestionId();
            int quesid = parseInt(qid);
            ques.setquestionId(quesid);

            String[] tokens = category.split(",");
            String[] categ = new String[tokens.length];

            int i = 0;

            for (String token : tokens) {
                categ[i++] = token;
            }
            System.out.println("array " + Arrays.toString(categ));

            for (int j = 1; j < categ.length;j++) {
                int categoryy = questionDao.getCategory(categ[j]);

                if (categoryy == 0) {
                    System.out.println("cat"+j+categ[j]);
                    questionDao.addCategory(categ[j]);
                    int category1 = questionDao.getCategory(categ[j]);
                    ques.setcategoryId(category1);
                    questionDao.addQuestionCategory(ques);

                } else {

                    ques.setcategoryId(categoryy);
                    questionDao.addQuestionCategory(ques);

                }

            }

            response.sendRedirect("View/Fourm/BrowseQn.jsp");
        } catch (Exception e) {
            response.sendRedirect("View/Fourm/AskQues.jsp");
        }

    }

}
