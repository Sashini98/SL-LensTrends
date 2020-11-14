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
public class ClientDetailsUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fname = request.getParameter("userfname");
        String lname = request.getParameter("userlname");
        String email = request.getParameter("useremail");
        String address = request.getParameter("useraddress");
        String city = request.getParameter("usercity");
        String province = request.getParameter("userprovince");

        Client c = (Client) request.getSession().getAttribute("loggedClient");
        String clientId = c.getClientId();

        if (fname != null) {
            try {
                ClientDao clientDao = new ClientDaoImpl();
                clientDao.updateClientFname(fname, clientId);

                response.getWriter().write("First Name Updated Successfully");

            } catch (SQLException ex) {
                response.getWriter().write("Error Updating First Name");
                ex.printStackTrace();
            }

        } else if (lname != null) {
            try {
                ClientDao clientDao = new ClientDaoImpl();
                clientDao.updateClientLname(lname, clientId);

                response.getWriter().write("Last Name Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Last Name");
                ex.printStackTrace();
            }

        } else if (email != null) {
            try {
                ClientDao clientDao = new ClientDaoImpl();
                clientDao.updateClientEmail(email, clientId);
                
                response.getWriter().write("Email Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Email");
                ex.printStackTrace();
            }

        } else if (address != null) {
            try {
                ClientDao clientDao = new ClientDaoImpl();
                clientDao.updateClientAddressNo(address, clientId);
                
                response.getWriter().write("Address Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Address");
                ex.printStackTrace();
            }

        } else if (city != null) {
            try {
                ClientDao clientDao = new ClientDaoImpl();
                clientDao.updateClientCity(city, clientId);
                
                response.getWriter().write("City Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating City");
                ex.printStackTrace();
            }

        } else if (province != null) {
            try {
                ClientDao clientDao = new ClientDaoImpl();
                clientDao.updateClientProvince(province, clientId);
                
                response.getWriter().write("Province Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Province");
                ex.printStackTrace();
            }

        } 
    }
}
