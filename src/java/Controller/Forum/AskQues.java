/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import DB.DB;
import Model.Client;
import Model.Photographer;
import Model.Question;
import java.time.LocalDateTime;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
            throws ServletException, IOException {
        String title = request.getParameter("title");
        System.out.println(title);

        String body = request.getParameter("body");
        System.out.println(body);

        String category = request.getParameter("Category");
        System.out.println(category);

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String d = sdf.format(date);

        System.out.println(d);

        String id = "";

        if (request.getSession().getAttribute("loggedPhotographer") == null) {
             
            Client c = (Client) request.getSession().getAttribute("loggedClient");
            id = c.getClientId();
            
            
            
            try {
                DB.iud("INSERT INTO question ( title, Question, Category, Question_Date, Client_Id) VALUES ( '"+title+"', '"+body+"', '"+category+"', '"+d+"', '"+id+"');");

            } catch (Exception e) {
                e.printStackTrace();
            }

        } else {
            Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            id = p.getPhotographerId();
            try {
               DB.iud("INSERT INTO question ( title, Question, Category, Question_Date, Photographer_Id) VALUES ( '"+title+"', '"+body+"', '"+category+"', '"+d+"', '"+id+"');");

            } catch (Exception e) {
            e.printStackTrace();
            }
        }
        System.out.println(id);

    }

}
