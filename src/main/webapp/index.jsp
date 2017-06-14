<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Page</title>
    </head>
    <body>
        <h2>Profile Based Parameters</h2>
        
        <%
            JavaClasses.ReadProperties obj = new JavaClasses.ReadProperties();
            String dburl = obj.read_Db_url();
            String db = obj.read_Db();
            String webserver = obj.webserver();
            String webserverv = obj.webserver_version();
        %>
        
        <div style = "background-color: lightblue;">
        <h2>Database:</h2> <h3><% out.print(db); %></h3>
        <h2>Database URL:</h2> <h3><% out.print(dburl); %></h3>
        <h2>Webserver:</h2> <h3><% out.print(webserver); %></h3>
        <h2>WebServer Version:</h3> <h3><% out.print(webserverv); %></h3>
        </div>
        <div>
            <h1>From Jenkins Environment Variables</h1>
            <%String url = System.getenv("WEB_URL");%>
            Web URL = <% out.print(url); %>
        </div>    
    </body>
</html>
