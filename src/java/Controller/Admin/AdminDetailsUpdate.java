/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.AdminDaoImpl;
import Model.Admin;
import Model.Dao.AdminDao;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class AdminDetailsUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String fname = request.getParameter("userfname");
        String lname = request.getParameter("userlname");
        String email = request.getParameter("useremail");
        String address = request.getParameter("useraddress");
        String city = request.getParameter("usercity");
        String province = request.getParameter("userprovince");
        String mobile = request.getParameter("usermnum");

        Admin a = (Admin) request.getSession().getAttribute("loggedAdmin");
        String adminId = a.getAdminId();

        if (fname != null) {
            try {
                AdminDao adminDao = new AdminDaoImpl();
                adminDao.updateAdminFname(fname, adminId);

                response.getWriter().write("First Name Updated Successfully");

            } catch (SQLException ex) {
                response.getWriter().write("Error Updating First Name");
                ex.printStackTrace();
            }

        } else if (lname != null) {
            try {
                AdminDao adminDao = new AdminDaoImpl();
                adminDao.updateAdminLname(lname, adminId);

                response.getWriter().write("Last Name Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Last Name");
                ex.printStackTrace();
            }

        } else if (email != null) {
            try {
                AdminDao adminDao = new AdminDaoImpl();
                adminDao.updateAdminEmail(email, adminId);
                
                response.getWriter().write("Email Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Email");
                ex.printStackTrace();
            }

        } else if (address != null) {
            try {
                AdminDao adminDao = new AdminDaoImpl();
                adminDao.updateAdminAddressNo(address, adminId);
                
                response.getWriter().write("Address Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Address");
                ex.printStackTrace();
            }

        } else if (city != null) {
            try {
                AdminDao adminDao = new AdminDaoImpl();
                adminDao.updateAdminCity(city, adminId);
                
                response.getWriter().write("City Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating City");
                ex.printStackTrace();
            }

        } else if (province != null) {
            try {
                AdminDao adminDao = new AdminDaoImpl();
                adminDao.updateAdminProvince(province, adminId);
                
                response.getWriter().write("Province Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Province");
                ex.printStackTrace();
            }

        } else if(mobile != null){
            try {
                AdminDao adminDao = new AdminDaoImpl();
                adminDao.updateAdminMobile(mobile, adminId);
                
                response.getWriter().write("Mobile Updated Successfully");
            } catch (SQLException ex) {
                response.getWriter().write("Error Updating Mobile");
                ex.printStackTrace();
            }
        }
    }

    
}
