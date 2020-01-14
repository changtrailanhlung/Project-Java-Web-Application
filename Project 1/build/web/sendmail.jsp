<%-- 
    Document   : sendmail
    Created on : Nov 10, 2019, 6:43:17 PM
    Author     : lehon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 >Send-Email</h1>
        <% if (request.getAttribute("check") != null) { %>
        <h2 >Status:&ensp; In</h2>
        <% if (request.getAttribute("messages") == null) { %>
        <h2>Status-Email:&ensp; None</h2>
        <%} else {%>
        <h2>Status-Email:&ensp; <%= request.getAttribute("messages")%></h2><%}%>
        <a href="formEmail.jsp">Click here to Form-Send</a>
        <form  style="margin-top: 10px;" action="sendmail.jsp" method="post">
            <input type="hidden" value="<% request.setAttribute("check", null); %>"/>
            <input type="submit" value="Sign out"/>
        </form>
        <%} else {%>
        <h2>Status:&ensp; Out </h2>
        <a href="login.jsp">Click here to Sign in</a>
        <%}%>
    </body>
</html>

