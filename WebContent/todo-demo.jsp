<%@ page import="java.util.*" %>
<html>

<body>

<form action="todo-demo.jsp">
	Add new item: <input type="text" name="theItem" />
	
	<input type="submit" value="Submit" />
</form>

<%
	List<String> items = (List<String>) session.getAttribute("myToDoList");

	if(items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	String theItem = request.getParameter("theItem");
	if(theItem != null && (!theItem.trim().equals(""))) {
		items.add(theItem);
		
		response.sendRedirect("todo-demo.jsp");
	}
%>

<hr>
<b>To Do List Items:</b> <br/>

<ol>
<%
	for(String item : items) {
		out.println("<li>" + item + "</li>");
	}
%>
</ol>

</body>

</html>