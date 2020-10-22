/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class AskQues extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String title=request.getParameter("title");
        System.out.println(title);
        
        String body=request.getParameter("body");
        System.out.println(body);
        
        String category=request.getParameter("Category");
        System.out.println(category);
        
         String tags=request.getParameter("tags");
        System.out.println(tags);
    }


}
