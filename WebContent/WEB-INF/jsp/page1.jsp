<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
<title>Droplets</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/style.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>


</head>
<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h1><a href="${pageContext.request.contextPath}">Droplets - App</a></h1>
				<p>This is a sample app for Interview......</p>
				<p style="float: right; margin-top: -20px; font-weight: bold;">User
					Logged in: ${perss.username} / User ID: ${perss.userId}</p>
			</div>



			<div class="panel-body">
				<h3>Create Droplets</h3>
				<sf:form method="post"
					action="${pageContext.request.contextPath}/createUserDetails"
					commandName="userDetails">
					<div class="row">
						<h4>Select Image:</h4>
						<div class="col-sm-2">
							<div class="form-group">
								<label for="sel2"><span
									class="glyphicon glyphicon-screenshot" style="font-size: 4.2em"></span><br />
									Ubuntu</label>
								<select name="version" class="form-control"
									id="sel2">
									<option disabled selected value>Select Version</option>
									<option value="Ubuntu - 1">1</option>
									<option value="Ubuntu - 2">2</option>
									<option value="Ubuntu - 3">3</option>
									<option value="Ubuntu - 4">4</option>
								</select>
							</div>
						</div>

						<div class="col-sm-2">
							<div class="form-group">
								<label for="sel3"><span
									class="glyphicon glyphicon-transfer" style="font-size: 4.2em"></span><br />
									Free BSD</label>
								<select name="version" class="form-control"
									id="sel3">
									<option disabled selected value>Select Version</option>
									<option value="FreeBSD - 1">1</option>
									<option value="FreeBSD - 2">2</option>
									<option value="FreeBSD - 3">3</option>
									<option value="FreeBSD - 4">4</option>
								</select>
							</div>
						</div>

						<div class="col-sm-2">
							<div class="form-group">
								<label for="sel4"><span class="glyphicon glyphicon-user"
									style="font-size: 4.2em"></span><br /> Fedora</label>
								<select name="version" class="form-control"
									id="sel4">
									<option disabled selected value>Select Version</option>
									<option value="Fedora - 1">1</option>
									<option value="Fedora - 2">2</option>
									<option value="Fedora - 3">3</option>
									<option value="Fedora - 4">4</option>
								</select>
							</div>
						</div>

						<div class="col-sm-2">
							<div class="form-group">
								<label for="sel5"><span
									class="glyphicon glyphicon-record" style="font-size: 4.2em"></span><br />
									Debian</label>
								<select name="version" class="form-control"
									id="sel5">
									<option disabled selected value>Select Version</option>
									<option value="Debian - 1">1</option>
									<option value="Debian - 2">2</option>
									<option value="Debian - 3">3</option>
									<option value="Debian - 4">4</option>
								</select>
							</div>
						</div>

						<div class="col-sm-2">
							<div class="form-group">
								<label for="sel1"><span
									class="glyphicon glyphicon-tower" style="font-size: 4.2em"></span><br />
									CoreOS</label>
								<select name="version" class="form-control"
									id="sel5">
									<option disabled selected value>Select Version</option>
									<option value="CoreOS - 1">1</option>
									<option value="CoreOS - 2">2</option>
									<option value="CoreOS - 3">3</option>
									<option value="CoreOS - 4">4</option>
								</select>
							</div>
						</div>

					</div>


					<div class="row">
						<h4>Select Size:</h4>
						<div class="col-sm-2">
							<input type="radio" name="packageName" path="packageName"
								id="radio1" class="radio" value="Package-one" /> <label
								for="radio1">5$/mo <br>$0.07/hour
								<hr> 512MB / 1CPU <br> 20 GB SDD Disk <br> 100 GB
								Transfer
							</label>
						</div>

						<div class="col-sm-2">

							<input type="radio" name="packageName" id="radio2" class="radio"
								value="Package-two" /> <label for="radio2">10$/mo <br>$0.07/hour
								<hr> 1012MB / 1CPU <br> 30 GB SDD Disk <br> 200
								GB Transfer
							</label>
						</div>

						<div class="col-sm-2">

							<input type="radio" name="packageName" id="radio3" class="radio"
								value="Package-three" /> <label for="radio3">20$/mo <br>$0.07/hour
								<hr> 2GB / 1CPU <br> 40 GB SDD Disk <br> 300 GB
								Transfer
							</label>
						</div>

						<div class="col-sm-2">
							<input type="radio" name="packageName" id="radio4" class="radio"
								value="Package-four" /> <label for="radio4">40$/mo <br>$0.07/hour
								<hr> 4512MB / 1CPU <br> 40 GB SDD Disk <br> 400
								GB Transfer
							</label>
						</div>

						<div class="col-sm-2">
							<input type="radio" name="packageName" id="radio5" class="radio"
								value="Package-five" /> <label for="radio5">50$/mo <br>$0.07/hour
								<hr>5512MB / 1CPU <br> 50 GB SDD Disk <br> 500 GB
								Transfer
							</label>
						</div>


					</div>
					<br>
					<br>
					<div class="row">
						<h4>Select Datacenter:</h4>
						<div class="col-sm-2">
							<div class="form-group">
								<label for="london"><span
									class="glyphicon glyphicon-flag" style="font-size: 4.2em"></span><br />
									London</label>
								<select name="region" class="form-control"
									id="london">
									<option disabled selected value>Select Version</option>
									<option value="london-1">1</option>
									<option value="london-2">2</option>
									<option value="london-3">3</option>
									<option value="london-4">4</option>
								</select>
							</div>
						</div>

						<div class="col-sm-2">
							<div class="form-group">
								<label for="usa"><span class="glyphicon glyphicon-flag"
									style="font-size: 4.2em"></span><br /> USA</label>
								<select name="region" class="form-control"
									id="usa">
									<option disabled selected value>Select Version</option>
									<option value="USA-1">1</option>
									<option value="USA-2">2</option>

								</select>
							</div>
						</div>

						<div class="col-sm-2">
							<div class="form-group">
								<label for="Singapore"><span
									class="glyphicon glyphicon-flag" style="font-size: 4.2em"></span><br />
									Singapore</label>
								<select name="region" class="form-control"
									id="Singapore">
									<option disabled selected value>Select Version</option>
									<option value="Singapore-1">1</option>
									<option value="Singapore-2">2</option>

								</select>
							</div>
						</div>
					</div>

					<div>
						<br>
						<button type="submit" class="btn btn-success">Click here
							to Submit</button>
					</div>
				
					<input type="hidden" name="userId" value="${perss.userId}" />


				</sf:form>

			</div>
			<div class="panel-footer">Developed by: Sagheer Rajper</div>
		</div>
</body>
</html>
