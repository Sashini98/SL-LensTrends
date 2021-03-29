/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photograph;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HashMap<String, ArrayList<Integer>> photosAccording = new HashMap<>();

        ArrayList<String> dates = new ArrayList<>();
        ArrayList<Integer> inreview = new ArrayList<>();
        ArrayList<Integer> rejected = new ArrayList<>();
        ArrayList<Integer> approved = new ArrayList<>();

        PhotographDao dao = new PhotographDaoImpl();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdf2 = new SimpleDateFormat("MM/dd");

        try {
            for (int i = 7; i >= 0; i--) {

                Calendar cal = Calendar.getInstance();
                cal.add(Calendar.DATE, -i);
                ArrayList<Photograph> photographsByDate = dao.getPhotographsByDate(sdf.format(cal.getTime()));

                int inReviewCount = 0;
                int rejectedCount = 0;
                int approvedCount = 0;

                for (Photograph photograph : photographsByDate) {
                    if (photograph.getStateId() == 2) {
                        inReviewCount += 1;

                    } else if (photograph.getStateId() == 3) {
                        rejectedCount += 1;
                    } else if (photograph.getStateId() == 4) {
                        approvedCount += 1;
                    }
                }
                ArrayList<Integer> a = new ArrayList<>();
                a.add(inReviewCount);
                a.add(rejectedCount);
                a.add(approvedCount);
                photosAccording.put(sdf2.format(cal.getTime()), a);

                dates.add(sdf2.format(cal.getTime()));
                inreview.add(inReviewCount);
                rejected.add(rejectedCount);
                approved.add(approvedCount);

            }

            ArrayList<ArrayList> data = new ArrayList<>();
            data.add(dates);
            data.add(inreview);
            data.add(rejected);
            data.add(approved);

            Gson g = new Gson();
            String toJson = g.toJson(data);
            response.getWriter().write(toJson);

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }

}
