
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
public class CancellingAdminUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String field = request.getParameter("canceledit");

        Admin a = (Admin) request.getSession().getAttribute("loggedAdmin");
        String adminid = a.getAdminId();

        if (field.equals("fname")) {
            try {
                AdminDao adminDao = new AdminDaoImpl();

               Admin admin = adminDao.getAdminById(adminid);
                response.getWriter().write(admin.getFname());

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("lname")) {
            try {
               AdminDao adminDao = new AdminDaoImpl();

                Admin admin = adminDao.getAdminById(adminid);
                response.getWriter().write(admin.getLname());
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("email")) {
            try {
               AdminDao adminDao = new AdminDaoImpl();

                Admin admin = adminDao.getAdminById(adminid);
                response.getWriter().write(admin.getEmail());

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("address")) {
            try {
               AdminDao adminDao = new AdminDaoImpl();

                Admin admin = adminDao.getAdminById(adminid);
                response.getWriter().write(admin.getAddress_no());
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("city")) {
            try {
                AdminDao adminDao = new AdminDaoImpl();

                Admin admin = adminDao.getAdminById(adminid);
                response.getWriter().write(admin.getCity());
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("province")) {
            try {
                AdminDao adminDao = new AdminDaoImpl();

                Admin admin = adminDao.getAdminById(adminid);
                response.getWriter().write(admin.getProvince());
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else if (field.equals("mobile")) {
            try {
                AdminDao adminDao = new AdminDaoImpl();

                Admin admin = adminDao.getAdminById(adminid);
                response.getWriter().write(admin.getMobile());
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    

}
