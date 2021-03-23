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
import Model.ReportedPhotographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class GetUserCount extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ArrayList<Integer> a = new ArrayList();
            
            ReportedPhotographerDao rDao = new ReportedPhotographerDaoImpl();
            int count = rDao.reportedUserCount();
            
            ClientDao cDao = new ClientDaoImpl();
            int c1 = cDao.getClientCount(1);
            int c2 = cDao.getClientCount(0);
            
            PhotographerDao pDao = new PhotographerDaoImp();
            int p1 = pDao.getPhotographerCount(1);
            int p2 = pDao.getPhotographerCount(0);
            
            a.add(count);
            a.add(c1);
            a.add(p1);
            a.add(c2);
            a.add(p2);
            
            request.setAttribute("counts", a);
            request.getRequestDispatcher("View/Admin/UserCountTem.jsp").forward(request, response);           
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    }

    

}

