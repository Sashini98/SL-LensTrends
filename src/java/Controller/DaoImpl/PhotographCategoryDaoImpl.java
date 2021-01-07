/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PhotographCategoryDao;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author kesh
 */
public class PhotographCategoryDaoImpl implements PhotographCategoryDao {

    @Override
    public String getCategory(int id) throws SQLException {
        ResultSet category = DB.search("SELECT Category FROM photograph_category WHERE Id = '" + id + "'");
        
        if (category.next()) {
            return category.getString("Category");
        } else {
            return null;
        }
    }

}
