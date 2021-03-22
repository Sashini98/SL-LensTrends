/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.AnswerDaoImpl;
import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Controller.DaoImpl.QuestionDaoImpl;
import Model.Client;
import Model.Dao.AnswerDao;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import Model.Dao.QuestionDao;
import Model.Photographer;
import Model.Question;
import Model.QuestionCategory;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
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
            
            AnswerDao answ=new AnswerDaoImpl();
            int cnt=answ.answerCount(qu.getquestionId());
         
            if(filter.contains("NoAnswer"))
            {
                if(cnt==0)
                {
                    isNeeded=true;
                }
            }
            
            else if (filter.contains("100plus"))
            {
                if(cnt>100)
                {
                    isNeeded=true;
                }
            }
            
             if (!isNeeded) {
                removeQuest.add(qu);
            }
             
            
        }
         quest.removeAll(removeQuest);
         
         if (sort.equalsIgnoreCase("newest")) {

            LinkedList<Question> contains = new LinkedList<>();
            LinkedList<Question> notContains = new LinkedList<>();

            if (keyword != null) {
                for (Question photo : quest) {

                    
                }
                quest.clear();
                quest.addAll(contains);
                quest.addAll(notContains);
            }

        } 
            
            
          ArrayList<Question> sortedQues = new ArrayList(quest);
          
          ArrayList<String> a = new ArrayList();
          ArrayList<String> b = new ArrayList();

           

            for (Question q : sortedQues) {
                String name = "";
                int cnt = 0;

                if (q.getclientId() == null) {
                    String pid = q.getPhotographerId();
                    PhotographerDao pDao = new PhotographerDaoImp();
                    Photographer photographer = pDao.getPhotographerById(pid);

                    name = photographer.getFname() + " " + photographer.getLname();
                } else {
                    String cid = q.getclientId();
                    ClientDao clientDao = new ClientDaoImpl();
                    Client client = clientDao.getClientbyId(cid);

                    name = client.getFname() + " " + client.getLname();

                }

                AnswerDao answ = new AnswerDaoImpl();
                cnt = answ.answerCount(q.getquestionId());

                a.add(q.gettitle());
                a.add(q.getquestion());

                a.add(name);

                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String date = sdf.format(q.getquestion_date());
                a.add(date);

                a.add(cnt + "");
                a.add(q.getquestionId() + "");

                ArrayList<QuestionCategory> category = (ArrayList<QuestionCategory>) ques.getCategory(q.getquestionId());

                for (QuestionCategory qu : category) {
                    b.add(qu.getCategory());

                }
                request.setAttribute("categories", b);
                String cat=b.toString();
                a.add(cat);
                b.clear();
            }
          
          
          
        request.getSession().setAttribute("searchedQues", a);
        request.getRequestDispatcher("View/Fourm/SearchQuest.jsp").forward(request, response);   
            
            
            

        } catch (Exception e) {
        }

    }

}
