<%@ page import="java.util.*" %>

<html>

<body>

<!-- Step 1: Create HTML form-->
<form action="todo-demo.jsp">
	Add new item: <input type="text" name="theItem" />
	
	<input type="submit" value="Submit" />
</form>

<!-- Step 2: Add new item to "To Do" list -->
<%
	// get the To Do items from the session
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	
	// if a To Do item doesn't exist, then create a new one
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	// see if there is form data to add
	String theItem = request.getParameter("theItem");
	if ((theItem != null) && (!theItem.trim().equals(""))) {
		items.add(theItem);
	}
%>

<!-- Step 3: Display all "ToDo items from session -->
<hr>>
<b>To Do List Items:</b> <br/>

<ol>
	<%
		for (String temp: items) {
			out.println("<li>" + temp + "</ki>");
		}
	%>
</ol>

</body>

</html>