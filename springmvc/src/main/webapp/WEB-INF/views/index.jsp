<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body  background="<c:url value='/resources/images/pic1.jpg'/>">


	<div class="container  mt-3">

		<div class="row">


			<h1 class="col-md-12 text-center">Product Details</h1>



			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">S.No</th>
						<th scope="col">Product Name</th>
						<th scope="col">Product Description</th>
						<th scope="col">Price</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach  items="${productList}"  var="p">
						<tr>
							<th scope="row">${p.id}</th>
							<td>${p.name}</td>
							<td>${p.description}</td>
							<td class="font-weight-bold"> &#x20B9; ${p.price}</td>
							<td>
							
							<a  href="delete/${p.id}" ><i class="fa-solid fa-trash-can text-danger" style="font-size:20px;"></i></a> 
							<a  href="update/${p.id}" ><i class="fa-solid fa-pen" style="font-size:20px;"></i></a>
							
							
							</td>
						</tr>
				</tbody>
				</c:forEach>
			</table>

			<div class="container text-center">

				<a href="add-product" class="btn btn-outline-success">Add
					Product</a>
				
			</div>



		</div>
	</div>




</body>
</html>