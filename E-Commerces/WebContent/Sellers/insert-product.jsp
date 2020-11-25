<%@page import="com.SellerServices.ProductInsertService"%>
<%@page import="com.SellerModel.ProductInsertModel"%>
<%@page import="com.SellerServices.SellerService"%>
<%@page import="com.SellerModel.SellerModel"%>
<%@page import="com.AdminInsertDataServices.CategoryServices"%>
<%@page import="com.AdminInsertDataModel.CategoryModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-commerces</title>
<link rel="Stylesheet" href="../Assest/BootStrap/bootstrap.css">
<script src="../Assest/JQuery/jquery-3.5.1.min.js"></script>
</head>
<body>
<div class="jumbotron bg-primary">

<h3 class="text-center text-white "><i>Add Product</i></h3>

</div>


<div class="container-fluid pt-3">
<!--for session   -->
<%
		String seller_email = (String)session.getAttribute("seller");
		SellerService ssobj = new SellerService();
		ssobj.getSellerIdBySellerEmail(seller_email);	
		List<SellerModel> list = new SellerService().getSellerIdBySellerEmail(seller_email);
			
%>

<form action="../ProductInsertController" method="post" enctype="multipart/form-data">
<div class="row">

<div class="col-lg-6">

<div class="card border-primary" style="width:600px">
<div class="card-header bg-white">
<h4 class="alert bg-primary text-center">Add Product</h4>
</div>

<input type="hidden" name="task" value="insert-product">

<div class="card-body">
<label>Choose Category</label>
<select id="category_id" name="category_id" class="form-control">
<option>Select Category</option>
</select>

<label>Seller Id</label>
<select name="seller_id" id="seller_id" class="form-control">
<%for(SellerModel smobj:list) { %>
<option><%=smobj.getS_id() %></option>
<%}%>
</select>

<label>Seller Email</label>
<input type="email" value=<%=seller_email%> name="seller_email" class="form-control">

<label>Product Name</label>
<input type="text" name="product_name" class="form-control">

<label>Select type</label>
<select name="type" class="form-control">
<option>Mac</option>
<option>Normal</option>
<option>Double</option>
<option>Sport</option>
<option>Party</option>
<option>Wedding</option>

</select>

<label>Description</label>
<textarea rows="10" cols="20" name="description" class="form-control"></textarea>

<label>Product Price</label>
<input type="number" name="product_price" class="form-control">

<label>Selling Price</label>
<input type="number" name="selling_price" class="form-control">

<label>Size</label>
<input type="text" name="sizes" class="form-control">

<label>Color</label>
<input type="text" name="color" class="form-control">

<label>Brand Name</label>
<input type="text" name="brand" class="form-control">

<label>Weight</label>
<input type="text" name="weight" class="form-control">

<label>Stock</label>
<input type="number" name="stock" class="form-control">

<label>Image</label>
<input type="file" name="image" class="form-control"><br>


<div class="text-center">
<input type="submit" value="SUBMIT" class="btn btn-primary">
<input type="reset" value="RESET" class="btn btn-danger">
</div>

</div>
</div>
</div>

<%
ProductInsertService pisobj = new ProductInsertService();
pisobj.getProductIdByEmail(seller_email);
List<ProductInsertModel> plist = new ProductInsertService().getProductIdByEmail(seller_email);
%>


<div class="col-lg-6">
<div class="card border-primary" style="width:600px">

<div class="card-header bg-white">
<h4 class="alert bg-primary text-center">Recently Add Product</h4>
</div>

<div class="card-body">
<table class="table table-hover">
<thead class="table bg-primary">
<tr>
<th>Product Id</th>
<th>Product Name</th>
<th>Product Brand</th>
<th>Image</th>
</tr>
</thead>
<%for(ProductInsertModel pmobj:plist){ %>
<tbody>
<tr>
<td><a href="insert-product-image.jsp?product_id=<%=pmobj.getProduct_id() %>"><%=pmobj.getProduct_id() %></a></td>
<td><%=pmobj.getName() %></td>
<td><%=pmobj.getBrand() %></td>
<td><img src="../Assest/images/uploads/<%=pmobj.getImage() %>" style="width:50 px; height:50px"></td>
</tr>
</tbody>
<%} %>
</table>
</div>
<div class="card-footer bg-white">
<p class="alert bg-primary">Note::please note down the product id</p>
<p class="alert bg-primary">Click the product id for submit more images</p>
</div> 
</div>
</div>

</form>
</div>
</div>


<script>
$(document).ready(function(){
	
	$.getJSON("../CategoryController", {action : "category_list"},
			function (response) {
				if(!response.success && response.target.length > 0) {
                	window.location.href = response.target;
                	return;
                }
                
                console.log(response.data);

                response.data.forEach(category => {
                    $("#category_id").append(`<option value="`+category.category_id+`">`+category.category_name+`</option>`);
                });
			}
		);
	
	
});


</script>







</body>
</html>