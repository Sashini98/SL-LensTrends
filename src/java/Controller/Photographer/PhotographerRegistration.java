/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class PhotographerRegistration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = "";
        int gender = 0;
        int planid = 1;
        String email = request.getParameter("email");
        System.out.println(email);
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String province = request.getParameter("province");
        String mobile = request.getParameter("mobile");
        String web = request.getParameter("web");
        String bio = request.getParameter("bio");
        String foa = request.getParameter("field");
        String pcode = request.getParameter("pcode");
        System.out.println(pcode);
        String g = request.getParameter("gender");
        String pw = request.getParameter("pass");

        System.out.println(pcode);
        int pc = Integer.parseInt(pcode);

        if (g.equalsIgnoreCase("male")) {
            gender = 1;
        } else {
            gender = 2;
        }
        System.out.println(gender);
        Date date = new Date();

        try {
            PhotographerDao photo = new PhotographerDaoImp();
            id = photo.getLastId();
            String pid;
            if (id != null) {
                String[] parts = id.split("P");
                String row = parts[1];
                int lastId = Integer.parseInt(row);
                int newId = lastId + 1;
                pid = Integer.toString(newId);
                pid = "P" + pid;
                System.out.println(pid);
            } else {
                pid = "P1";
            }
            Photographer p = new Photographer();
            p.setPhotographerId(pid);
            p.setEmail(email);
            p.setPassword(pw);
            p.setFname(fname);
            p.setLname(lname);
            p.setAddress_no(address);
            p.setCity(city);
            p.setProvince(province);
            p.setJoined_date(date);
            p.setGenderId(gender);
            p.setPlanId(planid);
            p.setMobile(mobile);
            p.setWebsite(web);
            p.setBio(bio);
            p.setFielsOfdInterest(foa);
            p.setPostalCode(pc);
            p.setActiveStatus(1);
            p.setState(0);
            p.setPoints(10);
            System.out.println(p.getActiveStatus());
            photo.addPhotographer(p);

            response.sendRedirect("View/login.jsp");

        } catch (Exception e) {
            System.out.println(e);
            response.sendRedirect("View/home.jsp");
        }
    }

}
