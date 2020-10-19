/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.GetDatatoLogin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class Login extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String pw = request.getParameter("pw");
        
        GetDatatoLogin gd = new GetDatatoLogin();
        boolean user = gd.checkLoginDetails(email, pw);
        
        if (user) {
            response.sendRedirect("Home.jsp");
        } else {
   
            response.sendRedirect("View/login.jsp");
        }
     
    }

}
