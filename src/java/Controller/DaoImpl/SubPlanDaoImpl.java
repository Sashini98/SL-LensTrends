/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.SubscriptionPlanDao;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author Madusha
 */
public class SubPlanDaoImpl implements SubscriptionPlanDao{

    @Override
    public void updatePlanName(String name, int planId) throws SQLException {
          DB.iud("UPDATE subscription plan SET Pname='" + name + "' WHERE Plan_id = '" + planId + "'");
    }

    @Override
    public void updatePrice(double price, int planId) throws SQLException {
        DB.iud("UPDATE subscription plan SET Price='" + price + "' WHERE Plan_id = '" + planId + "'");
    }

    @Override
    public void updateTime(Date time, int planId) throws SQLException {
       DB.iud("UPDATE subscription plan SET Time='" + time + "' WHERE Plan_id = '" + planId + "'");
    }
    
}
