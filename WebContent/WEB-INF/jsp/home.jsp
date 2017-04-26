<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
<title>Droplets</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/style.css">

</head>
<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h1>
					<a href="${pageContext.request.contextPath}">Droplets - App</a>
				</h1>
				<p>This is a sample app for Interview......</p>
			</div>

			<div class="panel-body" style="text-align: center;">
				<h3>Enter your Username!</h3>
				<sf:form method="post"
					action="${pageContext.request.contextPath}/createUser"
					commandName="user">
					<div class="row">
						<sf:input class="form-control" type="username" path="username"
							placeholder="Enter your username"
							style="width:25%;margin:0 auto;" />
						<br>
						<div>
							<br>
							<button type="submit" class="btn btn-success">Click here
								to Process</button>
						</div>
					</div>

				</sf:form>
			</div>
		</div>
		<div class="panel-footer">Developed by: Sagheer Rajper</div>
	</div>
</body>
</html>
