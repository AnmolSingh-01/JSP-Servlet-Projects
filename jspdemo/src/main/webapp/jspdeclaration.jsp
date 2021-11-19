<html>
<body>
<h3> Hello World of java</h3>
<%!
  String makeItLower(String data){
	return data.toLowerCase();
}
%>

Lower case "hello world": <%= makeItLower("HELLO WORLD") %>
</body>

</html>