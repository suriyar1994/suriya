<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="icon" type="image/png" href="resources/images/tab.png" sizes="16x16" />
<title>Welcome to User Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus {
    
    color: #54a792;background-color:white;
}
  </style>
</head>
<body>

<div class="container-fluid">
  <nav class="navbar navbar-default">
  <div class="nav-collapse navbar-responsive-collapse">
  <div class="navbar-header">
      <a class="navbar-brand" href="userhome" style="background-color:#54a792;color:white;font-weight:strong;"><span
								class="glyphicon glyphicon-home"></span>HOME</a>
    </div>

					<ul class="nav navbar-nav">
						
						<li><a href="viewproducts"><span
								class="glyphicon glyphicon-tags" style="color:#54a792;"></span> VIEW PRODUCTS</a></li>
						 <li><a href="#"><span class="glyphicon glyphicon-user"  style="color:#54a792;"></span>
								${selectedUserDetails.name}</a></li>
						<li><a href="logout"><span
								class="glyphicon glyphicon-off"  style="color:#54a792;"></span> SIGNOUT </a></li>
<li><a href="#"><span
								class="glyphicon glyphicon-question-sign"  style="color:#54a792;"></span> FAQ </a></li>
					</ul>
				</div>
			</div>
			<!-- end Container -->
		
		<!-- Nav bar Ends -->
		
<div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      <!--<li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>-->
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img class="img-responsive" src="resources/images/userhome1.jpeg" alt="slide1" >
      </div>

      <div class="item">
        <img  class="img-responsive" src="resources/images/userhome2.jpg" alt="slide2">
      </div>
    
      <div class="item">
        <img class="img-responsive" src="resources/images/userhome3.jpg" alt="slide3">
      </div>

	 <!-- <div class="item">
        <img src="resources/images/slide4.jpg" alt="slide4" width="1500" height="400">
      </div>

	<div class="item">
        <img src="resources/images/slide5.jpg" alt="slide5" width="1500" height="400">
      </div>-->



      

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a></div></div>


</body>

</html>