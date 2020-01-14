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
                <form action="ControllerServlet" method="post">
                    <table>
                        <tr>
                            <td>Username</td>
                            <td><input type="text" name="user"></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="pass"></td>
                        </tr>                                             
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Login" style="width: 100%; margin: 5% -20%"></td>
                        </tr>
                    </table>                 
                </form>
                User: admin       
                <br/>
                Pass: admin
                <br/>
                <button><a href="welcome.jsp" style="text-decoration: none; color: black;">Exit</a></button>
            </center>
        </div>
    </body>
</html>
