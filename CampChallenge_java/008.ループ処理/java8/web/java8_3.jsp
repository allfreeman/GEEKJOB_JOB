<%-- 
    Document   : java8_3
    Created on : 2017/09/29, 19:50:17
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
                long  num = 0;
                for(int i = 0; i<=100;i++){
                    num =num + i;
                    out.print(num + "<br>");
                }
                
            %>
        </h1>
    </body>
</html>
