<%-- 
    Document   : java3_1
    Created on : 2017/09/18, 4:55:37
    Author     : Yuuki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <%
             
            final int x = 30;
            int y = 5;
            
            out.print(x + y + "<br>");
            out.print(x - y + "<br>");
            out.print(x * y + "<br>");
            out.print(x / y + "<br>");

                
                
                
             %>
        </h1>
    </body>
</html>
