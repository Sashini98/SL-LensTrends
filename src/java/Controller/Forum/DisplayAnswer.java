/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.AnswerDaoImpl;
import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.CommentDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Answer;
import Model.Client;
import Model.Comment;
import Model.Dao.AnswerDao;
import Model.Dao.ClientDao;
import Model.Dao.CommentDao;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class DisplayAnswer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String quesid = request.getParameter("qid");
        int qid = parseInt(quesid);

        try {
            ArrayList<String> a = new ArrayList();
            ArrayList<String> b = new ArrayList();
            ArrayList<ArrayList<String>> c = new ArrayList();

            AnswerDao answerDao = new AnswerDaoImpl();
            ArrayList<Answer> answ = (ArrayList<Answer>) answerDao.getAllAnswers(qid);

            for (Answer an : answ) {
                String name = "";
                String pid = an.getPhotographerId();
                PhotographerDao pDao = new PhotographerDaoImp();
                Photographer photographer = pDao.getPhotographerById(pid);;

                name = photographer.getFname() + " " + photographer.getLname();

                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String date = sdf.format(an.getanswerDate());

                a.add(an.getanswer());
                a.add(an.getPhotographerId());
                a.add(date);      
                 int aid = an.getanswerId();
                a.add(String.valueOf(aid));

                

                CommentDao commentDao = new CommentDaoImpl();
                ArrayList<Comment> comm = (ArrayList<Comment>) an.getComments();
                
                for(Comment cm : comm)
                { String name1="";
                 
                  if (cm.getclientId() == null) {
                    String phid = cm.getPhotographerId();
                    Photographer photog = pDao.getPhotographerById(phid);

                    name1 = photog.getFname() + " " + photog.getLname();
                } else {
                    String cid = cm.getclientId();
                    ClientDao clientDao = new ClientDaoImpl();
                    Client client = clientDao.getClientbyId(cid);

                    name1 = client.getFname() + " " + client.getLname();
                   
                }
                    
                    b.add(cm.getcomment());
                    b.add(name1);
                    
                    
                }
                
                System.out.println("b  "+b); 
                b.add("end");
               
                

            }

            System.out.println("b last "+b);  
            
            
                 


            request.setAttribute("answers", a);
            request.setAttribute("comments", b);

            request.getRequestDispatcher("View/Fourm/Answer.jsp").forward(request, response);

        } catch (Exception e) {
        }
    }

}
