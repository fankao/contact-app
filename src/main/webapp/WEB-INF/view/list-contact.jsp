<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Latest compiled and minified CSS & JS -->
<link rel="stylesheet" media="screen"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<title>Document</title>
</head>
<body>
	<div class="container">
		<header>
			<h1>List contact</h1>
		</header>
		<button type="button" class="btn btn-info"
			style="margin-bottom: 10px;">Add new contact</button>
		<section>
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>First name</th>
						<th>Last name</th>
						<th>Gender</th>
						<th>Email</th>
						<th>Phone</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${contacts}">
						<tr>
							<td>${item.firstName}</td>
							<td>${item.lastName}</td>
							<td>${item.gender == true ? Male : Femail}</td>
							<td>${item.email}</td>
							<td>${item.phone}</td>
							<td>
								 <button type="submit" class="btn btn-warning">Edit</button>
								 <button type="submit" class="btn btn-danger">Delete</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</div>
</body>
</html>