<%@page import="java.net.URLDecoder" %>
<html>

<body>

<h3>Training Portal</h3>

<%
	String favLang = "Java";

	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		
		for(Cookie cookie : cookies) {
			
			if("myApp.favoriteLanguage".equals(cookie.getName())) {
				favLang = URLDecoder.decode(cookie.getValue(), "UTF-8");
				break;
			}
		}
	}
%>

<h4>New Books for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Latest News Reports for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Hot Jobs for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<hr>

<a href="cookies-personalize-form.html">Personalize This Page</a>

</body>

</html>