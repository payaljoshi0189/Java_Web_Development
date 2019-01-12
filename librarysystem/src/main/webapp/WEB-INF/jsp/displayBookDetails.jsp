<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0" />

		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" />
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<style type="text/css">
			.bg{
				background-color:#DFE2DB !important;
				width: 100%;
				height: 100vh;
				background-size: cover;
			}
	</style>
	<title>Book details</title>
	</head>
<body class = "bg">
	<h4 align="center">Search Result</h4>
	<div class="container-fluid" id = "bookTable">
			<table class = "table table-sm">
				<thead>
					<tr>
						<th>Book Name</th>
						<th>Author</th>
						<th>Location</th>
						<th>No of Copies</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty lists}">
						<c:forEach var = "booksList" items="${lists}">
						<tr>
							<td>${booksList.bookName}</td>
							<td>${booksList.author}</td>
							<td>${booksList.location}</td>
							<td>${booksList.noOfCopies}</td>  
						</tr>
						</c:forEach>
					</c:if>
				<c:otherwise>
					<h4>Book Not found</h4>
				</c:otherwise>
				</tbody>
			</table>
		</div>
</body>
</html>