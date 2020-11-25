<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Commerces</title>
<link rel="Stylesheet" href="../Assest/BootStrap/bootstrap.css">
<script src="../Assest/JQuery/jquery-3.5.1.min.js">

</script>

<script>

$(document).ready(function(){
	$("#card2").hide();
	$("#card3").hide();
	
	$("#firstNext").click(function(){
		$('#card2').show();
	});
	
	$("#secondNext").click(function(){
		$("#card3").show();
	});
	
});


</script>



</head>
<body>
<div class="container-fluid pt-3">
<form action="../SellerControllers" method="post" enctype="multipart/form-data">
<div class="row">

<div class="col-sm-4">
<div class="card" style="width:400px" id="card1">
<div class="card-header">
<h4 class="alert alert-info text-center">Seller Information</h4>
</div>

<div class="card-body">
<input type="hidden" name="task" value="seller-register">

<label for="name">Name</label>
<input type="text" name="name" id="name" class="form-control">

<label for="email">Email</label>
<input type="email" name="email" id="email" class="form-control">

<label for="password">Password</label>
<input type="password" name="password" id="password" class="form-control">

<label for="phonenumber"> Phone number</label>
<input type="text" name="phonenumber" id="phonenumber" class="form-control">

<label for="dob">Date of birth</label>
<input type="date" name="dob" id="dob" class="form-control">

<label for="city">City</label>
<input type="text" name="city" id="city" class="form-control">

<label for="address1">Address1</label>
<input type="text" name="address1" id="address1" class="form-control">

<label for="address2">Address 2</label>
<input type="text" name="address2" id="address2" class="form-control">

<label for="pincode">Pincode</label>
<input type="text" name="pincode" id="pincode" class="form-control">

<label for="shopname">Seller Shop Name</label>
<input type="text" name="shopname" id="shopname" class="form-control">
</div>
<div class="card-footer">
<a href="#" class="btn btn-outline-warning" id="firstNext">Next</a>
</div>
</div>
</div>

<div class="col-sm-4" >
<div class="card" style="width:400px" id="card2">
<div class="card-header">
<h4 class="alert alert-info text-center">Bank Information</h4>
</div>

<div class="card-body">
<label for="bankname">Bank Name</label>
<select name="bankname" id="bankname" class="form-control">
<option>HDFC</option>
<option>State Bank of India</option>
<option>Punjab National Bank</option>
<option>Bank of India</option>
</select>

<label for="ifsc">IFSC Code</label>
<input type="text" name="ifsc" id="ifsc" class="form-control">
</div>
<div class="card-footer">
<a href="#" class="btn btn-outline-warning" id="secondNext">Next</a>
</div>
</div>
</div>

<div class="col-sm-4" >
<div class="card" style="width:400px" id="card3">
<div class="card-header">
<h4 class="alert alert-info text-center">Documention</h4>
</div>
<div class="card-body">
<label for="cancle_cheque_image">Cancel Cheque Image</label>
<input type="file" name="cancle_cheque_image" id="cancle_cheque_image" class="form-control">

<label for="seller_sign_image">Seller Sign Image</label>
<input type="file" name="seller_sign_image" id="seller_sign_image" class="form-control">

<label for="pancard_image">Pancard Image</label>
<input type="file" name="pancard_image" id="pancard_image" class="form-control">

<label for="aadhar_card_image">Aadhar Card image</label>
<input type="file" name="aadhar_card_image" id="aadhar_card_image" class="form-control">

<label for="seller_image">Seller Image </label>
<input type="file" name="seller_image" id="seller_image" class="form-control">




</div>
<div class="card-footer">
<input type="submit" value="SUBMIT" class="btn btn-primary">
<input type="reset" value="RESET" class="btn btn-danger">
</div>
</div>

</div>
</div>




</form>
</div>
</div>

<script src="seller.js"></script>


</body>
</html>