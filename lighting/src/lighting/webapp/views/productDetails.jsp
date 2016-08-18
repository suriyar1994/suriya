
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" type="image/png" href="resources/images/tab.png" sizes="16x16" />
  <title>MoonBeams</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .jumbotron{text-align:center;
  background-color:#2f4f4f;
  color:#7fffd4 ;}
  .btn-md{background-color:#54a792;}</style>
  
</head>
<body>
<div class="jumbotron text-center">
	<h2 style="color:#7fffd4;">${selectedProduct.name}</h2></div>
	
	
	<br>
		<div class="container-fluid">
 <div class="row">
 <div class="col-sm-2" > </div>
    <div class="col-sm-4" ><img src="../resources/images/${selectedProduct.id}.jpg"  height="200" width="150" alt="image name ${selectedProduct.id}">
<br><br><br><br>
<table>
<tr>
										<th></th>
					<td align="left" width="200"><a href="viewproducts"class="btn  btn-md" ><span style="color:white;"><b>BacktoProduct</b></span></a> &nbsp;&nbsp;
					 <a href="<c:url value='productbuy/${product.id}' />"class="btn btn-md"><span style="color:white;"><b>Buy</b></span></a>
					</td></tr>

</table>
    </div>
    <div class="col-sm-4">
    <c:if test="${!empty selectedProduct.name}">
			<table>
				<tr>
					<th align="left" width="80">Product ID</th>
					<td align="left" >${selectedProduct.id}</td>
					
					</tr>
					<tr>
					<th align="left" width="120">Product Name</th>
					<td align="left" >${selectedProduct.name}</td>
					</tr>
					
					<tr>
					<th align="left" width="200">Product Description</th>
					<td align="left" >${selectedProduct.description}</td>
					</tr>
					
					<tr>
					<th align="left" width="80">Price</th>
					<td align="left" >${selectedProduct.price}</td>
					</tr>
					<tr>
					<th align="left" width="200"><h4 style="color:#54a792;">CATEGORY DETAILS</h4></th>
					
					</tr>
					
					<tr>
					<th align="left" width="200">Product Category ID</th>
					<td align="left" >${selectedProduct.category.id}</td>
					
					</tr>
					
				<tr>
					<th align="left" width="80">Product Category Name</th>
					<td align="left" >${selectedProduct.category.name}</td>
					
					</tr>
					<tr>
					<th align="left" width="200"> Description</th>
					<td align="left" >${selectedProduct.category.description}</td>
					</tr>
					<tr>
					<th align="left" width="200"><h4 style="color:#54a792;">SUPPLIER DETAILS</h4></th>
					</tr>
					<tr>
					<th align="left" width="200">Product Supplier ID</th>
					<td align="left" >${selectedProduct.supplier.id}</td>
					
					</tr>
					
				<tr>
					<th align="left" width="80">Product Supplier Name</th>
					<td align="left" >${selectedProduct.supplier.name}</td>
					
					</tr>
					<tr>
					<th align="left" width="200"> Address</th>
					<td align="left" >${selectedProduct.supplier.address}</td>
					</tr>
										
			</table>
			</c:if></div>
			 <div class="col-sm-2" > </div>
   
  </div>
  </div>
  



		
			

		
	
</body>
</html>