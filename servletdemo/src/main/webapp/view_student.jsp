<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
<c:forEach var="tempStudent" items="${students_list}">
${tempStudent} <br/><br/>
</c:forEach>
</body>
</html>
