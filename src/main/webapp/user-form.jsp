<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Students Data Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: purple">
			<div>
				<a href="<%=request.getContextPath()%>/list" class="navbar-brand"> Students Data
					Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href=
					class="nav-link"></a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>
				<c:if test="${user == null}">
				<fieldset class="form-group">
					<label>Roll no</label> 
					<input type="number" name="id" value="<c:out value='${user.id}' />" class="form-control"
						name="id"required="required">
				</fieldset>
				</c:if>
				<c:if test="${user != null}">
				<fieldset class="form-group">
					<h6>ID = '${user.id}'</h6> 
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" >
				</fieldset>
				</c:if>
				<fieldset class="form-group">
					<label>Student Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label> Email</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email"required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Dept</label> <input type="text"
						value="<c:out value='${user.country}' />" class="form-control"
						name="country">
				</fieldset>

				<button type="submit" class="btn btn-success"style="background-color: purple">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
			
				