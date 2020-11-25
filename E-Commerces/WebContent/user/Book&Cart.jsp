<%@page import="com.SellerServices.UploadProductImageService"%>
<%@page import="com.SellerModel.UploadProductImage"%>
<%@page import="com.BookingModel.BookingModel"%>
<%@page import="com.BookingServices.BookingService"%>
<%@page import="com.UserAuthenticationService.UserServices"%>
<%@page import="com.UserAuthenticationModel.UserModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecommerce</title>
<link rel="stylesheet" href="../Assest/BootStrap/bootstrap.css">
<link rel="stylesheet" href="testCss.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../Assest/JQuery/jquery-3.5.1.min.js"></script>
</head>
<body>
<div class="jumbotron bg-primary">
<h3 class="text-white text-center"><i>Booking Section</i></h3>


</div>

<form action="../BookingCartController" method="post">

<%
int product_id = Integer.parseInt(request.getParameter("product_id"));
String user =(String)session.getAttribute("user");
%>

<%
if(user==null || user==""){
	response.sendRedirect("user-login.jsp");

}%>



<% 
List<UserModel> ulist = new UserServices().getUserIdByemail(user);
	for(UserModel umobj:ulist)
	{%>
		<input type="hidden" value=<%=umobj.getUser_id() %> name="user_id">
	<% }%>

<%
List<BookingModel> blist = new BookingService().bookItemByProductId(product_id);
List<UploadProductImage> mlist = new UploadProductImageService().imageList(product_id);
%>

<div class="row">

<div class="col-lg-8">





</div>





<div class="col-lg-4">
<%for(BookingModel bmobj: blist) {%>
<div class="card" style="width:400px;">
<div class="card-header bg-info">
<p class="alert bg-primary  text-center" ><i class="text-centr text-uppercase">Product Detail</i></p>
</div>

<div class="card-body">
<table class="table table-hover border-primary">

<tr>
<input type="hidden" value=<%=bmobj.getProduct_id() %> class="form-control" readonly="readonly" name="product_id">
</tr>

<tr>
<th class="text-danger font-weight-normal">Product</th>
<td><input type="text"   value=<%=bmobj.getProduct_name() %> class="form-control text-center" readonly="readonly" name="product_name"></td>
</tr>

<tr>
<th class="text-danger font-weight-normal">Type</th>
<td><input type="text"  value=<%=bmobj.getType() %> class="form-control text-center" readonly="readonly" name="type"></td>
</tr>

<tr>
<th class="text-danger font-weight-normal">Price</th>
<td><input type="text"  value=<%=bmobj.getSellingprice()%> class="form-control text-center" readonly="readonly" name="selling_price"></td>
</tr>

<tr>
<th class="text-danger font-weight-normal">Seller</th>
<td><input type="text"   value=<%=bmobj.getSeller_name() %> class="form-control text-center" readonly="readonly" name="seller_name"></td>
</tr>

<tr>
<th class="text-danger font-weight-normal">Sizes</th>
<td><input type="text"  value=<%=bmobj.getSizes() %> class="form-control text-center" readonly="readonly" name="sizes"></td>
</tr>

<tr>
<th class="text-danger font-weight-normal">Color</th>
<td><input type="text"  value=<%=bmobj.getColor() %> class="form-control text-center" readonly="readonly" name="color"></td>
</tr>

<tr>
<th class="text-danger font-weight-normal">Brand</th>
<td><input type="text"  value=<%=bmobj.getBrand() %> class="form-control text-center" readonly="readonly" name="brand"></td>
</tr>

<tr>
<th class="text-danger font-weight-normal">Weight</th>
<td><input type="text" value=<%=bmobj.getUnitWeight() %> class="form-control text-center" readonly="readonly" name="weight"></td>
</tr>

<tr>
<th class="text-danger font-weight-normal">Description</th>
<td><textarea type="text" class="form-control" readonly="readonly" name="description"><%=bmobj.getDescription() %> </textarea></td>
</tr>


<tr>
<th class="text-danger font-weight-normal">Quantity</th>
<td><input type="number" class="form-control text-center" name="quantity" id="quantity" type="quantity" placeholder="Quantity" required></td>
</tr>

<tr>
<th class="text-danger font-weight-normal">Shiping Date</th>
<td><input type="text" class="form-control text-center" name="date" id="date" readonly="readonly"></td>
</tr>

<div>
<tr>
<td><button class="btn btn-danger ml-4" name="btn" value="cart">Add To Cart</button></td>
<td><button class="btn btn-primary ml-4" name="btn" value="booking">Booking</button></td>
</tr>



</table>
</div>

</div>
<%} %>
</div>



</div>


</form>
<script>
var ourDate = new Date();
var shipDate = ourDate.getDate() + 7;
ourDate.setDate(shipDate);
console.log(ourDate);
var dates = ourDate.getDate();
var month= ourDate.getMonth()+1;
var year = ourDate.getFullYear();
var fulldate= dates+"/"+month+"/"+year;
console.log(fulldate);

document.getElementById("date").value=fulldate;

</script>

</body>
</html>