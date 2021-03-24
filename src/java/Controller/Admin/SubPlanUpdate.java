/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.SubPlanDaoImpl;
import Model.Dao.SubscriptionPlanDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class SubPlanUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String time = request.getParameter("time");
        double price = Integer.parseInt(request.getParameter("price"));
        int pid = Integer.parseInt(request.getParameter("id"));

        if (name != null) {
            try {
                SubscriptionPlanDao sDao = new SubPlanDaoImpl();
                sDao.updatePlanName(name, pid);

                response.getWriter().write("Name Updated Successfully");

            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Name");
                ex.printStackTrace();
            }
//        } else if (time != null) {
//            try {
//                SubscriptionPlanDao sDao = new SubPlanDaoImpl();
//                sDao.updateTime(time, pid);
//
//                response.getWriter().write("Time Updated Successfully");
//
//            } catch (SQLException ex) {
//                response.getWriter().write("Error Updating Time");
//                ex.printStackTrace();
//            }
//        } else if (time != null) {
            try {
                SubscriptionPlanDao sDao = new SubPlanDaoImpl();
                sDao.updatePrice(price, pid);

                response.getWriter().write("Price Updated Successfully");

            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Price");
                ex.printStackTrace();
            }
        }

    }
}
