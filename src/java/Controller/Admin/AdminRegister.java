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
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class AdminRegister extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = "";
        int gender = 0;
        String email = request.getParameter("email");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String mobile = request.getParameter("mnumber");
        String address = request.getParameter("add");
        String city = request.getParameter("city");
        String province = request.getParameter("pro");
        String gen = request.getParameter("gender");
        String pw = request.getParameter("pass");
        String t = request.getParameter("type");

        if (gen == "male") {
            gender = 1;
        } else {
            gender = 2;
        }

        try {
            AdminDao admin = new AdminDaoImpl();
            id = admin.getLastId();

            String[] parts = id.split("A");
            String row = parts[1];
            int lastId = Integer.parseInt(row);
            int newId = lastId + 1;
            String aid = Integer.toString(newId);
            aid = "A" + aid;
            
            Admin a = new Admin();
            a.setAdminId(aid);
            a.setEmail(email);
            a.setFname(fname);
            a.setLname(lname);
            a.setMobile(mobile);
            a.setAddress_no(address);
            a.setCity(city);
            a.setProvince(province);
            a.setGenderId(gender);
            a.setPassword(pw);
            a.setType(t);
                       
            admin.addAdmin(a);

        } catch (Exception e) {
            System.out.println(e);
        }

    }

}
