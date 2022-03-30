<%@page import="java.net.URLEncoder" %>
<html>

<head><title>Confirmation</title></head>

<%
	String favLang = URLEncoder.encode(request.getParameter("favoriteLanguage"), "UTF-8");

	Cookie favLangCookie = new Cookie("myApp.favoriteLanguage", favLang);
	
	favLangCookie.setMaxAge(60*60*24*365);
	
	response.addCookie(favLangCookie);
%>

<body>

	Thanks! We set your favorite language to: ${param.favoriteLanguage}
	
	<br/><br/>
	
	<a href="cookies-homepage.jsp">Return to homepage</a>

</body>

</html>