/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.SubscriptionPlan;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Madusha
 */
public interface SubscriptionPlanDao {
    
     public void  updatePlanName(String name, int planId) throws SQLException;
     public void  updatePrice(double price, int planId) throws SQLException;
     public void  updateTime(Date time, int planId) throws SQLException;
     public SubscriptionPlan getSubscriptionPlanById(int id) throws SQLException;
     public List getAllSubscriptionPlans() throws SQLException;
}
