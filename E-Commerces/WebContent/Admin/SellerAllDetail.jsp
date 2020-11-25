<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-commerces</title>
</head>
<body>
<%

int s_id = Integer.parseInt(request.getParameter("seller_id"));
out.println(s_id);

%>
<input type="text" value=<%out.println(s_id); %>>


</body>
</html>