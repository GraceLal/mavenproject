<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Record</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
th,td{
background-color: lightblue;
}
h2{
color: green;
}
</style>

</head>
<body>

<h2 align="center" class="mb-3 mt-3">Record details are as follows</h2>
<div class="container-sm mt-3 mb-3">
<table align = "center" class="table">
<thead>
	<tr>
	<th>Product Id</th>
	<th>Product Name</th>
	<th>Product Description</th>
	<th>Product Price</th>
	</tr>
	</thead>
	<tbody>
	<tr>
	<td>${productid}</td>
	<td>${productname}</td>
	<td>${productdesc}</td>
	<td>${productprice}</td>
	</tbody>
	
</table>
</div>
<br><br>
<center><a href="productlink" class="link-light"><button class="btn btn-success">Back to home page</button></a></center>
	
	
</body>
</html>