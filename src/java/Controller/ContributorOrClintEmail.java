/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Controller.DaoImpl.AdminDaoImpl;
import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Admin;
import Model.Client;
import Model.Dao.AdminDao;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class ContributorOrClintEmail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String user = request.getParameter("a");
            String email = (String) request.getSession().getAttribute("emailForward");

            if (user.equals("u")) {
                request.getSession().setAttribute("loggingAS", "user");
                ClientDao clientDao = new ClientDaoImpl();
                Client clientbyEmail = clientDao.getClientbyEmail(email);

                String fname = clientbyEmail.getFname();
                String password = clientbyEmail.getPassword();
                String to = email;
                String subject = "Password Of your SL-Lens Trends account";
                String content = request.getParameter("content");

                System.out.println(content);

                Properties p = System.getProperties();
                p.put("mail.smtp.host", "smtp.gmail.com");
                p.put("mail.smtp.port", "587");
                p.put("mail.smtp.auth", "true");
                p.put("mail.smtp.starttls.enable", "true");

                Authenticator authenticator = new Authenticator() {

                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {

                        PasswordAuthentication authentication = new PasswordAuthentication("sllenstrends@gmail.com", "12345678Kesh");
                        return authentication; //To change body of generated methods, choose Tools | Templates.
                    }

                };

                Session session = Session.getInstance(p, authenticator);

                MimeMessage emailtosend = new MimeMessage(session);
                emailtosend.setFrom(new InternetAddress("sllenstrends@gmail.com"));

                //abc@gmail.com,ddd@gmail.com
                emailtosend.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(to));
                emailtosend.setSubject(subject);

//            email.setText(content);
                String htmlContent = "<html><head><title>TODO supply a title</title><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><link href=\"https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap\" rel=\"stylesheet\">\n"
                        + "<link href=\"https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap\" rel=\"stylesheet\"></head><body>\n"
                        + "<table style=\"text-align: center; width : 100%; height: 100%; border : 0; cellspacing : 0; cellpadding : 20px; background : url('https://images.unsplash.com/photo-1606056041654-f203e0351229?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=400&q=60'); background-repeat: no-repeat; background-size: cover; \">\n"
                        + "<tr><td><h3 style=\"font-family: 'Sansita Swashed', cursive; font-size: 56px; color: white;\">"
                        + "Hello " + fname + "!"
                        + "</h3><h3 style=\"font-family: 'Roboto Slab', serif; font-size: 34px; color: #0092cc;\">Your Password is</h3>\n"
                        + "<p style=\"font-family: 'Roboto Slab', serif; font-size: 34px; color: rgb(180,0,0); font-weight: bold;\">"
                        + "" + password
                        + "</p><p style=\"font-family: 'Roboto Slab', serif; font-size: 24px; color: #0092cc;\">Login with the given password</p>\n"
                        + "<p style=\"font-family: 'Roboto Slab', serif; font-size: 24px; color: rgb(11,207,1);\">recommend you to change your password immediately  after you log in </p>\n"
                        + "</td></tr></table></body></html>";
                emailtosend.setContent(htmlContent, "text/html");

                Transport.send(emailtosend);

                request.getRequestDispatcher("/View/ResetPwd2.jsp").forward(request, response);

            } else if (user.equals("c")) {
                request.getSession().setAttribute("loggingAS", "photographer");
                PhotographerDao photographerDao = new PhotographerDaoImp();
                Photographer photographerByEmail = photographerDao.getPhotographerByEmail(email);
                String fname = photographerByEmail.getFname();
                String password = photographerByEmail.getPassword();
                String to = email;
                String subject = "Password Of your SL-Lens Trends account";
                String content = request.getParameter("content");

                System.out.println(content);

                Properties p = System.getProperties();
                p.put("mail.smtp.host", "smtp.gmail.com");
                p.put("mail.smtp.port", "587");
                p.put("mail.smtp.auth", "true");
                p.put("mail.smtp.starttls.enable", "true");

                Authenticator authenticator = new Authenticator() {

                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {

                        PasswordAuthentication authentication = new PasswordAuthentication("sllenstrends@gmail.com", "12345678Kesh");
                        return authentication; //To change body of generated methods, choose Tools | Templates.
                    }

                };

                Session session = Session.getInstance(p, authenticator);

                MimeMessage emailtosend = new MimeMessage(session);
                emailtosend.setFrom(new InternetAddress("sllenstrends@gmail.com"));

                //abc@gmail.com,ddd@gmail.com
                emailtosend.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(to));
                emailtosend.setSubject(subject);

//            email.setText(content);
                String htmlContent = "<html><head><title>TODO supply a title</title><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><link href=\"https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap\" rel=\"stylesheet\">\n"
                        + "<link href=\"https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap\" rel=\"stylesheet\"></head><body>\n"
                        + "<table style=\"text-align: center; width : 100%; height: 100%; border : 0; cellspacing : 0; cellpadding : 20px; background : url('https://images.unsplash.com/photo-1606056041654-f203e0351229?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=400&q=60'); background-repeat: no-repeat; background-size: cover; \">\n"
                        + "<tr><td><h3 style=\"font-family: 'Sansita Swashed', cursive; font-size: 56px; color: white;\">"
                        + "Hello " + fname + "!"
                        + "</h3><h3 style=\"font-family: 'Roboto Slab', serif; font-size: 34px; color: #0092cc;\">Your Password is</h3>\n"
                        + "<p style=\"font-family: 'Roboto Slab', serif; font-size: 34px; color: rgb(180,0,0); font-weight: bold;\">"
                        + "" + password
                        + "</p><p style=\"font-family: 'Roboto Slab', serif; font-size: 24px; color: #0092cc;\">Login with the given password</p>\n"
                        + "<p style=\"font-family: 'Roboto Slab', serif; font-size: 24px; color: rgb(11,207,1);\">recommend you to change your password immediately  after you log in </p>\n"
                        + "</td></tr></table></body></html>";
                emailtosend.setContent(htmlContent, "text/html");

                Transport.send(emailtosend);

                request.getRequestDispatcher("/View/ResetPwd2.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            
            request.setAttribute("accountDouble", "false");
            request.setAttribute("msg", "Error while accessing Password");
            request.getRequestDispatcher("/View/ResetPwd.jsp").forward(request, response);
            ex.printStackTrace();
        }
    }

}
