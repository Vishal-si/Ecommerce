<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Commerce</title>
<link rel="Stylesheet" href="../Assest/BootStrap/bootstrap.css">
<script src="../Assest/JQuery/jquery-3.5.1.min.js"></script>
</head>
<body>
<div class="container">
<div class="card" style="width:400px;margin:10px">
<div class="card-header">
<h4>Sign In</h4>
</div>

<div class="card-body">
<form action="../SellerLoginControllers" method="post" id="frm-login" class="ajax-form">
<input type="hidden" name="task" value="seller_login" class="form-control">

<label for="email">Email</label>
<input type="email" name="email" id="email" class="form-control">

<label for="password">Password</label>
<input type="password" name="password" id="password" class="form-control"><br>

<input type="submit" value="SUBMIT" class="btn btn-primary form-control">
</div>

<div class="card-footer pt-4">
<a class="" href="SellerRegister.jsp">Create Account</a>

</div>
</form>
</div>
</div>
<script src="seller.js">


</script>
</body>
</html>