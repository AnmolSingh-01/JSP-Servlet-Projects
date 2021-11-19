<html>
<head><title>Student Confirmation Title</title></head>
<body>
The student is confirmed: ${param.firstName} ${param.lastName}

<br/><br/>

Favorite programming Languages are : <br/>
<!--  Display lists of "FavoriteLanguages using scriplet-->

<ul>
<%
String[] langs = request.getParameterValues("favoriteLanguage");
if(langs != null){
for(String tempLang : langs){
	out.println("<li>" + tempLang + "</li>");
}
}
else{
	out.println("please select at least on Programming Language");
}
%>
</ul>
</body>
</html>
