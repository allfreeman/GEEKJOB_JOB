<%-- 
    Document   : java5_3
    Created on : 2017/09/18, 6:08:21
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
                char x = 0x3041;
                
                switch(x){
                    case 0x3041:
                        out.print("日本語");
                        break;
                    case 'A':
                        out.print("英語");
                        break;
                }
                
                        
                
                
                
            
            %>
        
        </h1>
    </body>
</html>
