<%@page import="com.AdminInsertDataServices.SellerDisplay"%>
<%@page import="com.SellerModel.SellerModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-commerces</title>
<link rel="stylesheet" href="../Assest/BootStrap/bootstrap.css">
</head>
<body>
<%
List<SellerModel> plist = new SellerDisplay().showAllSeller();
%>
<form action="SellerAllDetail.jsp" method="post">
<table class="table">
<tr>
<th>Seller id</th>
<th>Seller Image</th>
<th>Name</th>
<th>Email</th>
<th>city</th>
<th>PhoneNumber</th>
<th>Apply Date</th>
</tr>


<%for(SellerModel smobj:plist){ 
%>

<tr>
<td><a href="SellerAllDetail.jsp?seller_id=<%=smobj.getS_id() %>"><%=smobj.getS_id() %></a></td>
<td><img src="../Assest/images/uploads/<%=smobj.getSellerimage() %>" style="width:50px; height:50px"></td>
<td><%=smobj.getName() %></td>
<td><%=smobj.getEmail() %></td>
<td><%=smobj.getCity() %></td>
<td><%=smobj.getPhonenumber() %></td>
<td><%=smobj.getJoined_date() %>
</tr>
<%} 


%>





</table>
</form>
</body>
</html>