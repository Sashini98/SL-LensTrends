/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Client;



/**
 *
 * @author kesh
 */
public interface ClientDao {
    
    public void  addClient(Client c);
    public void  updateClient(Client c);
    public void  deleteClient(String clientId);
    public Client  getClient(String clientId);
    
    
}
