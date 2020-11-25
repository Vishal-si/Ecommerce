<%@page import="java.util.Map"%>
<%@page import="com.UserAuthenticationModel.UserAddressModel"%>
<%@page import="com.UserAuthenticationService.UserServices"%>
<%@page import="com.UserAuthenticationModel.UserModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-commerce</title>
<link rel="stylesheet"  href="${pageContext.request.contextPath}/Assest/BootStrap/bootstrap.css">
<!-- <link rel="stylesheet" href="../Assest/BootStrap/bootstrap.css"> -->
<script src="../Assest/JQuery/jquery-3.5.1.min.js"></script>
</head>
<body>
<div class="jumbotron bg-primary">
<h3 class="text-white text-center"><i>Check All Detail</i></h3>
</div>

<div class="container">

<form action="UserAddressController" method="post">

<%
int product_id = Integer.parseInt(request.getParameter("product_id"));
//out.println("product id" +product_id);  

int quantity = Integer.parseInt(request.getParameter("quantity"));
//out.println("Quantity "+ quantity);

String date = request.getParameter("date");

String user_email = (String)session.getAttribute("user");
//out.println("Customer email "+ user_email);  


%>


<%
List<UserModel> userslistcheck = new UserServices().getUserIdByemail(user_email);
%>
	<% for(UserModel addressumobj:userslistcheck)
		{
		boolean  usobj = new UserServices().checkAddress(addressumobj.getUser_id());
		if(usobj==true)
		{%>
			<a href="#">Update Address</a>
		<%} %>
		<% if(usobj==false)
		{
			RequestDispatcher rd = request.getRequestDispatcher("addAddress.jsp?product_id="+product_id+"&quantity="+quantity+"&date="+date);
			rd.forward(request, response);
			//response.sendRedirect("user/addAddress.jsp?product_id="+product_id+"&quantity="+quantity+"&date="+date);

		
		} %>		
  	<%}%>


<%
List<UserModel> userslist = new UserServices().getUserIdByemail(user_email);
	for(UserModel addressumobj:userslist)
	{
		List<UserAddressModel> addressList = new UserServices().getAddressById(addressumobj.getUser_id());
		for(UserAddressModel addobj:addressList)
		{%>
		<div id="normal">
		
		<label>Full Name</label>
		<select class="form-control" name="full_name">
		<option><%=addobj.getFull_name() %></option>
		</select>
		
		<label>Address 1</label>
		<select class="form-control" name="address_1">
		<option><%=addobj.getAddress1() %></option>
		</select>
		
		<label>Address 2</label>
		<select class="form-control" name="address2">
		<option><%=addobj.getAddress2() %></option>
		</select>
		
		<label>LandMark Area</label>
		<select class="form-control" name="landmark">
		<option><%=addobj.getLandmark() %></option>
		</select>
		
		<label>Pincode</label>
		<select class="form-control" name="pincode">
		<option><%=addobj.getPostcode() %></option>
		</select>
		
		<label>City</label>
		<select class="form-control" name="city">
		<option><%=addobj.getCity() %></option>
		</select> 	
		
		<label>Phone</label>
		<select class="form-control" name="phone">
		<option><%=addobj.getPhone() %></option>
		</select>
		
		<div class="text-center mt-3 mb-3">
		<button type="submit" class="btn btn-primary" name="btn" value="next">SUBMIT</button>
		</div>
		
		</div>
		
				
			<%}
  	}
%>





<%
List<UserModel> ulist = new UserServices().getUserIdByemail(user_email);
	for(UserModel umobj:ulist)
	{%>
		<!--<label>User Id By email </label> -->
		
		<input type="hidden" value=<%=umobj.getUser_id() %> name="user_id">
	<%}%>
		
	

		
		
		
		<!--Product Id  -->
		<input type="hidden" class="form-control" value=<%=product_id %> name="product_id"><!-- hidden --> 
		
		<!--quantity  -->
		<input type="hidden" class="form-control" value=<%=quantity %> name="quantity"><!-- hidden  -->
		
		<!-- shiping date -->
		<input type="hidden" class="form-control" value=<%=date %> name="date"> <!-- hidden -->
	
</form>


</div>
</body>
</html>