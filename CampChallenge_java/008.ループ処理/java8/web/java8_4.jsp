<%-- 
    Document   : java8_4
    Created on : 2017/09/29, 19:55:30
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
                int num = 1000;
                while(num > 100){
                    num = num / 2;
                }
                out.print(num);
            %>
        </h1>
    </body>
</html>
