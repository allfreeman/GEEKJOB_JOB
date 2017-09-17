<%-- 
    Document   : java5_2
    Created on : 2017/09/18, 6:01:13
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
               int x = 1;
               
               switch(x){
                   case 1:
                       out.print("one");
                       break;
                   case 2:
                       out.print("two");
                       break;
                   default:
                       out.print("想定外");
                       break;
               } 


            %>
        </h1>
    </body>
</html>
