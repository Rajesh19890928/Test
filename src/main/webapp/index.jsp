<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            JavaClasses.ReadProperties obj = new JavaClasses.ReadProperties();
            String dburl = obj.read_Db_url();
            String db = obj.read_Db();
            String webserver = obj.webserver();
            String webserverv = obj.webserver_version();
        %>
        
        <h2>Database:</h2> <h3><% out.print(db); %></h3>
        <h2>Database URL:</h2> <h3><% out.print(dburl); %></h3>
        <h2>Webserver:</h2> <h3><% out.print(webserver); %></h3>
        <h2>WebServer Version:</h3> <h2><% out.print(webserverv); %></h3>
    </body>
</html>
