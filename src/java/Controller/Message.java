/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Controller.DaoImpl.MessageDaoImpl;
import Model.Dao.MessageDao;
import Model.Messages;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class Message extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String mail = request.getParameter("mail");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");
        
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String d = sdf.format(date);
        
        LocalTime t = java.time.LocalTime.now();
        SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm:ss");
        String time = sdf.format(t);
        
        Messages m=new Messages();
        
        m.setName(name);
        m.setEmail(mail);
        m.setMobile(mail);
        m.setMessage(message);
        m.setMessage_date(date);
        
        MessageDao mDao=new MessageDaoImpl();
        try {
            mDao.addMessage(m);
        } catch (SQLException ex) {
            Logger.getLogger(Message.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
                

    }

}
