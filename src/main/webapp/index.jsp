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
        %>
        
        <h1>DB URL: <% out.print(dburl); %></h1>
    </body>
</html>
