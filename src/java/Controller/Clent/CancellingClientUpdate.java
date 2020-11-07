/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.ClientDaoImpl;
import Model.Client;
import Model.Dao.ClientDao;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class CancellingClientUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String field = request.getParameter("canceledit");
         
        Client c = (Client) request.getSession().getAttribute("loggedClient");
        String clientid = c.getClientId();

        if (field.equals("fname")) {
            try {
                ClientDao clientdao = new ClientDaoImpl();
                
                Client client = clientdao.getClientbyID(clientid);
                response.getWriter().write(client.getFname());
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("lname")) {
            try {
                ClientDao clientdao = new ClientDaoImpl();
                
                Client client = clientdao.getClientbyID(clientid);
                response.getWriter().write(client.getLname());
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("email")) {
            try {
                ClientDao clientdao = new ClientDaoImpl();
                
                Client client = clientdao.getClientbyID(clientid);
                response.getWriter().write(client.getEmail());
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("address")) {
            try {
               ClientDao clientdao = new ClientDaoImpl();
                
                Client client = clientdao.getClientbyID(clientid);
                response.getWriter().write(client.getAddress_no());
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("city")) {
            try {
                ClientDao clientdao = new ClientDaoImpl();
                
                Client client = clientdao.getClientbyID(clientid);
                response.getWriter().write(client.getCity());
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("province")) {
            try {
                ClientDao clientdao = new ClientDaoImpl();
                
                Client client = clientdao.getClientbyID(clientid);
                response.getWriter().write(client.getProvince());
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } 
    }

}
