/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.SubPlanDaoImpl;
import Model.Dao.SubscriptionPlanDao;
import Model.SubscriptionPlan;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ViewSubPlan extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            ArrayList<String> a = new ArrayList();

            SubscriptionPlanDao subDao = new SubPlanDaoImpl();
            ArrayList<SubscriptionPlan> plan = (ArrayList<SubscriptionPlan>) subDao.getAllSubscriptionPlans();

            for (SubscriptionPlan s : plan) {
                a.add(s.getPid() + "");
                a.add(s.getPname());
                a.add(s.getPrice() + "");

                Date time = s.getTime();
                SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
                String t = sdf2.format(time);
                a.add(t);
            }

            request.setAttribute("plan", plan);
            request.setAttribute("details", a);
            request.getRequestDispatcher("View/Admin/SubPlanTemplate.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
