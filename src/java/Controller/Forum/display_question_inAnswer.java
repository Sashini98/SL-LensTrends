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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class display_question_inAnswer extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String qid=request.getParameter("qid");
        int id=Integer.parseInt(qid);
        
        
        try {
            QuestionDao quest=new QuestionDaoImpl();
            Question q=quest.getQuestionbtId(id);
            String question=q.getquestion();
            System.out.println(""+question);
            
             Gson g = new Gson();
            String toJson = g.toJson(question);
            response.getWriter().write(toJson);
            
        } catch (Exception e) {
        }
                
        
    }


}
