/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Controller.DaoImpl.ReportedPhotographerDaoImpl;
import Model.Client;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import Model.Dao.ReportedPhotographerDao;
import Model.Photographer;
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

            ReportedPhotographerDao rDao = new ReportedPhotographerDaoImpl();
            ClientDao cDao = new ClientDaoImpl();           
            PhotographerDao pDao = new PhotographerDaoImp();
            
            ArrayList<ReportedPhotographer> rp = (ArrayList<ReportedPhotographer>) rDao.getAllReportedUsers();
          

            for(ReportedPhotographer r : rp) {
                
                String cname = "";
                
                String cid = r.getClientId();
                Client client = cDao.getClientbyId(cid);
                cname = client.getFname() + " " + client.getLname(); 
                
                String name = "";
                String pid = r.getPhotographerId();
                Photographer photographer = pDao.getPhotographerById(pid);
                name = photographer.getFname() + " " + photographer.getLname(); 
                
                a.add(cname);
                a.add(name);
                a.add(photographer.getEmail());
                a.add(r.getReason());
                a.add(r.getDescription());
                
                
            }

            request.setAttribute("reported", rp);
            request.setAttribute("details", a);
            request.getRequestDispatcher("View/Admin/ReportedPhotographer.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

   
}
