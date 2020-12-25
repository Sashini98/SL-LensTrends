/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.MessageDaoImpl;
import Model.Dao.MessageDao;
import Model.Messages;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ViewMessages extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            ArrayList<String> a = new ArrayList();

            MessageDao messageDao = new MessageDaoImpl();
            ArrayList<Messages> msg = (ArrayList<Messages>) messageDao.getAllMessages();

            for(Messages m : msg) {
                
                a.add(m.getEmail());
                a.add(m.getName());
                a.add(m.getMobile());
                a.add(m.getMessage());

                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String date = sdf.format(m.getMessage_date());
                a.add(date); 
            }

            request.setAttribute("message", msg);
            request.getRequestDispatcher("View/Admin/Message.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    

}
