<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<link rel="icon" type="image/png" href="resources/images/tab.png" sizes="16x16" />
  <title>MoonBeams</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 
  
<style type="text/css">
 .navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus {
    
    color: #54a792;background-color:white;
}
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 20px;
	padding: 10px 5px;

	text-align:center;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color:#7fffd4 ;
	background-color: #2f4f4f;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 20px;
	font-weight: strong;
	padding: 10px 5px;

	text-align:center;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: white;
	background-color: #2f4f4f;
}

.tg .tg-4eph {
	background-color:#fff68f ;
	
}
body{background-color:#2f4f4f;}
</style>
</head>
<body >

	

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

<center>

	<h3 style="color:#7fffd4;"><b>LISTS OF PRODUCT</b></h3><br><br>
		<table class="tg">
			<tr>
				<th width="80">PRODUCTID</th>
				<th></th><th></th>
				<th width="120">PRODUCT NAME</th>
				<th></th><th></th>
				<th width="200">PRODUCT DESCRIPTION</th>
				<th></th><th></th>
				<th width="80">PRICE</th>
				<th></th><th></th>
				<th width="80">PRODUCT CATEGORY</th>
				<th></th><th></th>
				<th width="80">PRODUCT SUPPLIER</th>
				<th></th><th></th>
				<th width="60">DETAILS</th>
				<th></th><th></th>
				<th width="60">BUY</th>
			
			</tr>
			<c:forEach items="${plist}" var="product">
				<tr>
					<td>${product.id}</td>
					<td></td><td></td>
					<td>${product.name}</td>
					<td></td><td></td>
					<td>${product.description}</td>
					<td></td><td></td>
					<td>Rs.${product.price}/-</td>
					<td></td><td></td>
					<td>${product.category.name}</td>
					<td></td><td></td>
					<td>${product.supplier.name}</td>
					<td></td><td></td>
					<td><a href="<c:url value='productdetails/${product.id}' />"class="btn btn-default btn-md"><span class="glyphicon glyphicon-info-sign"></span> <span style="color:Black;">Info</span></a></td>
					<td></td><td></td>
					<td><a href="<c:url value='productbuy/${product.id}' />"><span style="color:#7fffd4;">Buy</span></a></td>
					
				</tr>
			</c:forEach>
		</table>
	 </center>
</body>
</html>