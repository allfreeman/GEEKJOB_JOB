<%-- 
    Document   : java2_1
    Created on : 2017/09/18, 4:47:37
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
            String name = "yuuki";
            String place = "Tokyo";
            Integer age = 22;
            
            out.print("名前：" + name + "<br>");
            out.print("出身：" + place + "<br>");
            out.print("年齢：" + age + "<br>");
            %>
        </h1>
    </body>
</html>
