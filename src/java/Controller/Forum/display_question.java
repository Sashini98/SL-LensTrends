/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.QuestionDaoImpl;
import Model.Dao.QuestionDao;
import Model.Question;
import java.io.IOException;
import static java.lang.Integer.parseInt;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class display_question extends HttpServlet {

  
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String qid = request.getParameter("qid");
        int id = parseInt(qid);
        try {
            ArrayList<String> a = new ArrayList();
            
            QuestionDao question = new QuestionDaoImpl();
            Question q = question.getQuestionbtId(id);

            String ques = q.getquestion();
            
            a.add(ques);
            a.add(qid);

            request.setAttribute("question", a);
            
           request.getRequestDispatcher("View/Fourm/ViewAnswers.jsp").forward(request, response);
            

        } catch (Exception e) {
        }
      }

}
