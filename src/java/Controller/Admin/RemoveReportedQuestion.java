/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.QuestionDaoImpl;
import Controller.DaoImpl.ReportedQuestionDaoImpl;
import Model.Dao.QuestionDao;
import Model.Dao.ReportedQuestionDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class RemoveReportedQuestion extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        int qid = Integer.parseInt(request.getParameter("qid"));
        int status = 0;

        try {
            QuestionDao qDao = new QuestionDaoImpl();
            qDao.updateQuestionState(status, qid);
            
            ReportedQuestionDao rDao = new ReportedQuestionDaoImpl();
            rDao.deleteReportedQuestion(qid);

            response.getWriter().write("Question Removed.");
        } 
        catch (Exception ex) {
            response.getWriter().write("Error Occured.");
            ex.printStackTrace();

        }
    }
    }

    

