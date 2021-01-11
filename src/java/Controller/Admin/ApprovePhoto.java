/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ApprovePhoto extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        int pid = request.getParameter("id");
        int status = 3;

        try {
            PhotographDao pDao = new PhotographDaoImpl();
//            pDao.updatePhotographState(status, pid);

            response.getWriter().write("Approved Successfully.");
        } 
        catch (Exception ex) {
            response.getWriter().write("Error Occured.");
            ex.printStackTrace();

        }

    }

}
