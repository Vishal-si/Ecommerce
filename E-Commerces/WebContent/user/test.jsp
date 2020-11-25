<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="testCss.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../Assest/JQuery/jquery-3.5.1.min.js"></script>
</head>
<body>
<!--Bootstrap Responsive Thumbnail Slider/Carousel. If you like my work, please credit author: www.action360.ca @action360ca Enjoy!-->


<div class="container">
  <div id="myCarousel" class="carousel slide" data-interval="false">

  <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="https://s14.postimg.cc/bnwpgsqnl/pixel1.png" alt="">
      </div>
	  <div class="item">
        <img src="https://s14.postimg.cc/k665l54w1/pixel2.png" alt="">
      </div>
	  <div class="item">
        <img src="https://s14.postimg.cc/4xg87dycx/pixel5.png" alt="">
      </div>
	  <div class="item">
        <img src="https://s14.postimg.cc/4kou178dd/pixel3.png" alt="">
      </div>
	  <div class="item">
        <img src="https://s14.postimg.cc/almiy9n9t/pixel4.png" alt="">
      </div>
	  
	  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		  <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		  <span class="sr-only">Next</span>
      </a>
    </div>
	
	<div id="thumbCarousel">
      <div data-target="#myCarousel" data-slide-to="0" class="thumb active"><img src="https://s14.postimg.cc/z24osq8kt/pixel1.png" alt="XZ" style="width: 120px; height: 130px"></div>
      <div data-target="#myCarousel" data-slide-to="1" class="thumb"><img src="https://s14.postimg.cc/l8gc3onp9/pixel2.png" alt="XZ" style="width: 120px; height: 130px"></div>
      <div data-target="#myCarousel" data-slide-to="2" class="thumb"><img src="https://s14.postimg.cc/8ttk3djcd/pixel5.png" alt="XZ" style="width: 120px; height: 130px"></div>
      <div data-target="#myCarousel" data-slide-to="3" class="thumb"><img src="https://s14.postimg.cc/4kou178d9/pixel3.png" alt="XZ" style="width: 120px; height: 130px"></div>
      <div data-target="#myCarousel" data-slide-to="4" class="thumb"><img src="https://s14.postimg.cc/9jccfq4gd/pixel4.png" alt="XZ" style="width: 120px; height: 130px"></div>           
    </div>
  
  </div>
</div>
<script>


$(document).ready(function(){
	 
	//carousel-control
	
	$("#myCarousel").mouseover(function(){
		$("#myCarousel .carousel-control").show();
	});

	$("#myCarousel").mouseleave(function(){
		$("#myCarousel .carousel-control").hide();
	});
	
	//active thumbnail
	
	$("#thumbCarousel .thumb").on("click", function(){
		$(this).addClass("active");
		$(this).siblings().removeClass("active");
	
	});
	
	//carousel slides
	
	$('#myCarousel').on('slid.bs.carousel', function(){
	   var index = $('.carousel-inner .item.active').index();
	   //console.log(index);
	   var thumbnailActive = $('#thumbCarousel .thumb[data-slide-to="'+index+'"]');
	   thumbnailActive.addClass('active');
	   $(thumbnailActive).siblings().removeClass("active");
	   //console.log($(thumbnailActive).siblings()); 
	});
 });

</script>

</body>
</html>