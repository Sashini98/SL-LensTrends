/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.SubPlanDaoImpl;
import Model.Dao.SubscriptionPlanDao;
import Model.SubscriptionPlan;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
public class ViewSubPlanDetails extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int planid = Integer.parseInt(request.getParameter("id"));
            
            SubscriptionPlanDao sDao = new SubPlanDaoImpl();
            SubscriptionPlan plan = sDao.getSubscriptionPlanById(planid);

            ArrayList<String> c = new ArrayList();

            Date time = plan.getTime();
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
            String t = sdf.format(time);

            c.add(plan.getPname());
            c.add(plan.getPrice() + "");
            c.add(t);
            
            Gson g = new Gson();
            String toJson = g.toJson(c);
            response.getWriter().write(toJson);

        } catch (SQLException ex) {
            Logger.getLogger(ViewSubPlanDetails.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
