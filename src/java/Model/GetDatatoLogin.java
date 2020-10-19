/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DB.DB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kesh
 */
public class GetDatatoLogin {

    public boolean checkLoginDetails(String email, String password) {

         boolean b = false;
        
         try {

            ResultSet client = DB.search("SELECT * FROM Client Where Email = '" + email + "' AND Password = '" + password + "' ");
           
            if (client.next()) {
                 b = true;
            } else {
                b = false;
            }


        } catch (SQLException ex) {
            Logger.getLogger(GetDatatoLogin.class.getName()).log(Level.SEVERE, null, ex);
        }catch (NullPointerException e){
            b = false;
        }

        return b;
    }

}
