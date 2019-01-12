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
		<title>Book List</title>
		<style type="text/css">
			#resultTable {
				top:100px;
				position: absolute;
			}
			#resultTable th {
		 		background-color: #A9A9A9;
		 		color: #f1f1f1;
		 		font-weight: bold;
		 	}
		 	#bookTable {
		 		background-color:#DFE2DB;
				width: 100%;
				height: 100vh;
				background-size: cover;
		 	}
		</style>
		<!--   Reference: https://api.jquery.com/removeclass/ -->
		<script type="text/javascript">
			$(document).ready(function(){
				$("#searchBook").removeClass("active");
				$("#home").removeClass("active");
				$("#displayBookList").addClass("active");
			})
		</script>
	</head>
<body>
	<div class = "container-fluid">
		<jsp:include page="defaultMenu.jsp" />
	</div>
	
	<h4 align="center" style="background-color:#DFE2DB;height: 100vh;">Available Library Books</h4>
	<div class="container-fluid" id = "bookTable">
		<table class = "table table-bordered" id = "resultTable">
			<tr class="d-flex">
				<th class="col-3">Book Name</th>
				<th class="col-3">Author</th>
				<th class="col-3">Location</th>
				<th class="col-3">No of Copies</th>
			</tr>
			<tbody>
				<c:if test="${not empty lists}">
				<c:forEach var = "booksList" items="${lists}">
				<tr class="d-flex">
					<td class="col-3">${booksList.bookName}</td>
					<td class="col-3">${booksList.author}</td>
					<td class="col-3">${booksList.location}</td>
					<td class="col-3">${booksList.noOfCopies}</td>  
				</tr>
				</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>