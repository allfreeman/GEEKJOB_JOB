<%-- 
    Document   : java8_2
    Created on : 2017/09/29, 19:46:46
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
        <h1><%
                String word = "word";
                for(int i = 0; i<30;i++){
                    word =word + "A";
                    
                }
                out.print(word);
            %>
        </h1>
    </body>
</html>
