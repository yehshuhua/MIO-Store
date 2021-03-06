<%-- 
    Document   : processorder
    Created on : Nov 7, 2019, 9:58:27 AM
    Author     : os_hoangpn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            html, body {
                height: 100%;
                margin: 0px;
            }
        </style>
    </head>
    <body>
        <div id="header" style="background-color: #e8e8e8; box-sizing: border-box; height: 150px">
            <div style="float: left; margin-left: 20px">
                <a href="/MIOStore/index.jsp"><img src="resources/logo.png" ></a>
            </div>
            <div style="float: left; margin-left: 100px; margin-top: 50px; background-color: white; border: 3px solid coral;">
                <form action="items.jsp" method="GET">
                    <input type="text" name="item_name" placeholder="Search everything you need..." style="width: 600px; height: 40px; float: left; border: none">
                    <input type="image" style="width: 50px; height: 40px; float: left" src="resources/searchbtn.png">
                </form>
            </div>
            <% if (session.getAttribute("customerID") == null) { %>
            <div style="float: left; margin-left: 100px; margin-top: 50px;">
                <a href="login.jsp" style="font-size: 24px; text-decoration: none; font-weight: bold; color: darkcyan">Login</a>
                <br>
                No account? <a href="register.jsp" style="color: red">Register Now!</a>    
            </div>
            <% } else {%>
            <div style="float: left; margin-left: 100px; margin-top: 50px;">
                Hello <%= session.getAttribute("name")%>
                <a href="/MIOStore/logout.jsp">Logout</a>
                <br>
                <% String mainPage = "stafflogin.jsp?customerID=" + session.getAttribute("customerID") + "&name=" + session.getAttribute("name");%>
                <a href="<%= mainPage%>">Go to main page</a>
            </div>
            <% }%>
        </div>
        <div>
            <form action="onlineorder.jsp" method="GET" style="margin-left: 35%; margin-top: 10%">
                </h4><input type="text" name="orderID" style="margin-left: 3%" placeholder="Insert Order ID...">
                <input type="submit" style="margin-left: 3%" value="Search">
            </form>
        </div>
    </body>
</html>
