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
 	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" />
	<!--   Reference: https://api.jquery.com/removeclass/ -->
	<script type="text/javascript">
		$(document).ready(function(){
			$("#searchBook").removeClass("active");
			$("#displayBookList").removeClass("active");
			$("#home").addClass("active");
		})
	</script>
	<style type="text/css">
		.bg{
			background-color:#DFE2DB;
			width: 100%;
			background-size: cover;
			}
		}
	</style>
	
</head>

<!-- References: 1. Bootstrap Assignment 7 -->
<!-- Bootstrap 4.0 Official Web site https://getbootstrap.com/docs/4.0/getting-started/introduction/ -->
<!-- PSU Library Reference: https://www.pdx.edu/floorplans/buildings/ml  -->
<!-- https://getbootstrap.com/docs/4.0/components/jumbotron/ -->
<body class="bg">
   <div>
		<jsp:include page="defaultMenu.jsp" />
	</div>
	<div class = "jumbotron jumbotron-fluid">
		<div class = "container" style = "margin-left:32px">
			<h1>Welcome to PSU Library!!</h1>
			<p>
				Portland State University library is named Branford P. Millar Library and is located 
				between SW 10th Avenue and SW Park Avenue, and the right of way for SW Harrison and Hall Streets positioned North of the Peter Stott Center and South of Blackstone Hall.
			</p>
		</div>
	</div>
	<div class = "container" id= "historyDiv">
		<div class= "row">
			<div class = "col-md-8">
				<h4>Building naming history:</h4>
				<p>
					The original library building, known simply as the Library, was located in what is now the northeastern portion of Smith Center (originally College Center).
					As Portland State College expanded into a University the need for a larger research library became pressing. 
					Because the Library site was already occupied by the expanding College Center (Smith), a new site was chosen across the Park Blocks on Block 230. 
					After the new library was constructed, the old Library became Library East and the new Library West. 
					Thereafter, Library East occupied the first and second mezzanine floors of Smith Center as well as part of the basement until its Librarians and staff merged into the Millar Library in 2013. 
					While Library West functioned as the public face of PSU's library system, Library East was the home of Technical Services (later Resource Services), which included the Cataloging, Acquisitions, and Serials (later Electronic and Continuing Resources) departments as well as the Preservation and Digital Initiatives units.
					Library West was re-named the Branford Price Millar Library in June 1975 after PSU's second president, Branford Price Millar, who served from 1959-1968. 
					The copper beech tree which functions as the centerpiece of the Millar Library was planted circa 1892 by the Watson family. 
					Joseph Franklin Watson (1849-1922) and his wife, Mary Whalley Watson, occupied a house on the corner of Park and Hall starting circa 1880. 
					Joseph Watson was an industrialist involved in a variety of mines, ironworks, shipbuilding and banking interests.		
				</p>
			 </div>
			 <div class = "col-md-2"></div>
			 <div class = "col-md-2"></div>
		 </div>
		 <hr>
		<p> <a href = "https://www.pdx.edu/floorplans/buildings/ml">Content Reference: PSU Library</a></p>
	</div>
</body>
</html>
