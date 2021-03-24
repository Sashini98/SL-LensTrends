/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.CommentDaoImpl;
import Model.Client;
import Model.Comment;
import Model.Dao.CommentDao;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class Add_comment extends HttpServlet {

    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int aid=parseInt(request.getParameter("ansid"));
        String comment=request.getParameter("comm");
         String id = "";
        
        Comment comm=new Comment();
        
        comm.setanswerId(aid);
        comm.setcomment(comment);
        
        try {
            CommentDao comDao=new CommentDaoImpl();
                    
            
            if (request.getSession().getAttribute("loggedPhotographer") == null) {

                Client c = (Client) request.getSession().getAttribute("loggedClient");
                id = c.getClientId();
                comm.setclientId(id);

                try {

                    comDao.addCommentifClient(comm);

                } catch (Exception e) {
                    e.printStackTrace();
                }

            } else {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                id = p.getPhotographerId();
                comm.setPhotographerId(id);
                try {

                    comDao.addCommentifPhotographer(comm);

                } catch (Exception e) {
                    e.printStackTrace();
                }

        response.sendRedirect("View/Fourm/BrowseQn.jsp");
        
    }
        
            
        } catch (Exception e) {
            response.sendRedirect("View/Fourm/BrowseQn.jsp");
        }
        
        

    

}
}
