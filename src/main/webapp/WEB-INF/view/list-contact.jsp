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
		<a type="button" class="btn btn-info" href="${pageContext.request.contextPath}/contact/addNewContact"
			style="margin-bottom: 10px;">Add new contact</a>
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
							<td>${item.showGender()}</td>
							<td>${item.email}</td>
							<td>${item.phone}</td>
							<td>
								 <a type="button" class="btn btn-warning" href="${pageContext.request.contextPath}/contact/edit/${item.id}">Edit</a>
								 <a type="button" class="btn btn-danger" data-toggle="modal" href='#modal-id'  onclick="getDeleteLink('${pageContext.request.contextPath}/contact/delete/${item.id}')">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
		
		<!-- Confirm delete modal -->
		<div class="modal fade" id="modal-id">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Delete this contact</h4>
                    </div>
                    <div class="modal-body">
                        <h1>
                            Confirm delete this contact?
                        </h1>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <a id = "confirmButton" type="button" class="btn btn-primary">Confirm</a>
                    </div>
                </div>
            </div>
        </div>
	</div>
	<script type="text/javascript">
		function getDeleteLink(link){
			 document.getElementById("confirmButton").href = link;
		}
		
	</script>
</body>
</html>