/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Filters;

import Model.Client;
import Model.Photographer;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kesh
 */
public class FilterLoggedClientOrPhotographer implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
       
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;

        Client loggedClient = (Client) req.getSession().getAttribute("loggedClient");
        Photographer loggedPhotographer = (Photographer) req.getSession().getAttribute("loggedPhotographer");

        if (loggedClient != null) {
            request.setAttribute("loggedAs", "client");

        }else if (loggedPhotographer != null){
            request.setAttribute("loggedAs", "photographer");
        
        }else{
            request.setAttribute("loggedAs", "nl");
        }
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        
    }
    
}
