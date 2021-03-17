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
import Model.QuestionCategory;
import Model.ReportedQuestion;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ViewReportedQuesDetails extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int quesid = Integer.parseInt(request.getParameter("qid"));

            ReportedQuestionDao rDao = new ReportedQuestionDaoImpl();
            ReportedQuestion rQuestion = rDao.getReportedQuestionById(quesid);

            QuestionDao qDao = new QuestionDaoImpl();
            Question question = qDao.getQuestionbtId(quesid);

            PhotographerDao photographerDao = new PhotographerDaoImp();
            Photographer photographer = photographerDao.getPhotographerById(question.getPhotographerId());

            ClientDao cDao = new ClientDaoImpl();
            Client client = cDao.getClientbyId(question.getclientId());

            ArrayList<String> c = new ArrayList();
            Date postedDate = question.getquestion_date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
            String date = sdf.format(postedDate);
            c.add(question.gettitle());
            c.add(question.getquestion());
            c.add(Integer.toString(question.getcategoryId()));
            c.add(photographer.getFname() + " " + photographer.getLname());
            c.add(client.getFname() + " " + client.getLname());
            c.add(rQuestion.getReason());
            c.add(rQuestion.getDescription());
            c.add(date);
            c.add(rQuestion.getQuestionId() + "");
            

            Gson g = new Gson();
            String toJson = g.toJson(c);
            response.getWriter().write(toJson);

        } catch (SQLException ex) {
            Logger.getLogger(ViewUploadedPhotoDetails.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
