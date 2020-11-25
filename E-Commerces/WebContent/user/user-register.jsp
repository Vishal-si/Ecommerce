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
<div class="jumbotron bg-primary">
<h3 class="text-white">Register Section</h3>

</div>
<div class="container">

<div class="card">
<div class="card-header text-center text-white"><i>Create New Account</i></div>

<div class="card-body">
<form action="../UserController" method="post" id="frm-register" class="ajax-form">
<input type="hidden" name="task" value="user-register">

<label>Name</label>
<input type="text" name="name" id="name" class="form-control" required>

<label>Email</label>
<input type="email" name="email" id="email" class="form-control" required>

<label>Password</label>
<input type="password" name="password" id="password" class="form-control" required>

<label>Confirm Password</label>
<input type="password" name="cfrmpassword" id="cfrmpassword" class="form-control" required>

<label>Date of Birth</label>
<input type="date" name="dob" id="dob" class="form-control" required>

<label>Gender</label>
<select name="gender" id="gender" class="form-control" required>
<option>Male</option>
<option>Female</option>
<option>Other</option>
</select>

<label>Phone</label>
<input type="text" name="phone" id="phone" class="form-control" required>

<div class="text-center mt-3">
<input type="submit" value="SUBMIT" class="btn btn-primary">
<input type="reset" value="RESET" class="btn btn-danger">
</div>

</form>

</div>
</div>
<script src="../Sellers/seller.js"></script>
</body>
</div>
</html>