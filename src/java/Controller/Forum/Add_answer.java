/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.AnswerDaoImpl;
import Controller.DaoImpl.QuestinRatingDaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.DB;
import Model.Answer;
import Model.Dao.AnswerDao;
import Model.Dao.QuestionRatingDao;
import Model.Photographer;
import static java.lang.Integer.parseInt;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Sashini Shihara
 */
public class Add_answer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("hiiiiiiiiiiii");
        String an = request.getParameter("answ");
        String qid=request.getParameter("quesid");
        System.out.println("qid"+qid);
        
        int quesid=parseInt(qid);
        
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String d = sdf.format(date);

        Answer answer = new Answer();
        
        answer.setanswer(an);
        answer.setanswerDate(date);
        answer.setquestionId(quesid);

        Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
        String id = p.getPhotographerId();
        answer.setPhotographerId(id);
        
        try {
            AnswerDao answ=new AnswerDaoImpl();
            answ.addAnswer(answer);
            
            int aid=answ.getLastId();
            aid=aid++;
            System.out.println("aid"+aid);
            
            QuestionRatingDao qrDao= new QuestinRatingDaoImpl();
            qrDao.addLikeatBegin(aid);
            qrDao.addDisikeatBegin(aid);
            response.sendRedirect("View/Fourm/BrowseQn.jsp");
                    
        } catch (Exception e) {
        }

    }
}
