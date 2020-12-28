/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ReportedPhotographDaoImpl;
import Model.Dao.ReportedPhotographDao;
import Model.ReportedPhotographs;
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
public class ViewReportedPhotographs extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            ArrayList<String> a = new ArrayList();

            ReportedPhotographDao reportDao = new ReportedPhotographDaoImpl();
            ArrayList<ReportedPhotographs> photos = (ArrayList<ReportedPhotographs>) reportDao.getAllReportedPhotos();

            for (ReportedPhotographs p : photos) {

                a.add(p.getClientId());

            }

            request.setAttribute("photos", photos);
            request.getRequestDispatcher("View/Admin/ReportedPhotographs.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
