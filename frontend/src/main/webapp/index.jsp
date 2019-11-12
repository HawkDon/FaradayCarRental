<%@ page import="DTOs.HotelDetails" %>
<%@ page import="DTOs.Identifiers.CarIdentifier" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<html>
<body>
<% List<CarIdentifier> list = new ArrayList<CarIdentifier>(); %>
<% String test = new HotelDetails("1", "This is a DTO from contracts", "some address", 2.2f, list ,"Some city").getName(); %>

<% /*IBooking helloWorld = Client.getIBooking();*/ %>
<h2>Faraday Car Rental Main Page!</h2>

<a href="addBooking.jsp">Add new booking</a>
<br />
<a href="showBookingDetails.jsp">Show booking details</a>
<!--<form action="main.jsp" method = "GET">
    First Name: <input type = "text" name = "first_name">
    <br />
    Last Name: <input type = "text" name = "last_name" />
    <input type = "submit" value = "Submit" />
</form>-->

<h2></h2>
</body>
</html>
