/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.AdminDaoImpl;
import Model.Admin;
import Model.Dao.AdminDao;
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
public class AdminRegistration extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         int id = 0;
        String email = request.getParameter("email");
        String type = request.getParameter("type");
        String pw = request.getParameter("pass");
        
        try {
            AdminDao ad=new AdminDaoImpl();
            id=ad.getLastId();
            int newId = id + 1;
            
            
            Admin admin=new Admin();
            admin.setAdminId(newId);
            admin.setEmail(email);
            admin.setPassword(pw);
            admin.setType(type);
            
            ad.addAdmin(admin);
            
        } catch (Exception e) {
        }
       
    }

}
