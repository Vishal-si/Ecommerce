<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-commerce</title>
</head>
<body>
<form action="../CategoryController" method="post">

<input type="hidden" name="task" value="category-insert">

<label>Choose category</label>
<select name="category_name" id="category_name">
<option>Choose</option>
<option>Baby/Childern's Clothing</option>
<option>Beauty & Cosmetics</option>
<option>Books</option>
<option>Electronics</option>
<option>Flights</option>
<option>Grocery/Food & Beverage</option>
<option>Health & Personal Care</option>
<option>Housewares/Kitchenware</option>
<option>Footwear</option>
<option>Furniture</option>
<option>Sporting Goods</option>
<option>Men's Clothing/Fashion</option>
<option>Toys & Games</option>
<option>Travel Accommodations</option>
<option>Women's Clothing/Fashion</option>
</select>

<label>Enter the sub category</label>
<input type="text" name="sub_category_name" id="sub_category_name">

<input type="submit" value="SUBMIT">


</form>

</body>
</html>