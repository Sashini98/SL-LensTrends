/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.ClientDaoImpl;
import Model.Client;
import Model.Dao.ClientDao;
import java.io.IOException;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class ClientRegister extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = "";
        int gender = 0;
        String email = request.getParameter("email");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String province = request.getParameter("province");
        String g = request.getParameter("gender");
        String pw = request.getParameter("pass");

        if (g.equalsIgnoreCase("male")) {
            gender = 1;
        } else {
            gender = 2;
        }

        
        try {
            ClientDao client = new ClientDaoImpl();
            id = client.getLastId();
            String cid ;
            if (id != null) {
                String[] parts = id.split("C");
                String row = parts[1];
                int lastId = Integer.parseInt(row);
                int newId = lastId + 1;
                cid = Integer.toString(newId);
                cid = "C" + cid;

            } else {
                cid = "C1";
            }

            Client c = new Client();
            c.setClientId(cid);
            c.setEmail(email);
            c.setFname(fname);
            c.setLname(lname);
            c.setAddress_no(address);
            c.setCity(city);
            c.setProvince(province);
            c.setGenderId(gender);
            c.setPassword(pw);
            c.setActiveStatus(1);

            client.addClient(c);

            try {

                String to = email;
                String subject = "Welcome To SL-Lens Trends!";
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
                emailtosend.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
                emailtosend.setSubject(subject);

//            email.setText(content);
                String htmlContent = "<html><head><title>TODO supply a title</title><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><link href=\"https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap\" rel=\"stylesheet\">\n"
                        + "<link href=\"https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap\" rel=\"stylesheet\"></head><body>\n"
                        + "<table style=\"text-align: center; width : 100%; height: 100%; border : 0; cellspacing : 0; cellpadding : 20px; background : url('https://images.unsplash.com/photo-1606056041654-f203e0351229?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=400&q=60'); background-repeat: no-repeat; background-size: cover; \">\n"
                        + "<tr><td><h3 style=\"font-family: 'Sansita Swashed', cursive; font-size: 56px; color: white;\">"
                        + "Hi " + fname + "!"
                        + "</h3><h3 style=\"font-family: 'Roboto Slab', serif; font-size: 34px; color: #0092cc;\">IT'S NICE TO MEET YOU</h3>\n"
                        + "<p style=\"font-family: 'Roboto Slab', serif; font-size: 34px; color: rgb(180,0,0); font-weight: bold;\">"
                        + "4560"
                        + "</p><p style=\"font-family: 'Roboto Slab', serif; font-size: 24px; color: #0092cc;\">Enter this pin number to </p>\n"
                        + "<p style=\"font-family: 'Roboto Slab', serif; font-size: 24px; color: rgb(11,207,1);\">Verify your email address</p>\n"
                        + "</td></tr></table></body></html>";
                emailtosend.setContent(htmlContent, "text/html");

                Transport.send(emailtosend);

            } catch (Exception e) {
                e.printStackTrace();
            }

            response.sendRedirect("View/login.jsp");

        } catch (Exception e) {
            System.out.println(e);
            response.sendRedirect("View/Home.jsp");
        }

    }

}
