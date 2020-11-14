/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

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
public class AdminDasboardHandler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String tab = request.getParameter("selectedTab");
        System.out.println(tab);
        if (tab.equals("summary")) {
            request.getRequestDispatcher("/View/Admin/AdminSummery.jsp").forward(request, response);
        }else if (tab.equals("notification")) {
            request.getRequestDispatcher("/View/Admin/AdminNotification.jsp").forward(request, response);

        }else if (tab.equals("photomanage")) {
            request.getRequestDispatcher("/View/Admin/ManagePhoto.jsp").forward(request, response);
            
        }else if (tab.equals("photoapproval")) {
            request.getRequestDispatcher("/View/Admin/ApprovePhoto.jsp").forward(request, response);
            
        }else if (tab.equals("forum")) {
            request.getRequestDispatcher("/View/Admin/ManageForum.jsp").forward(request, response);
            
        }else if (tab.equals("user")) {
            request.getRequestDispatcher("/View/Admin/ManageUser.jsp").forward(request, response);
            
        }else if (tab.equals("setting")) {
            request.getRequestDispatcher("/View/Admin/AdminProfile.jsp").forward(request, response);
            
        }
        
    }

}
