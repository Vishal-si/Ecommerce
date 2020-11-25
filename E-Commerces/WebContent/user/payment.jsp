<%@page import="com.UserAuthenticationService.UserServices"%>
<%@page import="com.UserAuthenticationModel.UserModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Paybal</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Assest/BootStrap/bootstrap.css">
</head>
<body>
<div class="jumbotron bg-primary">

<h3 class="text-center text-white"><i>Payment Mode</i></h3>
</div>

<div class="container">

<div class="card border-primary" style="widht:200px; height:460px">
<form action ="PaymentController" method="post">
<%
float netPrice = Float.parseFloat(request.getParameter("netPrice"));
//out.println(netPrice);

int product_id = Integer.parseInt(request.getParameter("product_id"));
//out.println(product_id);

int quantity=Integer.parseInt(request.getParameter("quantity"));
//out.println(quantity);

String date = request.getParameter("date");

String user_email = (String)session.getAttribute("user");
//out.println(user_email);

List<UserModel> ulist = new UserServices().getUserIdByemail(user_email);

%>

<%for(UserModel umobj:ulist)
	{%>
		<!--User Id  -->
		<input type="hidden" value=<%=umobj.getUser_id() %> name="user_id">
	<%  }%>

<div class="card-header bg-primary">
<h4 class="text-white"><i>Choose Payment Mode</i></h4>
</div>

<div class="card-body">
<input type="hidden" value=<%=product_id %> name="product_id" class="form-control">
<input type="hidden" value=<%=quantity %> name="quantity" class="form-control">
<input type="hidden" value=<%=date %> name="date" class="form-control">
<input type="hidden" value=<%=netPrice %> name="amount" class="form-control">


<input type="radio" name="payment" class="form-control" value="cash of deliver">Cash Of Deliver
<input type="radio" name="payment" class="form-control" value="net banking">Net Banking
<input type="radio" name="payment" class="form-control" value="credit card">Credit Card
<input type="radio" name="payment" class="form-control" value="debit card">Debit Card <br></br>

<label>Card Number</label>
<input type="text" class="form-control" name="cardnumber" required>

<label>Exp Number</label>
<input type="text" class="form-control" name="expnumber" required>


<div class="text-center mt-3">
<button type="submit" class="btn btn-primary">Submit</button>
</div>
</div>
</form>



</div>
</div>
</body>
</html>