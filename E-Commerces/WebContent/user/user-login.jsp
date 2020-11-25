<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-commerces</title>
<script src="../Assest/JQuery/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="../Assest/BootStrap/bootstrap.css">

</head>
<body>

<div class="jumbotron bg-primary">
<h3 class="text-center text-white"><i>Login Section</i></h3>
</div>

<div class="container mt-4">



<div class="card m-auto" style="width:400px; height:330px">
<div class="card-header bg-primary">
<h4 class="text-white">Login</h4>
</div>
<div class="card-body">
<form action="../UserController" method="post" class="ajax-form" id="frm-login">
<input type="hidden" name="task" value="user-login">

<label>Email</label>
<input type="email" name="email" id="email" class="form-control" required>

<label>Password</label>
<input type="password" name="password" id="password" class="form-control" required>
</div>
<div class="card-footer text-center bg-primary">
<input type="submit" value="SUBMIT" class="btn btn-info"> 
<a href="user-register.jsp" class="btn btn-danger ">New Account</a>
</form>

</div>

</div>
</div>

<script src="../Sellers/seller.js">
</script>


</body>
</html>