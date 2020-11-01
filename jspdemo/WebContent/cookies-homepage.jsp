<%@ page import="java.net.URLDecoder" %>

<html>

<body>

<h3>Training Portal</h3>

<!-- read the favorite programming language cookie -->
<%
	// the default ... if there are no cookies
	String favLang = "Java";

	// get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();
	
	// find our favorite language cookie
	if (theCookies != null) {
		
		for (Cookie tempCookie : theCookies) {
			
			if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
				
				// decode cookie data ... handle case of languages with spaces in them
				favLang = URLDecoder.decode(tempCookie.getValue());
				
				break;
			}
		}
	}
%>

<!--  now show a personalized page ... use the "favLang" cookie -->

<!-- show new books for this lang -->
<h4>New Books for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Latest News Reports for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Hot Jobs for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this Page</a>

</body>



</html>