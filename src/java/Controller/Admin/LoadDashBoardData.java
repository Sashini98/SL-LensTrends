/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photograph;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class LoadDashBoardData extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Calendar cal = Calendar.getInstance();

        HashMap<String, ArrayList<Integer>> photosAccording = new HashMap<>();

        PhotographDao dao = new PhotographDaoImpl();

        System.out.println("awaaa");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdf2 = new SimpleDateFormat("MM/dd");

        try {
            for (int i = Calendar.SUNDAY; i <= Calendar.SATURDAY; i++) {
                cal.set(Calendar.DAY_OF_WEEK, i);
                ArrayList<Photograph> photographsByDate = dao.getPhotographsByDate(sdf.format(cal.getTime()));
                int inReviewCount = 0;
                int rejectedCount = 0;
                int approvedCount = 0;

                for (Photograph photograph : photographsByDate) {
                    if (photograph.getStateId() == 2) {
                        inReviewCount += 1;

                    } else if (photograph.getStateId() == 3) {
                        rejectedCount += 1;
                    } else if (photograph.getStateId() == 4) {
                        approvedCount += 1;
                    }
                }
                ArrayList<Integer> a = new ArrayList<>();
                a.add(inReviewCount);
                a.add(rejectedCount);
                a.add(approvedCount);
                photosAccording.put(sdf2.format(cal.getTime()),  a);
                System.out.println(sdf2.format(cal.getTime()) +"  " + a.get(0));
            }
            
            request.getSession().setAttribute("data", photosAccording);
            response.sendRedirect("View/Admin/AdminDashboard.jsp");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }

}
