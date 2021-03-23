/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Event;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class EventPost extends HttpServlet {

    

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("hi");
        String name=request.getParameter("name");
        String type=request.getParameter("type");
        String date=request.getParameter("dob");
        String time=request.getParameter("time");
        String hall=request.getParameter("hall");
        String venue=request.getParameter("venue");
        String street=request.getParameter("street");
        String city=request.getParameter("city");
        String province=request.getParameter("province");
        
        System.out.println("name"+name);
        System.out.println("datr"+date);
        System.out.println("time"+time);
        System.out.println("city"+city);        
//        Date date = new Date();
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        String d = sdf.format(date);
//        
//        LocalTime t=event.geteventTime();
//        SimpleDateFormat sdf1 = new SimpleDateFormat("hh.mm aa");
//        String time=sdf1.format(t);
//        
        
        
    }

    

}
