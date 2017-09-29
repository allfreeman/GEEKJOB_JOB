<%-- 
    Document   : java7_1
    Created on : 2017/09/29, 19:25:33
    Author     : Yuuki
--%>

<%@page import="java.util.HashMap"%>
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
                
            HashMap<String, String> data = new HashMap<String, String>(){
                {
                    put("1", "AAA");
                    put("hello","world");
                    put("soeda","33");
                    put("20","20");                                                     
                }
            };           
                
            
                out.print(data.get("1") + "<br>");
                out.print(data.get("hello") + "<br>");
                out.print(data.get("soeda") + "<br>");
                out.print(data.get("20") + "<br>");
                
                
                
            %>
            
        </h1>
    </body>
</html>
