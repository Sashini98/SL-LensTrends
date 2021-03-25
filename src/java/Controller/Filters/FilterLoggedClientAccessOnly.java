/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Filters;

import Model.Client;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class FilterLoggedClientAccessOnly implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        Client c = (Client) req.getSession().getAttribute("loggedClient");

        if (c != null) {
            chain.doFilter(request, response);
        } else {
            // 404 
            if (request instanceof HttpServletRequest) {
                String url = ((HttpServletRequest) request).getRequestURL().toString();
                String queryString = ((HttpServletRequest) request).getQueryString();

                String[] splitUrl = url.split("/");
                System.out.println(url);
                System.out.println(queryString);
                if (splitUrl.length == 5) {
                    if (queryString == null) {
                        req.getSession().setAttribute("URL", "/" + splitUrl[3] + "/" + splitUrl[4]);

                    } else {
                        req.getSession().setAttribute("URL", "/" + splitUrl[3] + "/" + splitUrl[4] + "?" + queryString);
                    }
                } else {
                    req.getSession().setAttribute("URL", "/" + splitUrl[3] + "/" + splitUrl[4] + "/" + splitUrl[5] + "/" + splitUrl[6] + "?" + queryString);

                }
            }

            resp.sendRedirect("/GroupProject/View/login.jsp?loc=LCaof");
//            resp.sendRedirect("/GroupProject/View/Error404.jsp");
        }

    }

    @Override
    public void destroy() {

    }

}
