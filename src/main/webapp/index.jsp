<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.Properties"%>
<%@page import="java.io.IOException"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            java.io.InputStream is = getClass().getClassLoader().getResourceAsStream("my.properties");
            java.util.Properties p = new Properties();
            p.load(is);
            String name = p.getProperty("databse_url");
        %>
        <h1>DB URL: <% out.print(name); %></h1>
    </body>
</html>
