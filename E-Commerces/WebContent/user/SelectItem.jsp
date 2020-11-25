<%@page import="com.UserAuthenticationService.UserServices"%>
<%@page import="com.UserAuthenticationModel.UserModel"%>
<%@page import="com.BookingServices.BookingService"%>
<%@page import="java.util.List"%>
<%@page import="com.BookingModel.BookingModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-commerce</title>
<link rel="stylesheet" href="../Assest/BootStrap/bootstrap.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body>
<%
String product_name =(String)request.getParameter("product_name");
//out.println(product_name);
List<BookingModel> blist = new BookingService().userDashboardList(product_name);
%>

<div class="jumbotron bg-primary">

<h3 class="text-center text-white"><i>Select Section</i></h3>
</div>

<div class="container-fluid">





<div class="row">
<%for(BookingModel bmobj:blist) {

if(bmobj.getUnitStock()<=0){

%>

<div class="card text-center bg-light"  style="width:210px; margin:50px">
<a href="#"><img class="img-thumbnail" alt="210x300"  src="../Assest/images/uploads/<%=bmobj.getImage() %>" style="width:250px; height:250px"></a>

<div class="card-footer bg-primary">
<p class="text-danger"><i class="text-white"><%=bmobj.getBrand() %></i></p>
<p class="text-danger"><i>out of stock<i></p>

</div>

</div>
<%}



else{%>
<div class="card text-center border-light"  style="width:210px; margin:50px">
<a  href="Book&Cart.jsp?product_id=<%=bmobj.getProduct_id() %>" ><img class="img-thumbnail" alt="210x300"  src="../Assest/images/uploads/<%=bmobj.getImage() %>" style="width:210px; height:250px"></a>
<div class="card-footer bg-primary">
 <p class="text-danger"><i class="text-white"><%=bmobj.getBrand() %></i></p>
<p class="text-danger"><i class="fas fa-rupee-sign text-white"></i> <i class="text-white"><%=bmobj.getSellingprice() %></i></p>
</div>


</div>
<%}
}
%>

</div>

















</div>

</body>
</html>