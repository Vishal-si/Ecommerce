<%@page import="com.SellerServices.ProductInsertService"%>
<%@page import="com.SellerModel.ProductInsertModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashborad</title>
<link rel="stylesheet" href="../Assest/BootStrap/bootstrap.css">
<script src="../Assest/JQuery/jquery-3.5.1.min.js"></script>



</head>
<body>

<div class="jumbotron  bg-primary text-white">
<h6 class="display-4 text-center"><i>Seller Dashboard</i></h6>
</div>
<ul>
<li><a href="insert-product.jsp">Add Product</a></li>
<li><a href="#">Profile</a></li>


</ul>

<%
String seller_email = (String)session.getAttribute("seller");
List<ProductInsertModel> plist = new ProductInsertService().productList(seller_email); %>
<div class="row">

<%for(ProductInsertModel pmobj :plist) { 
		
	if(pmobj.getUnitStock()<=0)
		   
	   {%>

	<div class="card text-center bg-primary"  style="width:200px; margin:50px">
	<a href="UpdateProduct.jsp?product_id=<%=pmobj.getProduct_id()%>"><img class="img-thumbnail" alt="200x300"  src="../Assest/images/uploads/<%=pmobj.getImage() %>" style="width:200px; height:250px"></a>
	<h5 class="text-white"><i><%=pmobj.getBrand() %></i></h5>
	<p class="text-white">Price <b><i><%=pmobj.getSellingprice() %></i></b></p>
	<p class="text-white"> Color <b><i><%=pmobj.getColor() %></i></b></p><br>
	<p class="text-white">Stock <b><i>out of stock</i></b></p>
	</div>
	<%}

	
	
	else
	{%>

<div class="card text-center bg-primary"  style="width:200px; margin:50px">
<a href="UpdateProduct.jsp?product_id=<%=pmobj.getProduct_id()%>"><img class="img-thumbnail" alt="200x300"  src="../Assest/images/uploads/<%=pmobj.getImage() %>" style="width:200px; height:250px"></a>


<h5 class="text-white"><i><%=pmobj.getBrand() %></i></h5>

<p class="text-white">Price <b><i><%=pmobj.getSellingprice() %></i></b></p>
<p class="text-white"> Color <b><i><%=pmobj.getColor() %></i></b></p><br>
<p class="text-white">Number of Stock <b><i><%=pmobj.getUnitStock() %></i></b></p>
</div>
<%}
	}
	%>

	
	
	
	
	







</div>



</body>
</html>