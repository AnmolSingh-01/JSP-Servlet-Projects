<%@ page import="java.net.URLDecoder" %>
<html>
 <body>
 <h3> Training Portal</h3>
 
 <!--  Read the favorite programming language cookie -->
 <%
 // The Dafault ... If there are no cookies
 
 String favLang = "Java";
 
 // Get the cookies from the browser
 
 Cookie[] theCookies = request.getCookies();
 
 // Find our favorite Lnaguage cookie
 
 if(theCookies != null){
	 for(Cookie tempCookie : theCookies){
		 
		 if("mpApp.favoritelanguage".equals(tempCookie.getName())){
			 favLang = URLDecoder.decode(tempCookie.getValue(), "UTF-8"); // For white spacin handling we are using  URLDecoder.decode
			 break;
		 }
	 }
 }
 
 
 %>
 
 <!--  Now show your personalize page ... use the "favLang variable" -->
 
 <!--  Show new books for language -->
 
 <h4> New Books for <%= favLang %></h4>
 
 <ul>
       <li> something new </li>
       <li> Some extra books</li>
 </ul>
 
 
 <h4>Latest technologies for <%= favLang %></h4>
 
 <ul>
       <li>React etc etc</li>
       <li> Learn javaScript fast</li>
 </ul>
 
 
  <h4>Latest Jobs for <%= favLang %></h4>
 
 <ul>
       <li>React etc etc</li>
       <li> Learn javaScript fast</li>
 </ul>
 <hr>
 
 <a href="cookies-personalize-form.html"> Personalize this page </a>
 
 
 
 </body>
</html>