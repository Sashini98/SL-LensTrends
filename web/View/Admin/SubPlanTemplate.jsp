<%-- 
    Document   : SubPlanTemplate
    Created on : Mar 15, 2021, 2:04:42 PM
    Author     : Madusha
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.SubscriptionPlan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<SubscriptionPlan> m = (ArrayList<SubscriptionPlan>) request.getAttribute("plan");

%>

<div class="box" id="box1">
    <h2><%=m.get(0).getPname()%></h2>
    <div class="icon1">
        <img src="../../Resources/Img/pot1.png">
    </div>
    <div class="hover-content">
        <p>$<%=m.get(0).getPrice()%><span style="font-family:'Poppins', sans-serif; font-size:50%">/month</span></p>
    </div>

    <div class="arrow" onclick="viewEdit(<%=m.get(0).getPid() %>);">
        <a type="button"><img src="../../Resources/Img/arrow.png"></a>
    </div>
</div>
        
<div class="box" id="box-color1">
    <h2><%=m.get(1).getPname()%></h2>
    <div class="icon">
        <img src="../../Resources/Img/pot2.png">
    </div> <br> <br> <br> 
    <div class="hover-content">
        <p>$<%=m.get(1).getPrice()%><span style="font-family:'Poppins', sans-serif; font-size:50%">/month</span></p>
    </div>

    <div class="arrow" onclick="viewEdit(<%=m.get(1).getPid() %>);">
        <a type="button"><img src="../../Resources/Img/arrow.png"></a> 
    </div> <br> <br>  <br> 

</div>
    
<div class="box" id="box-color2">
    <h2><%=m.get(2).getPname()%></h2>
    <div class="icon">                    
        <img src="../../Resources/Img/pot3.png">
    </div> <br> <br> <br>
    <div class="hover-content">
        <p>$<%=m.get(2).getPrice()%><span style="font-family:'Poppins', sans-serif; font-size:50%">/month</span></p>
    </div>

    <div class="arrow"  onclick="viewEdit(<%=m.get(2).getPid() %>);" >
        <a type="button"><img src="../../Resources/Img/arrow.png"></a>
    </div> <br> <br>  <br> 
</div>      
<script src="../../JS/Admin/PlanUpdate.js" type="text/javascript"></script>
