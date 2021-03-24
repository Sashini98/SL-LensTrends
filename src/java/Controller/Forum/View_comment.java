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
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class View_comment extends HttpServlet {

  
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String answerId=request.getParameter("answId");
            int aid=parseInt(answerId);
            System.out.println("qid:"+aid);
        
        try {
             ArrayList<String> a = new ArrayList();
             CommentDao commentDao=new CommentDaoImpl();
             ArrayList<Comment> comm=(ArrayList<Comment>) commentDao.getCommentbyId(aid);
             
             for (Comment cm: comm)
             {
                 String name="";
                 
                  if (cm.getclientId() == null) {
                    String pid = cm.getPhotographerId();
                    PhotographerDao pDao = new PhotographerDaoImp();
                    Photographer photographer = pDao.getPhotographerById(pid);;

                    name = photographer.getFname() + " " + photographer.getLname();
                } else {
                    String cid = cm.getclientId();
                    ClientDao clientDao = new ClientDaoImpl();
                    Client client = clientDao.getClientbyId(cid);

                    name = client.getFname() + " " + client.getLname();
                   
                }
                  
                  

             }
             
             request.setAttribute("answers", a);
            
        } catch (Exception e) {
        }
       
    }

}
        
        
    
    


