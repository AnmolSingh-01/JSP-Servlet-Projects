<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*,com.anmolsingh.jsp.tagdemo.Student" %>

<%
// Just create some sample data ,,.........normally by MVC

List<Student> data = new ArrayList<>();  // Empty ArrayList

data.add(new Student("Anmol","Singh",false));
data.add(new Student("ujjwal","Singh",true));
data.add(new Student("ujjwal","Pandit",false));


pageContext.setAttribute("myStudents",data);
%>
<html>
<body>
<table border="1">
<tr>
<th>First Name </th>
<th>Last Name </th>
<th>Gold Customer</th>
</tr>
<c:forEach var="tempStudent" items="${myStudents}">
<tr>
<td>${tempStudent.firstName} </td>
<td>${tempStudent.lastName} </td>
<td>

<c:if test="${tempStudent.goldCustomer}">
Special Discount
</c:if>

<c:if test="${not tempStudent.goldCustomer}">
No Discount
</c:if>
</td>
</tr>
<br/>
</c:forEach>
</table>
</body>
</html>

