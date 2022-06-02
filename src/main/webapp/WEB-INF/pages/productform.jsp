<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
.error{
color:red;
font-style:italic;
font-weight:bold;

}


</style>
</head>
<body>
<br>
<h2 align="center" class="mb-3">Kindly fill the product details</h2>
	
	<form:form action="productdata" method="post" modelAttribute="product">
	<div class="container d-flex flex-column align-items-center">
	 <div class="row g-2 mb-3"> 
	 <div class="col-md-6">
	<form:label path="productId" class="col-form-label" align="center">Product Id:</form:label></div>
   <div class="col-md-6"> 
    <form:input path="productId" class="form-control" />
   </div> 
    </div>
  
  <div class="row g-2 mb-3"> 
	 <div class="col-md-6">
	<form:label path="name" class="col-form-label" align="center">Product Name:</form:label></div>
   <div class="col-md-6"> 
    <form:input path="name" class="form-control" />
   </div> 
    </div>
    
    <div class="row g-2 mb-3"> 
	 <div class="col-md-6">
	<form:label path="description" class="col-form-label" align="center">Product Description:</form:label></div>
   <div class="col-md-6"> 
    <form:input path="description" class="form-control" />
   </div> 
    </div>
    
    <div class="row g-2 mb-3"> 
	 <div class="col-md-6">
	<form:label path="price" class="col-form-label" align="center">Product Price:</form:label></div>
   <div class="col-md-6"> 
    <form:input path="price" class="form-control" />
   </div> 
    </div>
	
	 </div>
	
	<br><br>
	<center>
	<input type="submit" name="InsertData" value="Insert Product Details" class="btn btn-primary">
	<input type="submit" name="Delete" value="Delete Product Details" class="btn btn-danger">
	<input type="submit" name="Update" value="Update Product Details" class="btn btn-warning">
	<button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    View Product
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><input type="submit" name="ShowTable" value="Product Table" class="dropdown-item" ></li>
    <li><input type="submit" name="ShowRecord" value="Record" class="dropdown-item"></li>
    
  </ul>
	
	</center>
	</form:form>	
	
	
</body>
</html>