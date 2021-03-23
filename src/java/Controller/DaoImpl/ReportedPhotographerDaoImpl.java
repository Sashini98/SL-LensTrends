/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.ReportedPhotographerDao;
import Model.ReportedPhotographer;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Madusha
 */
public class ReportedPhotographerDaoImpl implements ReportedPhotographerDao{

    @Override
    public List getAllReportedUsers() throws SQLException {
        
        ResultSet rp =DB.search("SELECT * FROM reported_photographer");
        ArrayList<ReportedPhotographer> a = new ArrayList();
        
        while(rp.next())
        {
            ReportedPhotographer p =new ReportedPhotographer();
            p.setReportId(rp.getInt("Report_Id"));
            p.setReason(rp.getString("Reason"));
            p.setDescription(rp.getString("Description"));
            p.setPhotographerId(rp.getString("Photographer_Id"));
            p.setClientId(rp.getString("Client_Id"));
            
            a.add(p);

        }
        return a;
    }

    @Override
    public int reportedUserCount() throws SQLException {
        int cnt=0;
        ResultSet num = DB.search("SELECT COUNT(*)AS rowcount FROM reported_photographer");
        num.next();
        cnt = num.getInt("rowcount");
        return cnt;
    }
    
}
