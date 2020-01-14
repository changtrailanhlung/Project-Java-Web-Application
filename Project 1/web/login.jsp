<%-- 
    Document   : login
    Created on : Nov 2, 2019, 12:11:29 PM
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
        <div style="width: 100%; padding-top: 5%">
            <center>
                <font color="red">
                <h1>LOGIN</h1>
                </font>
                <%
                    if (request.getAttribute("message") == null) {
                    } else {%>
                <h3 style="color: red"><% out.print(request.getAttribute("message")); %></h3>
                <%}%>
                <form action="Controller" method="post">
                    <table>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td> <input type="text" name="email"/></td>
                        </tr>
                        <td> 
                            Password
                        </td><td>  
                            <input type="password" name="password"/>
                        <td> 
                    </table>
                    <input style="width: 150px; height: 50px; margin-top: 20px;" type="submit" value="Sign in"/>
                </form>
                <br/>
                <b>Email: </b><i>nguyenlhFX02970@funix.edu.vn</i>
                <br/>
                <b>Password: </b><i>FX02970</i>
            </center>
        </div>
    </body>
</html>
