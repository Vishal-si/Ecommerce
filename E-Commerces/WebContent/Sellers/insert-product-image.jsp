<%@page import="com.SellerServices.UploadProductImageService"%>
<%@page import="com.SellerModel.UploadProductImage"%>
<%@page import="com.SellerModel.ProductInsertModel"%>
<%@page import="java.util.List"%>
<%@page import="com.SellerServices.ProductInsertService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>E-Commerces</title>
<link rel="Stylesheet" href="../Assest/BootStrap/bootstrap.css">
<link rel="stylesheet" href="insert-product-image-css.css">
<script src="../Assest/JQuery/jquery-3.5.1.min.js"></script>


</head>
<body>
<%
int product_id = Integer.parseInt(request.getParameter("product_id")); 

List<UploadProductImage> mlist = new UploadProductImageService().imageList(product_id);
%>
<div class="container-fluid pt-3">

<div class="row">
<div class="col-lg-4">
<div class="card" style="width:400px;" >
<form action="../UploadProductImageController" method="post" enctype="multipart/form-data">

<div class="card-header">
<h4 class="alert alert-info text-center">Upload Image for products</h4>
</div>
<div class="card-body">

<input type="hidden" value=<%out.println(product_id); %> name="product_id" class="form-control">

<label>Front side image</label>
<input type="file" name="front_side_image" class="form-control">

<label>Left side image</label>
<input type="file" name="left_side_image" class="form-control">

<label>Right side image</label>
<input type="file" name="right_side_image" class="form-control">

<label>Back side image</label>
<input type="file" name="back_side_image" class="form-control"><br>

<input type="submit" value="SUBMIT" class="btn btn-primary">
<input type="submit" value="RESET" class="btn btn-danger">
</div>
</form>
</div>
</div>


<div class="col-lg-8">
<div class="card">
<div class="card-header">
<h3 class="alert alert-info">Image Gallery</h3>
</div>
<div class="body">
<div id="gallery" class="container">
	<div class="col-xs-12 no-pad">
	</div>

	<div id="gallery-box">
		<div id="gallery-count"><span id="count">1</span> of <span id="total"></span></div>
		<a id="gallery-link" href="#" target="_blank">
			<div id="gallery-img">
			</div>
		</a>
	</div>
	<div class="gallery-thumbnails">
		<div class="col-xs-12 no-pad">
			<%for(UploadProductImage upiobj:mlist) {%>
			<img id="1" class="img-responsive" src="../Assest/images/uploads/<%=upiobj.getFront_side_image() %>" />
			<img id="2" class="img-responsive" src="../Assest/images/uploads/<%=upiobj.getBack_side_image() %>"/>
			<img id="3" class="img-responsive" src="../Assest/images/uploads/<%=upiobj.getLeft_side_image() %>"/>
			<img id="4" class="img-responsive" src="../Assest/images/uploads/<%=upiobj.getRight_side_image() %>"/>			
			<%} %>

		</div>
	</div>
	<hr/>
	<div class="row">
		<div class="col-xs-12 col-sm-4">
			<label>Image Display</label>
			<select id="imgDisplay" class="form-control">
				<option value="cover" default>cover</option>
				<option value="contain">contain</option>
			</select>
		</div>
		<div class="col-xs-12 col-sm-4">
			<label>Scroll</label>
			<select id="imgScroll" class="form-control">
				<option value="yes" default>Yes</option>
				<option value="no">No</option>
			</select>
		</div>
		<div class="col-xs-12 col-sm-4">
			<label>Scale</label>
			<input type="range" min="200" max="1200" value="700" class="slider form-control" id="imgScale">
		</div>
	</div>


</div>


</div>
</div>
</div>
</div>
</div>
<script>
$(document).ready(function() {
	
	// Change image on selection
	$("#gallery img").click(function() {
		// Get current image source
		var image = $(this).attr("src");
		// Apply grayscale to thumbnails except selected
		$("#gallery")
			.find("img")
			.css("filter", "grayscale(1)");
		$(this).css("filter", "none");
		// Change image
		$("#gallery-img").css("background-image", "url(" + image + ")");
		// Apply link to image
		$("#gallery-link").attr("href", image);
		// Use id for count
		$("#count").text($(this).attr("id"));
	});
	
	// Get total number of images
	var gallerySize = $(".gallery-thumbnails img").length;
	$("#total").text(gallerySize);
	
	var display = $("#imgDisplay");
	var scroll = $("#imgScroll");
	var scale = $("#imgScale");
	
	// Image display
	display.change( function() {
		if(display.val() === "contain") {
			$("#gallery-img").css("background-size","contain");
		} else {
			$("#gallery-img").css("background-size","cover");
		}
	});
	
	// Scroll
	scroll.change( function() {
		if(scroll.val() === "yes") {
			$("#gallery-box").css("overflow","scroll");
		} else {
			$("#gallery-box").css("overflow","hidden");
		}
	});
	
	// Scale
	var changeScale = scale.change( function() {
		$("#gallery-img").css("background-size", scale.val() + "px");
	});

});




</script>


</body>
</html>