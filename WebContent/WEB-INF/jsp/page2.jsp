<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

				<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
					url="jdbc:mysql://localhost/droplets" user="roots" password="roots" />

				<sql:query dataSource="${snapshot}" var="result">
SELECT * from user where userId =  ${pers.userId};
</sql:query>

				<c:forEach var="row" items="${result.rows}">
					<p style="float: right; margin-top: -20px; font-weight: bold;">
						User Logged in:
						<td><c:out value="${row.username}" /></td> / ID:
						<td><c:out value="${row.userId}" /></td>

					</p>
				</c:forEach>
			</div>



			<div class="panel-body" style="text-align: left;">

				<table class="table">
					<thead>
						<tr>
							<th>Name</th>
							<th>Your IP</th>
							<th>Created</th>
							<th>Usage</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><p>
									<strong>${pers.packageName} </strong>
								</p>
								<p>Version: ${pers.version}</p>
								<p>Datacenter: ${pers.region}</p></td>
							<td>
								<%
									out.print(request.getRemoteHost());
								%>
							</td>
							<td><fmt:formatDate type="date" value="${pers.dateCreated}" /></td>
							<td>
								<button type="button" class="btn btn-info" data-toggle="modal"
									data-target="#myModal">View Usage</button>
							</td>
						</tr>
				</table>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Details</h4>
						</div>
						<div class="modal-body">
							<h4>Usage: $2.3</h4>
							<a href="#">View Usage</a>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-footer">Developed by: Sagheer Rajper</div>
		</div>
</body>
</html>
