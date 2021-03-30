/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Messages;
import java.sql.SQLException;
import java.util.List;


/**
 *
 * @author Madusha
 */
public interface MessageDao {
    
    public List getAllMessages() throws SQLException;
    public void addMessage(Messages m) throws SQLException;
}
