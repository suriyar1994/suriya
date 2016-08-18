<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<link rel="icon" type="image/png" href="resources/images/tab.png" sizes="16x16" />
  <title>MoonBeams</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .head{color:white;font-family:Sans-serif;font-size:bolder;background-color:#54a792;}
  .header{font-family:Sans-serif;}
.btn .glyphicon{width:500px;text-align:left;}
.navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus {
    
    color: #54a792;background-color:white;
}
.navbar-default .dropdown .dropdown-menu> li > a:hover, .navbar-default .dropdown .dropdown-menu > li > a:focus {
    
    background-color: #54a792;
}
.shoproom1{color:#54a792;
font-family:Sans-serif;}
.shoproom2{color:#54a792;
font-family:Sans-serif;}
.footer{background-color:#54a792;
color:white;}
</style>
</head>
<body>
	
	
	

	
	<div class="container-fluid">
<div class="head">
<div class="col-sm-10" style="background-color:#54a792;"><br><p><b><i>World Largest Online Shopping website for Lighting!</i></b></p></div>
<div class="col-sm-2" style="background-color:#54a792;"><br><span class="glyphicon glyphicon-phone-alt" style="font-color:white;"></span>&nbsp;<b>0452-248-4834</b><p></p></div>
</div></div>
<div class="container-fluid">
  <div class="header">
    <div class="col-sm-4" > <img src="resources/images/create_thumb2.png">
</div>
 <div class="col-sm-6" ><br><br><br><br> <button type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-search"> </span><button type="button" class="btn btn-sm" style="background-color:#54a792;color:white;"><b>search</b></button>


</div>
	<div class="col-sm-2" ><br><br><br><br><span class="glyphicon glyphicon-shopping-cart" style="color:#54a792;">&nbsp;<a href="myCart"><b>Cart</b>( ${cartSize} )</a></span>

  </div>
  
  </div> </div><br>
  <div class="container-fluid">
  <nav class="navbar navbar-default">
  
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="background-color:#54a792;color:white;font-weight:strong;">HOME</a>
    </div>
    <ul class="nav navbar-nav">
    <li ><a href="userhome"><span class="glyphicon glyphicon-home"></span>USER Home</a></li>
	 <li><a href="admin"><span class="glyphicon glyphicon-home"></span>Admin Home</a></li>
	
      					
      
	   <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORIES <span class="caret"></span></a>
        <ul class="dropdown-menu">
		
		<c:forEach items="${categoryList}" var="category">
			<li><a href=${category.name}>${category.name}</a>
				<ul>
					<c:forEach items="${category.products}" var="product">

						<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

					</c:forEach>

				</ul></li>
		</c:forEach>


        </ul>
      </li>
      <li><a href="#"style="font-weight:strong;">ABOUT US</a></li>
      <li><a href="#"style="font-weight:strong;">TOP BRANDS</a></li>
         
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="views/register.jsp">
					<span class="glyphicon glyphicon-user" style="color:#54a792;font-weight:strong;"></span> Sign Up</a></li>
      <li><a href="login.jsp">  <span class="glyphicon glyphicon-log-in" style="color:#54a792;font-weight:strong;"></span> Login</a></li>
    </ul>
  
</nav></div>
<div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/slide1.jpg" alt="slide1" width="1500" height="400">
      </div>

      <div class="item">
        <img src="resources/images/slide2.jpg" alt="slide2" width="1500" height="400">
      </div>
    
      <div class="item">
        <img src="resources/images/slide3.jpg" alt="slide3" width="1500" height="400">
      </div>

	<div class="item">
        <img src="resources/images/slide4.jpg" alt="slide4" width="1500" height="400">
      </div>

	<div class="item">
        <img src="resources/images/slide5.jpg" alt="slide5" width="1500" height="400">
      </div>



      

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div></div>
  <br><br>
<h3 style="color:#54a792; font-family:Sans-serif;"><center><i><b>SHOP BY TOP CATEGORIES </b></i><span class="glyphicon glyphicon-share-alt" style="color:#54a792;"> </span></center></h3>
<br><br><div class="container-fluid">
<div class="shoproom1">


    <div class="col-sm-4"> <center><img src="resources/images/kitchen1.jpg"class="img-thumbnail"class="img-responsive image-shadow"><h4 style="font-size:bolder;">Kitchen Lighting</h4><br></div>
	
    <div class="col-sm-4"><center><img src="resources/images/bathroom1.jpg" class="img-thumbnail"class="img-responsive image-shadow"><h4 style="font-size:bolder;">BathRoom Lighting</h4><br></div>

    <div class="col-sm-4"><center><img src="resources/images/diningroom1.jpg"class="img-thumbnail" class="img-responsive image-shadow"><h4 style="font-size:bolder;">DiningRoom Lighting</h4><br></div>

</div> </div>
<br>
<br>
<br>
<div class="container-fluid">
<div class="shoproom2">


    <div class="col-sm-4"><center><img src="resources/images/foyer1.jpg" class="img-thumbnail" class="img-responsive image-shadow"><h4 style="font-size:bolder;">Foyer Lighting</h4><br></div>
	
    <div class="col-sm-4"><center><img src="resources/images/living1.jpg" class="img-thumbnail" class="img-responsive image-shadow"><h4 style="font-size:bolder;">LivingRoom Lighting</h4><br></div>
	
    <div class="col-sm-4"><center><img src="resources/images/bedroom1.jpg"class="img-thumbnail" class="img-responsive image-shadow"><h4 style="font-size:bolder;">BedRoom Lighting</h4><br></div>
	</div></div>


<br><br>


<br>
<div class="container-fluid">
<div class="row1"><br><br>
<div class="col-sm-2"></div>
    <div class="col-sm-8"><h4 style="color:#54a792;"><b>Buy Lamps & Lighting Online at Best Prices in India</b></h4>

<p style="font-family:Sans-serif;">MoonBeams lighting is your one-stop shop for home indoor and outdoor lighting fixtures including: chandeliers, ceiling lights, pendant lights, wall lights, table lamps, desk lamps, lampshades, and ceiling fans from our own brands and designs, as well as from hundreds of other manufacturers.

Boring standard lights can spoil the finish of your well-planned decor. With our range of lamps and lighting products, convert this utilitarian accessory into another classy 
addition to your stylish decor. Check out table lamps online to convert an ordinary desk into an elegant decorative accessory.
 Enhance your home's modernistic feel and save power by replacing incandescent bulbs with LED table lamps. You can also buy study 
 lamps online to enhance productivity at your work or study desk.</p>

 </div>
 <div class="col-sm-2"></div></div></div>
   , 

   
  
<br>
<br>


<hr>
<div class="container-fluid">
<div class="about">
<div class="col-sm-2"></div>
  <div class="col-sm-3"><h5 style="color:blue;">Get to Know Us</h5><br>
About Us<br>
Careers<br>
Press Releases<br>
Amazon Cares<br>
Gift a Smile</div>

  <div class="col-sm-3"><h5 style="color:blue;">Connect with Us</h5><br>
Facebook<br>
Twitter<br>
Instagram<br>
The MoonBeams.in Blog </div>

  <div class="col-sm-3"><h5 style="color:blue;"> Let Us Help You</h5><br>
Your Account<br>
Returns Centre<br>
100% Purchase Protection<br>
Help<br>
MoonBeams Assistant</div>
   <div class="col-sm-1"></div>
</div></div>

<br>
<br>

<hr>
<div class="container-fluid">
<div class="logo">

<center><h6>CONTACT WITH US</h6><img src="resources/images/logo/google.jpg" width="28" height="28">
<img src="resources/images/logo/facebook.png"width="28" height="28" >
<img src="resources/images/logo/houzz.png"width="28" height="28">
<img src="resources/images/logo/pinterest.png"width="28" height="28">
<img src="resources/images/logo/twitter.png"width="28" height="28">
<img src="resources/images/logo/youtube.png"width="28" height="28"></center></div>
<br>
<br>
<br>

</div>


<div class="container-fluid">
<div class="footer">
<br><br>
<p style="color:grey;"><center>© 2016 
MoonBeams ™ All Rights Reserved.</center><p>
<p style="color:grey;"><center>MoonBeams Lighting is a Registered Trademark of Dolan NW LLC</center></p><br><br></div>

  
  
  </div>
</body>

  

	
	

</html>