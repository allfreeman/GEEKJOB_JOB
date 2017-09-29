<%-- 
    Document   : java6_2
    Created on : 2017/09/29, 19:09:56
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
        <h1> <%
                
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
            
            out.print("変更前" + "<br>");
            for(int i = 0;i<data.size();i++){
                out.print(data.get(i) + "<br>");
            }
            
            out.print("変更後" + "<br>");
            
            for(int i = 0;i<data.size();i++){
                String search = data.get(i);
                if(search == "soeda"){
                    data.set(i,"33");
                    break;
                }                
            }            
                
            for(int i = 0;i<data.size();i++){
                out.print(data.get(i) + "<br>");
            }    
                
                
            %></h1>
    </body>
</html>
