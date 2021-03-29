/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.ReportedQuestionDaoImpl;
import Model.Client;
import Model.Dao.ReportedQuestionDao;
import Model.Photographer;
import Model.ReportedQuestion;
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
public class reportQuestion extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int qid=parseInt(request.getParameter("id"));
       String reason=request.getParameter("reason");
       String desc=request.getParameter("desc");
       
        ReportedQuestion rep=new ReportedQuestion();
        
       String id = "";
        String log="";
        try {
            String loggedAs = (String) request.getAttribute("loggedAs");
            if (loggedAs.equals("client")) {
                Client c = (Client) request.getSession().getAttribute("loggedClient");
                id = c.getClientId();
                log="client";
                rep.setClientId(id);
                System.out.println("cl"+id);
            } else if (loggedAs.equals("photographer")) {
                Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
                id = p.getPhotographerId();
                log="photog";
                rep.setPhotographerId(id);
                System.out.println("ph"+id);
                
            }
             
            rep.setReason(reason);
            rep.setDescription(desc);
            rep.setQuestionId(qid);
            
            ReportedQuestionDao repQues=new ReportedQuestionDaoImpl();
            repQues.addReportedQuestion(log,rep);
            
            response.sendRedirect("View/Fourm/BrowseQn.jsp");
            
    }
         catch (Exception e) {
           response.sendRedirect("View/Fourm/BrowseQn.jsp");
        }


}
}