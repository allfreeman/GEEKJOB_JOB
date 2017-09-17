<%-- 
    Document   : java5_1
    Created on : 2017/09/18, 5:51:48
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
            
            if(x == 1)
            out.print("1です！");
            else if(x ==2)
            out.print("プログラミングキャンプ");
            else
            out.print("その他です！");          
            
            %>
        </h1>
    </body>
</html>
