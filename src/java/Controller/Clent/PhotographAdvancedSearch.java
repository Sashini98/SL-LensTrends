/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

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
public class PhotographAdvancedSearch extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        System.out.println(request.getParameter("sortBy"));
        System.out.println(request.getParameter("orientation"));
        System.out.println(request.getParameter("sizePixel"));
        System.out.println(request.getParameter("minWidth"));
        System.out.println(request.getParameter("maxWidth"));
        System.out.println(request.getParameter("minHeight"));
        System.out.println(request.getParameter("maxHeight"));
        System.out.println(request.getParameter("people"));
        System.out.println(request.getParameter("gender"));
        System.out.println(request.getParameter("undiscovered"));
    }
}
