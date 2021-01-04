/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.QuestionDaoImpl;
import Model.Dao.QuestionDao;
import Model.Question;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class quesId extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String qid = request.getParameter("qid");
        int id=parseInt(qid);
        try {
            QuestionDao question = new QuestionDaoImpl();
            Question q = question.getQuestionbtId(id);
            
            String ques=q.getquestion();
             
            request.setAttribute("question", ques);
            request.getRequestDispatcher("View/Fourm/AnswerQues.jsp").forward(request, response);
            
            
            
        } catch (Exception e) {
        }
    }

}
