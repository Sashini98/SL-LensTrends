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
import DB.DB;
import Model.Client;
import Model.Dao.AnswerDao;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import Model.Dao.QuestionDao;
import Model.Photographer;
import Model.Question;
import com.google.gson.Gson;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
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
public class forumH extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            ArrayList<String> a = new ArrayList();

            QuestionDao questionDao = new QuestionDaoImpl();
            ArrayList<Question> quest = (ArrayList<Question>) questionDao.getAllQuestions();

//            ResultSet ques = DB.search("SELECT * FROM Question");
            for (Question q : quest) {
                String name = "";
                int cnt = 0;

                if (q.getclientId() == null) {
                    String pid = q.getPhotographerId();
                    PhotographerDao pDao = new PhotographerDaoImp();
                    Photographer photographer = pDao.getPhotographerById(pid);;

                    name = photographer.getFname() + " " + photographer.getLname();
                } else {
                    String cid = q.getclientId();
                    ClientDao clientDao = new ClientDaoImpl();
                    Client client = clientDao.getClientbyId(cid);
                    System.out.println(q.getclientId());

                    name = client.getFname() + " " + client.getLname();
                    System.out.println(client.getFname());
                }

                AnswerDao answ = new AnswerDaoImpl();
                cnt = answ.answerCount(q.getquestionId());
                System.out.println(cnt);

                a.add(q.gettitle());
                a.add(q.getquestion());
                a.add(q.getcategory());

                a.add(name);

                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String date = sdf.format(q.getquestion_date());
                a.add(date);

                a.add(cnt + "");

            }
//            while (ques.next()) {
//                Question q = new Question();
//                String name = "";
//                
//
//                q.settitle(ques.getString("title"));
//                q.setquestion(ques.getString("Question"));
//                q.setcategory(ques.getString("Category"));
//                q.setquestion_date(ques.getDate("Question_Date"));
//
//                try {
//                    q.setclientId(ques.getString("Client_Id"));
//
//                    String cId = ques.getString("Client_Id");
//                    
//                    ClientDao clientDao= new ClientDaoImpl();
//                    clientDao.getClientbyId(cId);
//                    
//                    
//                    ResultSet client = DB.search("SELECT Fname,Lname FROM Client where Client_Id='" + cId + "'");
//
//                    if (client.next()) {
//                        name = client.getNString("Fname") + " " + client.getNString("Lname");
//
//                    }
//                } catch (Exception e) {
//                    q.setPhotographerId(ques.getString("Photographer_Id"));                    
//                    String pId = ques.getString("Photographer_Id");
//                    
//                    
//                    PhotographerDao pDao= new PhotographerDaoImp();
//                    pDao.getPhotographerById(pId);
//                    
//                    ResultSet photo = DB.search("SELECT Fname,Lname FROM Photographer where Photographer_Id='" + pId + "'");
//
//                    if (photo.next()) {
//                        name = photo.getNString("Fname") + " " + photo.getNString("Lname");
//
//                    }
//                }
//
//                try {
//                    int qid = ques.getInt("Question_Id");
//                    ResultSet num = DB.search("SELECT COUNT(*)AS rowcount FROM Answer WHERE Question_Id=" + qid + "");
//                    num.next();
//                    cnt = num.getInt("rowcount");
//                } catch (Exception e) {
//                }
//                a.add(q.gettitle());
//                a.add(q.getquestion());
//                a.add(q.getcategory());
//                
//                a.add(name);
//
//                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
//                String date = sdf.format(q.getquestion_date());
//                a.add(date);       
//                           
//                a.add(cnt + "");
//
//               
//            }

            request.setAttribute("questions", a);
            request.getRequestDispatcher("View/Fourm/quest.jsp").forward(request, response);
        } catch (Exception e) {
e.printStackTrace();
        }
    }

}
