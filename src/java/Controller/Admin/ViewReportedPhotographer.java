/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ReportedPhotographerDaoImpl;
import Model.Dao.ReportedPhotographerDao;
import Model.ReportedPhotographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ViewReportedPhotographer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            ArrayList<String> a = new ArrayList();

            ReportedPhotographerDao messageDao = new ReportedPhotographerDaoImpl();
            ArrayList<ReportedPhotographer> rp = (ArrayList<ReportedPhotographer>) messageDao.getAllReportedUsers();

            for(ReportedPhotographer r : rp) {
                
                a.add(r.getReason());
                a.add(r.getDescription());
                
            }

            request.setAttribute("reported", rp);
            request.getRequestDispatcher("View/Admin/ReportedPhotographer.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

   
}
