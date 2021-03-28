<%-- 
    Document   : PhotographerProfileTem
    Created on : Mar 27, 2021, 6:15:38 PM
    Author     : ASUS
--%>

<%@page import="Model.portfolio_photograph"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<portfolio_photograph> m = (ArrayList<portfolio_photograph>) request.getAttribute("photos");

    for (int i = 0; i < m.size(); i += 3) {
        
//        String path = "";
//        path = m.get(i).getPath();
%>

<tr>

    <td>
        <div class="image">
            <img src="../../Resources/Img/Gallery Sample Images/<%= m.get(i).getPath()%>">
            <div class="middle">
                <div class="text"><span onclick="deleteportfoliophoto('<%= m.get(i).getId() %>','GroupProject/Resources/Img/Gallery Sample Images/<%= m.get(i).getPath()%>')">Delete</span></div>
            </div> 
            <div class="middle2">
                <div class="text2"><span>Glass</span></div>
            </div> 
        </div>
    </td>

    <% if ((i + 1) < m.size()) { %>
    <td>
        <div class="image">
            <img src="../../Resources/Img/Gallery Sample Images/<%= m.get(i+1).getPath()%>">
            <div class="middle">
                <div class="text"><span onclick="deleteportfoliophoto('<%= m.get(i+1).getId() %>','GroupProject/Resources/Img/Gallery Sample Images/<%= m.get(i+1).getPath()%>')">Delete</span></div>
            </div> 
            <div class="middle2">
                <div class="text2"><span>Glass</span></div>
            </div> 
        </div>
    </td>
    <%
        }
        if ((i + 2) < m.size()) {
    %>
    <td>
        <div class="image">
            <img src="../../Resources/Img/Gallery Sample Images/<%= m.get(i+2).getPath()%>">
            <div class="middle">
                <div class="text"><span onclick="deleteportfoliophoto('<%= m.get(i+2).getId() %>','GroupProject/Resources/Img/Gallery Sample Images/<%= m.get(i+2).getPath()%>')">Delete</span></div>
            </div> 
            <div class="middle2">
                <div class="text2"><span>Glass</span></div>
            </div> 
        </div>
    </td>
    <%
        }
    %>
</tr>
<%
    }
%>
