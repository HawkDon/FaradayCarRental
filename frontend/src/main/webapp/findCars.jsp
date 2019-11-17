<%--
  Created by IntelliJ IDEA.
  User: oliver
  Date: 2019-11-17
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="findCarsResult.jsp" method="GET">
    <div>
        <label>Enter pick up time:</label>
    <input type="datetime-local" name="pickUpTime"/>
    </div>
    <div>
        <label>Enter delivery time:</label>
    <input type="datetime-local" name="deliveryTime"/>
    </div>
        <div>
        <label>Enter pick up station:</label>
    <input type="text" name="pickUpPlace" />
    </div>
        <div>
    <label>Enter type of car:</label>
        <input type="text" name="car" />
    </div>
    <input type="submit" value="Search"/>
</form>
</body>
</html>
