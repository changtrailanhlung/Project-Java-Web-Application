<%-- 
    Document   : welcome
    Created on : Nov 3, 2019, 8:06:08 AM
    Author     : lehon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            const LoadBlog = () => {
                location.href = "LoadMainPageServlet";
            }
        </script>
    </head>
    <body onload="LoadBlog()">
        <%--<%@include file="Posts.jsp" %>--%>
    </body>
</html>
