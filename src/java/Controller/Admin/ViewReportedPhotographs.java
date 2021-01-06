/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographDaoImpl;
import Controller.DaoImpl.ReportedPhotographDaoImpl;
import Model.Client;
import Model.Dao.ClientDao;
import Model.Dao.PhotographDao;
import Model.Dao.ReportedPhotographDao;
import Model.Photograph;
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
            ClientDao cDao = new ClientDaoImpl();
            PhotographDao pDao = new PhotographDaoImpl();

            for (ReportedPhotographs p : photos) {
                String cname = "";
                String cid = p.getClientId();
                Client client = cDao.getClientbyId(cid);

                cname = client.getFname() + " " + client.getLname();                
                a.add(cname);
                
                String path = "";
                int pid = p.getPhotographId();
                Photograph photograph = pDao.getPhotographById(pid);

                path = photograph.getPath();
                a.add(path);
            }

            request.setAttribute("photos", photos);
            request.setAttribute("client", a);
            request.getRequestDispatcher("View/Admin/ReportedPhotographs.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
