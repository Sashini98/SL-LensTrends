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
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class forumH_personal extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String id = "";
        String log="";
        try {
            String loggedAs = (String) request.getAttribute("loggedAs");
            if (loggedAs.equals("client")) {
                Client c = (Client) request.getSession().getAttribute("loggedClient");
                id = c.getClientId();
                log="client";
            } else if (loggedAs.equals("photographer")) {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                id = p.getPhotographerId();
                log="photog";
            }
            
           
            ArrayList<String> a = new ArrayList();
            ArrayList<String> b = new ArrayList();

            QuestionDao questionDao = new QuestionDaoImpl();
            ArrayList<Question> quest = (ArrayList<Question>) questionDao.getQuestionsByPerson(log, id);

//            ResultSet ques = DB.search("SELECT * FROM Question");
            for (Question q : quest) {
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

                cnt = q.getanswerCount();

                a.add(q.gettitle());
                a.add(q.getquestion());

                a.add(name);

                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String date = sdf.format(q.getquestion_date());
                a.add(date);

                a.add(cnt + "");
                a.add(q.getquestionId() + "");

                ArrayList<QuestionCategory> category = (ArrayList<QuestionCategory>) questionDao.getCategory(q.getquestionId());

                for (QuestionCategory qu : category) {
                    b.add(qu.getCategory());

                }
                request.setAttribute("categories", b);
                String cat = b.toString();
                a.add(cat);
                b.clear();
            }
            request.setAttribute("questions", a);
            request.getRequestDispatcher("View/Fourm/quest.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
