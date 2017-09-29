<%-- 
    Document   : java8_1
    Created on : 2017/09/29, 19:35:26
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
                long  num = 1;
                for(int i = 0; i<20;i++){
                    num =num * 8;
                    out.print(num + "<br>");
                }
                
                %>
                
        </h1>
    </body>
</html>
