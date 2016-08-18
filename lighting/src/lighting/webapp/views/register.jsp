<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" type="image/png" href="resources/images/tab.png" sizes="16x16" />
<title>Register Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{background-color:#fff68f;}</style>
</head>
<body>
<h4 align="right" style="color:#54a792;"><a href="index.jsp"><span class="glyphicon glyphicon-home" style="color:#54a792;"></span> Home</a></h4>
<br><br><br>
<div class="container">
<div class="row"  >
<div class="col-sm-4"></div>
<div class="col-sm-4" style="background-color:#f8f8ff; box-shadow: 20px 20px 10px grey;">
<br>
<center><h3 style="color:#595959;">Registration Form</h3></center>
<br><br>
<form:form action="../register" method="post">
<div class="form-group">
      
      <input type="text" class="form-control" id="id" placeholder="ENTER USERID" style="background-color:#e0e0e0;">

    </div>
    <div class="form-group">
      
      <input type="text" class="form-control" id="name" placeholder="ENTER USERNAME" style="background-color:#e0e0e0;">

    </div>
    <div class="form-group">
      
      <input type="text" class="form-control" id="password" placeholder="ENTER PASSWORD" style="background-color:#e0e0e0;">

    </div>
    <div class="form-group">
      
      <input type="text" class="form-control" id="mobile" placeholder="ENTER MOBILENUMBER" style="background-color:#e0e0e0;">

    </div>
    <div class="form-group">
      
      <input type="email" class="form-control" id="email" placeholder="ENTER EMAILID" style="background-color:#e0e0e0;">

    </div>
    <div class="form-group">
      
      <input type="textarea" class="form-control" id="address" width="20" height="10" placeholder="ENTER YOUR ADDRESS" style="background-color:#e0e0e0;">

    </div>
        <button type="reset" class="btn btn-success btn-block" value="Login"><b>RESET</b></button><br>
        <button type="submit" class="btn btn-success btn-block" value="Login"><b>SUBMIT</b></button><br>
</form:form>
</div>
 
 <div class="col-sm-4"></div>
</div></div>	


	

	

</body>
</html>