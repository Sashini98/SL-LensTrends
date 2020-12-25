/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.QuestionDaoImpl;
import Model.Dao.QuestionDao;
import Model.QuestionCategory;
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
public class category_suggest extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            ArrayList<String> a = new ArrayList();
            QuestionDao questionDao = new QuestionDaoImpl();
            ArrayList<QuestionCategory> categ = (ArrayList<QuestionCategory>) questionDao.getQuestionCategory();

            for (QuestionCategory c : categ) {
                a.add(c.getCategory());
            }
           
            Gson g = new Gson();
                String toJson = g.toJson(a);
                response.getWriter().write(toJson);

        } catch (Exception e) {
        }

    }

}
