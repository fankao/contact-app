<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- Khai báo thư viên JSTL -->
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!-- Thư viện Spring Form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

<title>Add New Contact Page</title>
</head>
<body>
	<div class="container">
		 <form:form action="${pageContext.request.contextPath}/contact/processCreateNewContact" modelAttribute="contact" method="POST" class="form-horizontal" role="form">
            <div class="form-group">
                <legend>${ contact.id == 0 ? 'Add new contact': 'Update contact' }</legend>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> First name: </label>

                <div class="col-sm-6">                
                     <form:input path="firstName" class="form-control" required="required"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Last name: </label>

                <div class="col-sm-6">                           
                    <form:input path="lastName" class="form-control" required="required"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Gender: </label>

                <div class="col-sm-6">                           
                    
                    <div class="radio">
                        <label>
                        	<form:radiobutton path="gender" value="${true}"/>
                            <!-- <input type="radio" name="gender" id="input" value=""> -->
                            Male
                        </label>
                        <label>
                        	<form:radiobutton path="gender" value="${false}"/>
                            <!-- <input type="radio" name="gender" id="input" value=""> -->
                            Female
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Email: </label>

                <div class="col-sm-6">                           
                    <form:input path="email" class="form-control" required="required"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Phone: </label>

                <div class="col-sm-6">                           
                    <form:input path="phone" class="form-control" required="required"/>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-6">
                  <button type="submit" class="btn btn-success" style="margin: 20px;">Save</button>
                  <a type="button" class="btn btn-danger">Cancel</a>
                </div>
            </div>
    	</form:form>
	</div>
</body>
</html>