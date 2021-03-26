/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.ReportedPhotographDaoImpl;
import Model.Client;
import Model.Dao.ReportedPhotographDao;
import Model.Photograph;
import Model.ReportedPhotographs;
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
public class ReportPhoto extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Client c = (Client) request.getSession().getAttribute("loggedClient");
            Photograph p = (Photograph) request.getSession().getAttribute("photo");
            ReportedPhotographDao dao = new ReportedPhotographDaoImpl();
            if (!dao.hasPerviousReports(p.getId(), c.getClientId())) {
                String title = request.getParameter("title");
                String des = request.getParameter("description");

                String[] split = title.split("/");

                String formatTitle = "";

                for (int i = 1; i < split.length; i++) {
                    String string = split[i];
                    if (i == 1) {
                        formatTitle = string;
                    } else {
                        formatTitle = formatTitle + ", " + string;
                    }

                }

                ReportedPhotographs rp = new ReportedPhotographs();
                rp.setReason(formatTitle);
                rp.setDescription(des);
                rp.setPhotographId(p.getId());
                rp.setClientId(c.getClientId());
                rp.setPhotographerId(p.getPhotogrpherId());

                dao.addReportedPhotograph(rp);
                response.getWriter().write("Success");

            }else{
                response.getWriter().write("Photograph Already Reported!");
            
            }

        } catch (Exception e) {
            response.getWriter().write("Error");
            e.printStackTrace();
        }
    }

}
