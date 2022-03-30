<html>

<head><title>Student Confirmation Title</title></head>

<body>

	The student is confirmed: ${param.firstName} ${param.lastName}
	<br/> <br/>
	The student's favorite programming language: ${param.favoriteLanguage}
	<br/> <br/>
	The student's favorite food:
	<ul>
		<%
			String[] foods = request.getParameterValues("favoriteFood");
			
			if(foods != null) {
				for( String food : foods) {
					out.println("<li>" + food + "</li>");
				}
			}
		%>
	</ul>
	<br/> <br/>
	The student's country: ${param.country}

</body>

</html>