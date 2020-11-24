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
import java.io.PrintWriter;
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

            String[] parts = id.split("C");
            String row = parts[1];
            int lastId = Integer.parseInt(row);
            int newId = lastId + 1;
            String cid = Integer.toString(newId);
            cid = "C" + cid;

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
            
            response.sendRedirect("View/login.jsp");

        } catch (Exception e) {
            System.out.println(e);
             response.sendRedirect("View/home.jsp");
        }

    }

}
