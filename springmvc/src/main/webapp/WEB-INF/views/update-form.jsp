<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>

	<div class="container  mt-3">
		<div class="row">

			<div class="col-md-6 offset-md-3">

				<h1 class="text-center">Update the Product Detail</h1>
				<form action="${pageContext.request.contextPath}/handleProduct" method="post">
				
				<div class="form-group">
						
						 <input type="hidden"
							class="form-control" id=""productId"" value="${product.id}"
							aria-describedby="productHelp" placeholder="Enter Product Id"
							name="id">
					</div>
				
					<div class="form-group">
						<label for="productName">Product Name</label>
						 <input type="text"
							class="form-control" id="productName" value="${product.name}"
							aria-describedby="productHelp" placeholder="Enter Product Name"
							name="name">
					</div>



					<div class="form-group">
						<label for="productDesc">Product Description</label>
						<textarea class="form-control" id="productDesc" rows="5"
							name="description" placeholder="Enter Product Details" >${product.description}</textarea>
					</div>




					<div class="form-group">
						<label for="productPrice">Product Price</label> <input type="text"
							class="form-control" id="productPrice" name="price" value="${product.price}"
							placeholder="Product Price">
					</div>


					<div class="container text-center">

						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>


				</form>

			</div>

		</div>
	</div>




</body>
</html>