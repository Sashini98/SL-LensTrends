package Controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class LogOut extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String location = (String) request.getParameter("loc");
            request.getSession().invalidate();
            if (location.equals("ch")) {
                response.sendRedirect("/GroupProject/View/Home.jsp");
            } else if (location.equals("ph")) {
                response.sendRedirect("/GroupProject/View/PhotographerHome.jsp");
            } else if (location.equals("cph")) {
                response.sendRedirect("/GroupProject/View/User/AdvancedSearch.jsp");
            } else if (location.equals("cpp")) {
                response.sendRedirect("View/User/PurchasePhoto.jsp");
            } else if (location.equals("fh")) {
                response.sendRedirect("View/Fourm/MainForum.jsp");
            } else if (location.equals("me")) {
                response.sendRedirect("View/Events/MainEventHome.jsp");
            } else {
                response.sendRedirect("/GroupProject/View/login.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
