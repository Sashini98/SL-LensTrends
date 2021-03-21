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
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Forum_filter extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String keyword = request.getParameter("keyword");
        String sort = request.getParameter("sortBy");
        String filter = request.getParameter("filterBy");

        try{
            QuestionDao ques = new QuestionDaoImpl();

            ArrayList<Question> questionByKeyWord = (ArrayList<Question>) ques.getQuestByKeyWord(keyword);

            if (questionByKeyWord == null) {
                questionByKeyWord = new ArrayList<>();
            }
            List<Question> questContainer = questionByKeyWord;
            LinkedList<Question> quest = new LinkedList<>();

            for (Question q : questContainer) {
                quest.add(q);
            }
            
             Iterator<Question> questIterator = quest.iterator();
        HashSet<Question> removeQuest = new HashSet<>();

        while (questIterator.hasNext()) {

            Question qu = questIterator.next();
            boolean isNeeded = false;
            
        }
            
            
            
            
            
            

        } catch (Exception e) {
        }

    }

}
