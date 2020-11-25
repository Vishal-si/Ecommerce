<html>
<head>
<%@page import="com.AdminInsertDataServices.CategoryServices"%>
<%@page import="com.AdminInsertDataModel.CategoryModel"%>
<%@page import="com.BookingModel.BookingModel"%>
<%@page import="com.BookingServices.BookingService"%>
<%@page import="java.util.List"%>
<title>E-commerce</title>
 		<link rel="stylesheet" href="../Assest/BootStrap/bootstrap.css">
    	<script src="../Assest/BootStrap/js/bootstrap.js"></script>
    	<script src="../Assest/JQuery/jquery-3.5.1.min.js"></script>
    	<script src="../Assest/BootStrap/js/bootstrap.min.js"></script>
      	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body>
    <div class="container-fluid">
        <div class="row mb-4">
          <div class="col-md-8">
            <ul class="nav">
              <li class="nav-item">
                <a class="nav-link" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Company Profile</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Contact us</a>
              </li>
            </ul>
          </div>
          
          
          <div class="col-md-2">
            <ul class="nav">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                  <i class="fas fa-user"></i>
                  <a href="Profile.jsp"><span>Profile</span></a>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="row mb-4">
          <div class="col-md-2">
            <a href="#"><img src="https://via.placeholder.com/280x80" class="img-thumbnail p-0 border-0" /></a>
          </div>
          <div class="col-md-6">
            <div class="input-group input-group-lg">
              <input type="text" id="" name="" class="form-control" placeholder="What search?" />
              <%List<CategoryModel> clist = new CategoryServices().category_list();%>
              <select class="form-control form-control-lg rounded-0">
               <option>Select Category</option>
                <% for(CategoryModel cmobj:clist) {%>
                <option><%=cmobj.getCategory_name() %></option>
                <%} %>
              </select>
              <div class="input-group-append">
                <button class="btn btn-outline-primary" type="button"><i class="fas fa-search"></i></button>
              </div>
            </div>
          </div>
          <div class="col-md-1">
            <button class="btn btn-outline-primary btn-block btn-lg" type="button">
              <i class="fas fa-sync-alt"></i>
            </button>
          </div>
          <div class="col-md-1">
            <button class="btn btn-outline-primary btn-block btn-lg" type="button">
              <i class="fas fa-heart"></i>
            </button>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-12">
            <nav class="navbar navbar-expand-lg navbar-light bg-primary">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item ">
                    <a class="nav-link" href="#"><i class="fas fa-laptop"></i> Electronics, Computers</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-tshirt"></i> Clothing, Jewelry</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-home"></i>Home, Living</a>
                    <div class="dropdown-menu">
                      <a class="dropdown-item" href="#">Decoration</a>
                      <a class="dropdown-item" href="#">Furniture</a>
                      <a class="dropdown-item" href="#">Textile</a>
                      <a class="dropdown-item" href="#">Lighting</a>
                      <a class="dropdown-item" href="#">Kitchenware</a>
                    </div>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-chair"></i> Stationery, Office</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-building"></i> Auto, Garden, Building</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> <i class="fas fa-futbol"></i> Sports, Sightseeing</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-ring"></i> Cosmetics, Care</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-music"></i> Hobby, Film, Music, Books</a>
                  </li>
                </ul>
              </div>
            </nav>
          </div>
        </div>
      </div>
      <div class="container-fluid">
        <div class="row mb-5">
          <div class="col-md-12">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="../Assest/DashboardImage/black-friday.jpg" class="d-block w-100" alt="" style="width:1250px; height:350px;"/>
                <div class="carousel-caption d-none d-md-block">
                  <h5>First slide label</h5>
                  <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="../Assest/DashboardImage/hang-tags-234566__480.jpg" class="d-block w-100" alt="" style="width:1250px; height:350px;"/>
                <div class="carousel-caption d-none d-md-block">
                  <h5>First slide label</h5>
                  <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="../Assest/DashboardImage/discount.jpg" class="d-block w-100" alt="" style="width:1250px; height:350px;"/>
                <div class="carousel-caption d-none d-md-block">
                  <h5>First slide label</h5>
                  <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-3 mb-4">
            <div class="card">
              <img class="card-img-top" src="../Assest/DashboardImage/wp1852765.jpg" alt="" style="widht:400px; height:200px"/>
              <div class="card-body">
                <p class="h6"><small class="text-muted">Company Name</small></br>Butterflies Hand composite</p>
                <p class="m-0">
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                </p>
                
              </div>
              <div class="card-footer p-0">
                <div class="btn-group" role="group">
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-eye"></i>
                    <span>View More</span>
                  </button>
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-heart"></i>
                  </button>
                  <button type="button" class="btn btn-light">
                    <a href="UserDashboard.jsp"><i class="fas fa-sync-alt"></a></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 mb-4">
            <div class="card">
              <img class="card-img-top" src="../Assest/DashboardImage/wp1852743.jpg" alt=""  style="widht:400px; height:200px"/>
              <div class="card-body">
                <p class="h6"><small class="text-muted">Product Name</small></br>Butterflies Hand composite</p>
                <p class="m-0">
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                </p>
  
              </div>
              <div class="card-footer p-0">
                <div class="btn-group" role="group">
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-eye"></i>
                    <span>View More</span>
                  </button>
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-heart"></i>
                  </button>
                  <button type="button" class="btn btn-light">
                    <a href="UserDashboard.jsp"><i class="fas fa-sync-alt"></a></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 mb-4">
            <div class="card">
              <img class="card-img-top" src="../Assest/DashboardImage/wp1852744.jpg" alt="" style="widht:400px; height:200px"/>
              <div class="card-body">
                <p class="h6"><small class="text-muted">Product Name</small></br>Butterflies Hand composite</p>
                <p class="m-0">
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                </p>

              </div><div class="card-footer p-0">
                <div class="btn-group" role="group">
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-eye"></i>
                    <span>View More</span>
                  </button>
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-heart"></i>
                  </button>
                  <button type="button" class="btn btn-light">
                    <a href="UserDashboard.jsp"><i class="fas fa-sync-alt"></a></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 mb-4">
            <div class="card">
              <img class="card-img-top" src="../Assest/DashboardImage/wp1852740.jpg" alt="" style="widht:400px; height:200px"/>
              <div class="card-body">
                <p class="h6"><small class="text-muted">Product Name</small></br>Butterflies Hand composite</p>
                <p class="m-0">
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                </p>
              </div>
              <div class="card-footer p-0">
                <div class="btn-group" role="group">
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-eye"></i>
                    <span>View More</span>
                  </button>
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-heart"></i>
                  </button>
                  <button type="button" class="btn btn-light">
                    <a href="UserDashboard.jsp"><i class="fas fa-sync-alt"></a></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-12">
            
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane pt-4 active" id="home" role="tabpanel">
                <div class="row">
                  <div class="col-md-3">
                    <div class="card">
              <img class="card-img-top" src="../Assest/DashboardImage/mac.jpeg" alt="" style="widht:400px; height:200px"/>
              <div class="card-body">
                <p class="h6"><small class="text-muted">Mac</small></br>New Generation Mac Book</p>
                <p class="m-0">
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                </p>
              </div>
              <div class="card-footer p-0">
                <div class="btn-group" role="group">
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-eye"></i>
                    <a href="SelectItem.jsp?product_name=mac" >View More</a>
                  </button>
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-heart"></i>
                  </button>
                  <button type="button" class="btn btn-light">
                    <a href="UserDashboard.jsp"><i class="fas fa-sync-alt"></a></i>
                  </button>
                </div>
              </div>
            </div>
                  </div>
                  <div class="col-md-3">
                    <div class="card">
              <img class="card-img-top" src="../Assest/DashboardImage/CTF8tP0.jpg" alt="" style="widht:400px; height:200px"/>
              <div class="card-body">
                <p class="h6"><small class="text-muted">Product Name</small></br>Butterflies Hand composite</p>
                <p class="m-0">
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                </p>
              </div>
              <div class="card-footer p-0">
                <div class="btn-group" role="group">
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-eye"></i>
                    <a href="SelectItem.jsp?product_name=normal">View More</a>
                  </button>
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-heart"></i>
                  </button>
                  <button type="button" class="btn btn-light">
                    <a href="UserDashboard.jsp"><i class="fas fa-sync-alt"></a></i>
                  </button>
                </div>
              </div>
            </div>
                  </div>
                  <div class="col-md-3">
                    <div class="card">
              <img class="card-img-top" src="../Assest/DashboardImage/game.jpeg" alt="" style="widht:400px; height:200px"/>
              <div class="card-body">
                <p class="h6"><small class="text-muted">Product Name</small></br>Butterflies Hand composite</p>
                <p class="m-0">
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                </p>
              </div>
              <div class="card-footer p-0">
                <div class="btn-group" role="group">
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-eye"></i>
                   <a href="SelectItem.jsp?product_name=game">View More</a>
                  </button>
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-heart"></i>
                  </button>
                  <button type="button" class="btn btn-light">
                    <a href="UserDashboard.jsp"><i class="fas fa-sync-alt"></a></i>
                  </button>
                </div>
              </div>
            </div>
                  </div>
                  <div class="col-md-3">
                    <div class="card">
              <img class="card-img-top" src="../Assest/DashboardImage/ZAwg8qa.jpg" alt="" style="widht:400px; height:200px"/>
              <div class="card-body">
                <p class="h6"><small class="text-muted">Product Name</small></br>Butterflies Hand composite</p>
                <p class="m-0">
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                  <i class="fa-xs far fa-star"></i>
                </p>
              </div>
              <div class="card-footer p-0">
                <div class="btn-group" role="group">
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-eye"></i>
                   <a href="SelectItem.jsp?product_name=part">View More</a>
                  </button>
                  <button type="button" class="btn btn-light">
                    <i class="fas fa-heart"></i>
                  </button>
                  <button type="button" class="btn btn-light">
                    <a href="UserDashboard.jsp"><i class="fas fa-sync-alt"></a></i>
                  </button>
                </div>
              </div>
            </div>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" src="../Assest/DashboardImage/iPhone.jpeg" alt="" style="width:152px; height:200px"/>
                      <div class="card-footer">
                        <p class="card-text text-center"><a href="SelectItem.jsp?product_name=iphone">iphone</a></p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" src="../Assest/DashboardImage/Samsung.jpeg" alt="" style="width:152px; height:200px" />
                      <div class="card-footer">
                        <p class="card-text text-center"><a href="SelectItem.jsp?product_name=samsung">Andorid</a></p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" src="../Assest/DashboardImage/moto.jpeg" alt="" style="width:152px; height:200px"/>
                      <div class="card-footer">
                        <p class="card-text text-center"><a href="SelectItem.jsp?product_name=moto">Tab</a></p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" src="../Assest/DashboardImage/Nokia.jpeg" alt="" style="width:152px; height:200px" />
                      <div class="card-footer">
                        <p class="card-text text-center"><a href="SelectItem.jsp?product_name=nokia">Flod</a></p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" src="../Assest/DashboardImage/images (2).jpeg" alt="" style="width:152px; height:200px"/>
                      <div class="card-footer">
                        <p class="card-text text-center"><a href="SelectItem.jsp?product_name=iphone">Multi-media</a></p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" src="../Assest/DashboardImage/Asus.jpeg" alt="" style="width:152px; height:200px"/>
                      <div class="card-footer">
                        <p class="card-text text-center"><a href="SelectItem.jsp?product_name=asus">Keypad</a></p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-4">
            <div class="card mb-4">
              <img class="card-img" src="../Assest/DashboardImage/wp2979900.jpg" alt="" / style="width:350px; height:400px">
              <div class="card-img-overlay d-flex flex-column">
                <a href="#" class="mt-auto btn btn-block btn-light">Go somewhere</a>
              </div>
            </div>
            <div class="card">
              <img class="card-img" src="../Assest/DashboardImage/wp4908870.jpg" alt="" style="width:350px; height:400px"/>
              <div class="card-img-overlay d-flex flex-column">
                <a href="#" class="mt-auto btn btn-block btn-light">Go somewhere</a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card">
              <img class="card-img" src="../Assest/DashboardImage/wp4908875.jpg" alt="" style="width:350px; height:830px"/>
              <div class="card-img-overlay d-flex flex-column">
                <a href="#" class="mt-auto btn btn-block btn-light">Go somewhere</a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card mb-4">
              <img class="card-img" src="../Assest/DashboardImage/wp4908894.jpg" alt="" style="width:350px; height:400px"/>
              <div class="card-img-overlay d-flex flex-column">
                <a href="#" class="mt-auto btn btn-block btn-light">Go somewhere</a>
              </div>
            </div>
            <div class="card">
              <img class="card-img" src="../Assest/DashboardImage/wp4908872.jpg" alt="" style="width:350px; height:400px"/>
              <div class="card-img-overlay d-flex flex-column">
                <a href="#" class="mt-auto btn btn-block btn-light">Go somewhere</a>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <div class="text-center">
                      <p class="display-3">Aliquam vitae suscipit erat, in eleifend urna</p>
                      <p class="lead">Mauris sed ex quis nisi scelerisque posuere. Vivamus fermentum lobortis euismod.</p>
                      <p>There are many variations of passages of but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage</p>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <img class="img-thumbnail p-0 border-0" src="../Assest/DashboardImage/wp3075880.jpg" alt="" style="width:550px; height:450px"/>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">Blog</div>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-4">
                    <div class="card">
                      <img class="card-img" alt="" src="../Assest/DashboardImage/wp3075868.jpg" style="width:335px; height:300px" />
                      <div class="card-body">
                        <h5 class="card-title"><small class="text-muted">Local</small><br/>Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-8">
                    <div class="card mb-4">
                      <div class="row no-gutters">
                        <div class="col-md-4">
                          <img class="card-img" alt="" src="../Assest/DashboardImage/wp3075880.jpg" style="width:250px; height:240px" />
                        </div>
                        <div class="col-md-8">
                          <div class="card-body">
                            <h5 class="card-title"><small class="text-muted">World</small><br/>Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="row no-gutters">
                        <div class="col-md-4">
                          <img class="card-img" alt="" src="../Assest/DashboardImage/wp3376811.jpg" style="width:250px; height:230px" />
                        </div>
                        <div class="col-md-8">
                          <div class="card-body">
                            <h5 class="card-title"><small class="text-muted">Local</small><br/>Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row mb-5">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-3">
                    <i class="float-left mr-3 fa-3x fas fa-shipping-fast"></i>
                    <p class="h6">Free shipping & Return <br/><small class="text-muted">For all orders over $500</small></p>
                  </div>
                  <div class="col-md-3">
                    <i class="float-left mr-3 fa-3x fas fa-thumbs-up"></i>
                    <p class="h6">Customer Protection <br/><small class="text-muted">From click to delivery.</small></p>
                  </div>
                  <div class="col-md-3">
                    <i class="float-left mr-3 fa-3x fas fa-umbrella"></i>
                    <p class="h6">Safe Payment <br/><small class="text-muted">Use world’s most secure payment methods.</small></p>
                  </div>
                  <div class="col-md-3">
                    <i class="float-left mr-3 fa-3x fas fa-life-ring"></i>
                    <p class="h6">Support 24/7 <br/><small class="text-muted">We answer for question all time</small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <p class="lead">We’ll never share your email address with a third-party.</p>
                <div class="input-group input-group-lg">
                  <div class="input-group-prepend">
                    <span class="input-group-text">Sign Up For Newsletter</span>
                  </div>
                  <input type="text" id="" name="" class="form-control" placeholder="Your email address" />
                  <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button">Subscribe</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-2">
            <div class="card">
              <div class="card-header">Corporate</div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item p-2">About Us</li>
                <li class="list-group-item p-2">Company Profile</li>
                <li class="list-group-item p-2">Blog</li>
                <li class="list-group-item p-2">Site Maps</li>
                <li class="list-group-item p-2">Contact Us</li>
              </ul>
            </div>
          </div>
          <div class="col-md-2">
            <div class="card">
              <div class="card-header">Services</div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item p-2">Discounts</li>
                <li class="list-group-item p-2">Campaigns</li>
                <li class="list-group-item p-2">Brands</li>
                <li class="list-group-item p-2">Gift Certificates</li>
                <li class="list-group-item p-2">Returns</li>
              </ul>
            </div>
          </div>
          <div class="col-md-2">
            <div class="card">
              <div class="card-header">Account</div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item p-2">Sign In</li>
                <li class="list-group-item p-2">Sign up</li>
                <li class="list-group-item p-2">My Account</li>
                <li class="list-group-item p-2">Order History</li>
                <li class="list-group-item p-2">Wish List</li>
              </ul>
            </div>
          </div>
          <div class="col-md-2">
            <div class="card">
              <div class="card-header">Support</div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item p-2">FAQ</li>
                <li class="list-group-item p-2">Ticket</li>
                <li class="list-group-item p-2">Feedback</li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card">
              <div class="card-header">Contact Us</div>
              <div class="card-body">
                <p>We are a team of designers and developers that create high quality Magento, Prestashop, Opencart.</p>
                <p class="m-0"><strong>Address</strong></p>
                <p>4710-4890 Breckinridge St, UK Burlington, VT 05401</p>
                <p class="m-0"><strong>Need Help?</strong></p>
                <p>Call: 1-800-345-6789</p>
              </div>
            </div>
          </div>
          <div class="col-md-12 mt-5 mb-5">
            <div class="card">
              <div class="card-body">
                <ul class="nav justify-content-center">
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-2x fab fa-facebook-f"></i></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-2x fab fa-twitter"></i></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-2x fab fa-instagram"></i></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-2x fab fa-google-plus-g"></i></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-2x fab fa-youtube"></i></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-2x fab fa-pinterest"></i></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-2x fab fa-linkedin-in"></i></a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <ul class="nav">
              <li class="nav-item">
                <a class="nav-link" href="#">Privacy Policy</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Terms & Conditions</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Site Map</a>
              </li>
            </ul>
          </div>
          <div class="col-md-4">
            <p class="text-center">Copyright © 2019 Your Store All Right Reserved.</p>
          </div>
          <div class="col-md-4">
            <ul class="nav justify-content-end">
              <li class="nav-item">
                <a class="nav-link" href="#"><i class="fab fa-cc-diners-club"></i></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><i class="fab fa-cc-amex"></i></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><i class="fab fa-cc-discover"></i></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><i class="fab fa-cc-jcb"></i></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><i class="fab fa-cc-mastercard"></i></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><i class="fab fa-cc-paypal"></i></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><i class="fab fa-cc-visa"></i></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
</body></html>