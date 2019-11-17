<%@ page import="utils.Utils" %>
<%@ page import="DTOs.Identifiers.StationIdentifier" %>
<%@ page import="DTOs.Identifiers.CarIdentifier" %>
<%@ page import="java.rmi.NotBoundException" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %><%--
  Created by IntelliJ IDEA.
  User: oliver
  Date: 2019-11-17
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String pickUpTime = request.getParameter("pickUpTime");
    String deliveryTime = request.getParameter("deliveryTime");
    String pickUpPlace = request.getParameter("pickUpPlace");
    String car = request.getParameter("car");
    Utils utilities = new Utils(pickUpPlace, car);
    /*
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
    List<CarIdentifier> carIds = utilities.getCarsFromServer(LocalDateTime.parse(pickUpTime, formatter), LocalDateTime.parse(deliveryTime, formatter));
    */
%>
<div>
    <h1>This is our car results:</h1>
    <%/*
        for (CarIdentifier carId : carIds) {
            out.println("<a href=\"AddDescriptionForEvent.jsp?id=" + carId.getId() + "\">" + carId.getId() + "</a>");
        };
    */%>
    <a href="findCarById.jsp?id=1">1</a>
    <a href="findCarById.jsp?id=2">2</a>
    <a href="findCarById.jsp?id=3">3</a>
</div>
</body>
</html>
