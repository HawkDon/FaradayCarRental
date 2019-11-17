<%@ page import="DTOs.Identifiers.BookingIdentifier" %>
<%@ page import="utils.Utils" %><%--
  Created by IntelliJ IDEA.
  User: oliver
  Date: 2019-11-17
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    /*
    String id = request.getParameter("id");
    Utils utilities = new Utils();
    BookingIdentifier bId = utilities.addNewBooking(id);
    */

%>
<div>Result: <%= request.getParameter("id") %></div>

</body>
</html>
