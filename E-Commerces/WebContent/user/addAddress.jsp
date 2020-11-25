<%@page import="com.UserAuthenticationModel.UserModel"%>
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
</head>
<body>
<form action="UserAddressController" method="post">
<h4>Fill the Address</h4>
<%
int product_id = Integer.parseInt(request.getParameter("product_id"));
//out.println(product_id);
int quantity = Integer.parseInt(request.getParameter("quantity"));
//out.println(quantity);
String user_email = (String)session.getAttribute("user");
List<UserModel> ulist = new UserServices().getUserIdByemail(user_email);
	for(UserModel umobj:ulist)
	{%>
		<!--User Id  -->
		<input type="hidden" value=<%=umobj.getUser_id() %> name="user_id">
	<%  }%>
	
		<!--<label>Product id</label>  -->
		<input type="hidden" name="product_id" class="form-control" value=<%=product_id%>>
		
		<!--<label>Quantity</label>  -->
		<input type="hidden" name="quantity" class="form-control" value=<%=quantity%>>

		<label>Full Name</label>
		<input type="text" name="full_name" class="form-control">
		
		<label>Address 1</label>
		<input type="text" name="address1" class="form-control">
		
		<label>Address 2</label>
		<input type="text" name="address2" class="form-control">
		
		<label>LandMark</label>
		<input type="text" name="landmark" class="form-control">
		
		<label>Pincode</label>
		<input type="text" name="postcode" class="form-control">
		
		<label>City</label>
		<input type="text" name="city" class="form-control">
		
		<label>Phone</label>
		<input type="text" name="phone" class="form-control">
		
		<button type="submit" class="btn btn-danger" name="btn" value="addAddress">SUBMIT</button>
		</div>



</form>
</body>
</html>