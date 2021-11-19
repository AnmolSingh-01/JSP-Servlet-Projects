<%@ page import="java.net.URLEncoder" %>
<html>
<head>
<title> Confirmation Page </title>
</head>

<%
// Read the form data
 String favLang = request.getParameter("favoriteLanguage");

// encode cookie data ... handle case of languages with spaces in them
favLang = URLEncoder.encode(favLang, "UTF-8");

// Create a cookie

Cookie theCookie = new Cookie("myApp.favoriteLanguage",favLang);

// Set the life span of the cookies

theCookie.setMaxAge(60*60*25*730);   //<-- for 2 year

// Send cookie to browser

response.addCookie(theCookie);

%>
<body>
Thanks ! we have set your favorite language : ${param.favoriteLanguage}

<br/><br/>
<a href="cookies-homepage.jsp"> Return to homepage </a>

</body>
</html>