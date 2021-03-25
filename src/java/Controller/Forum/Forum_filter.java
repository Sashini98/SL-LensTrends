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
import java.text.SimpleDateFormat;
import java.util.ArrayList;

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
             ArrayList<String> a = new ArrayList();
            ArrayList<String> b = new ArrayList();
        
        QuestionDao qDao=new QuestionDaoImpl();
        ArrayList<Question> questByKeyword = (ArrayList<Question>) qDao.getQuestByKeyWord(keyword);
        
        if(questByKeyword==null)
        {
            questByKeyword=new ArrayList<>();
        }
        
        for (Question q : questByKeyword) {
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

                ArrayList<QuestionCategory> category = (ArrayList<QuestionCategory>) qDao.getCategory(q.getquestionId());

                for (QuestionCategory qu : category) {
                    b.add(qu.getCategory());

                }
                request.setAttribute("categories", b);
                String cat=b.toString();
                a.add(cat);
                b.clear();
            }
            
            request.setAttribute("questions", a);
            System.out.println("a "+a);
            request.getRequestDispatcher("View/Fourm/quest.jsp").forward(request, response);
            System.out.println("done");
        
        }
        catch (Exception e) {
            e.printStackTrace();
        }

    }

}


