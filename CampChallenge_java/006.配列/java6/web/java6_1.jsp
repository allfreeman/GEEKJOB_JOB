<%-- 
    Document   : java6_1
    Created on : 2017/09/29, 18:56:42
    Author     : Yuuki
--%>

<%@page import="java.util.ArrayList"%>
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
                
            ArrayList<String> data = new ArrayList<String>(){
                {
                    add("10");
                    add("100");
                    add("soeda");
                    add("hayashi");
                    add("-20");
                    add("118");
                    add("END");
                                 
                }
            };
            
            for(int i = 0;i<data.size();i++){
                out.print(data.get(i) + "<br>");
            }
                
                
                
                
            %>
                
        </h1>
    </body>
</html>
