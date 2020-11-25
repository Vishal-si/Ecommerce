<%@page import="com.SellerServices.DashboardProductList"%>
<%@page import="com.SellerServices.ProductInsertService"%>
<%@page import="com.SellerModel.ProductInsertModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-commerces</title>
<link rel="stylesheet" href="../Assest/BootStrap/bootstrap.css">
<script src="../Assest/JQuery/jquery-3.5.1.min.js"></script>
</head>
<body>

<%
int product_id = Integer.parseInt(request.getParameter("product_id"));
List<ProductInsertModel> plist = new DashboardProductList().productListById(product_id);
%>
<div class="container-fluid pt-3">
<div class="card border-primary">
<div class="card-header">
<h2 class="alert bg-primary text-center">Products</h2>
</div>

<div class="card-body">
<table class="table text-center">
<thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>Brand</th>
<th>Color</th>
<th>Market Price</th>
<th>Selling Price By Seller</th>
<th>Number of stock</th>
<th>Sizes</th>
<th>Weight</th>
<th>Seller Id Number</th>
<th>Seller Email</th>
<th>Upload Date</th>
</tr>
</thead>

<%for(ProductInsertModel pmobj:plist) {%>



<tbody>
<div class="row">
<div class="col-lg-6">
<img src="../Assest/images/uploads/<%=pmobj.getImage()%>" style="width:450px; height:400px;" class="img-thumbnail alert alert-info col-lg-8">
</div>


<div class="col-lg-6">
<div class="card" id="stock">
<div class="card-header">
<h4 class="alert bg-primary text-center">Add More Stock</h4>
</div>

<div class="card-body">
<form action="../ProductUpdate" method="post">
<input type="hidden" name="task" value="updateStock"">

<label for="product_id">Product Id</label>
<input type="text" class="form-control" id="product_id" name="product_id" value=<%=pmobj.getProduct_id()%>>

<label for="unitStock">Number Of Stock</label>
<input type="number" class="form-control" id="unitStock" name="unitStock">

</div>
<div class="card-footer">
<input type="submit" VALUE="SUBMIT" class="btn btn-primary">
</div>
</form>
</div>
<!--End of Update Stock div  -->


<div class="card" id="price">
<div class="card-header">
<h4 class="alert bg-primary text-center">Update Price</h4>
</div>
<form action="../ProductUpdate" method="post">
<div class="card-body">
<input type="hidden" name="task" value="updatePrice">

<label for="product_id">Product Id</label>
<input type="text" class="form-control" id="product_id" name="product_id" value=<%=pmobj.getProduct_id() %>>

<label for="newPrice">New Price</label>
<input type="number" class="form-control" id="newPrice" name="selling_price">
</div>

<div class="card-footer">
<input type="submit" value="SUBMIT" class="btn btn-primary">
</div>
</form>
</div>

<!-- End of Update price div  -->


<div class="card" id="remove">
<div class="card-header">
<h4 class="alert bg-primary text-center">Remove Product</h4>
</div>
<div class="card-body">
<form action="../ProductUpdate" method="post">
<input type="hidden" name="task" value="remove">
<input type="text" name="product_id" class="form-control" value=<%=pmobj.getProduct_id()%>><br>
<input type="submit" Value="ARE YOU SURE REMOVE THIS PRODUCT" class="btn btn-warning">
</form>
</div>
</div>
<!--End of remove product  -->

</div>
</div>

<div class="btn-group">
<a href="#" class="btn btn-primary" id="stockClick">ADD MORE STOCK</a>
<a href="#" class="btn btn-danger" id="priceClick">UPDATE PRICES</a>
<a href="#" class="btn btn-primary" id="removeClick">REMOVE PRODUCTS</a>
</div>



<tr>
<td><%=pmobj.getProduct_id() %></td>
<td><%=pmobj.getName() %></td>
<td><%=pmobj.getBrand() %></td>
<td><%=pmobj.getColor() %></td>
<td><%=pmobj.getProductprice() %></td>
<td><%=pmobj.getSellingprice() %></td>
<td><%=pmobj.getUnitStock() %></td>
<td><%=pmobj.getSizes() %></td>
<td><%=pmobj.getWeight() %></td>
<td><%=pmobj.getS_id() %></td>
<td><%=pmobj.getSeller_email() %></td>
<td><%=pmobj.getUploadProductDate() %></td>
</tr>
</tbody>



</table>
<%} %>
</div>
</div>
</div>
<script>
console.log("hello");
$(document).ready(function(){
	$('#stock').hide();
	$('#price').hide();
	$('#remove').hide();
	
	$('#stockClick').click(function(){
		$('#stock').show();
		$('#price').hide();
		$('#remove').hide();
	});
	$('#priceClick').click(function(){
		$('#stock').hide();
		$('#remove').hide();
		$('#price').show();
	});
	
	$('#removeClick').click(function(){
		$('#remove').show();
		$('#price').hide();
		$('#stock').hide();
	});
	
	
});



</script>


</body>
</html>