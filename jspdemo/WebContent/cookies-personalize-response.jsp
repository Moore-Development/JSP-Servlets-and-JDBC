<%@ page import="java.net.URLEncoder" %>

<html>

<head><title>Confirmation</title></head>

<%
	// read form data
	String favLang = request.getParameter("favoriteLanguage");

	// encode cookie data ... handle case of languages with spaces in them
	favLang = URLEncoder.encode(favLang, "UTF-8");

	// create the cookie
	Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
	
	// set the life span ... total number of seconds (yuk!)
	theCookie.setMaxAge(60*60*24*3655);
	
	// send cookie to browser
	response.addCookie(theCookie);
%>

<body>

	Thanks! We set your favorite language to: ${param.favoriteLanguage}
	
	<br/><br/>
	
	<a href="cookies-homepage.jsp">Return to homepage.</a>

</body>

</html>