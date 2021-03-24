/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.SubscriptionPlanDao;
import Model.SubscriptionPlan;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Madusha
 */
public class SubPlanDaoImpl implements SubscriptionPlanDao {

    @Override
    public void updatePlanName(String name, int planId) throws SQLException {
        DB.iud("UPDATE `subscription plan` SET Pname='" + name + "' WHERE Plan_id = '" + planId + "'");
    }

    @Override
    public void updatePrice(double price, int planId) throws SQLException {
        DB.iud("UPDATE `subscription plan` SET Price='" + price + "' WHERE Plan_id = '" + planId + "'");
    }

    @Override
    public void updateTime(Date time, int planId) throws SQLException {
        DB.iud("UPDATE `subscription plan` SET Time='" + time + "' WHERE Plan_id = '" + planId + "'");
    }

    @Override
    public SubscriptionPlan getSubscriptionPlanById(int id) throws SQLException {
        ResultSet plan = DB.search("SELECT * FROM `subscription plan` WHERE Plan_id = '" + id + "'");

        if (plan.next()) {
            System.out.println(plan.getTime("Time"));
            Date time = plan.getTime("Time");
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//            String t = sdf.format(time);

            SubscriptionPlan p = new SubscriptionPlan(plan.getInt("Plan_id"), plan.getString("Pname"),
                    plan.getDouble("Price"), time);

            return p;
        } else {
            return null;
        }
    }

    @Override
    public List getAllSubscriptionPlans() throws SQLException {
        ResultSet plan = DB.search("SELECT * FROM `subscription plan`");
        ArrayList<SubscriptionPlan> s = new ArrayList();

        while (plan.next()) {
            SubscriptionPlan a = new SubscriptionPlan();
            a.setPid(plan.getInt("Plan_id"));
            a.setPname(plan.getString("Pname"));
            a.setPrice(plan.getDouble("Price"));
            a.setTime(plan.getTime("Time"));

            s.add(a);

        }
        return s;
    }

}
