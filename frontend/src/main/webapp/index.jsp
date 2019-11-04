<%@ page import="DTOs.HotelDetails" %>
<%@ page import="DTOs.Identifiers.CarIdentifier" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<html>
<body>
<% List<CarIdentifier> list = new ArrayList<CarIdentifier>(); %>
<% String test = new HotelDetails("1", "This is a DTO from contracts", "some address", 2.2f, list ,"Some city").getName(); %>
<h2>
    <% out.println(test); %>
</h2>
</body>
</html>
