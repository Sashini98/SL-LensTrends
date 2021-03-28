/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photograph;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class LoadDashBoardData extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Calendar cal = Calendar.getInstance();
        ArrayList<Photograph> photos = new ArrayList<>();
        PhotographDao dao = new PhotographDaoImpl();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");

        for (int i = Calendar.SUNDAY; i <= Calendar.SATURDAY; i++) {
            try {
                cal.set(Calendar.DAY_OF_WEEK, i);
                ArrayList<Photograph> photographsByDate = dao.getPhotographsByDate(sdf.format(cal.getTime()));
                for (Photograph photograph : photographsByDate) {
                    photos.add(photograph);
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        
        

    }

}
