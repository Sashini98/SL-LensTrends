/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Controller.DaoImpl.QuestionDaoImpl;
import Controller.DaoImpl.ReportedQuestionDaoImpl;
import Model.Client;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import Model.Dao.QuestionDao;
import Model.Dao.ReportedQuestionDao;
import Model.Photographer;
import Model.Question;
import Model.ReportedQuestion;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ViewReportedQuestions extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        try {
            ArrayList<String> a = new ArrayList();

            ReportedQuestionDao reportDao = new ReportedQuestionDaoImpl();
            ArrayList<ReportedQuestion> ques = (ArrayList<ReportedQuestion>) reportDao.getAllReportedQuestions();
            ClientDao cDao = new ClientDaoImpl();
            PhotographerDao pDao = new PhotographerDaoImp();
            QuestionDao qDao = new QuestionDaoImpl();

            for (ReportedQuestion q : ques) {
                String cname = "";
                String cid = q.getClientId();
                Client client = cDao.getClientbyId(cid);;

                cname = client.getFname() + " " + client.getLname();                
                a.add(cname);
                
                String pname = "";
                String pid = q.getPhotographerId();
                Photographer photographer = pDao.getPhotographerById(pid);;

                pname = photographer.getFname() + " " + photographer.getLname();                
                a.add(pname);
                
//                String title = " ";
//                int qid = q.getQuestionId();
//                Question question = qDao.getQuestionbtId(qid);
//                
//                title = question.gettitle();
//                a.add(title);

            }

            request.setAttribute("ques", ques);
            request.setAttribute("names", a);
            request.getRequestDispatcher("View/Admin/ReportedQuestion.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
