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

				<h1 class="text-center">Fill the Product Detail</h1>
				<form action="handleProduct" method="post">
					<div class="form-group">
						<label for="productName">Product Name</label> <input type="text"
							class="form-control" id="productName"
							aria-describedby="productHelp" placeholder="Enter Product Name"
							name="name">
					</div>



					<div class="form-group">
						<label for="productDesc">Product Description</label>
						<textarea class="form-control" id="productDesc" rows="5"
							name="description" placeholder="Enter Product Details"></textarea>
					</div>




					<div class="form-group">
						<label for="productPrice">Product Price</label> <input type="text"
							class="form-control" id="productPrice" name="price"
							placeholder="Product Price">
					</div>


					<div class="container text-center">

						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>


				</form>

			</div>

		</div>
	</div>




</body>
</html>