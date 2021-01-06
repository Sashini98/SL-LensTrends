/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Photograph;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author kesh
 */
public interface PhotographDao {
    
    public List<Photograph> getPhotographByKeyWord(String keyword);
    public List getAllPhotographs() throws SQLException;
    public Photograph getPhotographById(int id) throws SQLException;
    
}
