<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0" />

		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" />
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
		<style type="text/css">
			#searchBox {
				top:200px;
				position: absolute;
			}
			
			.bg{
			background-color:#DFE2DB;
			width: 100%;
			height: 100vh;
			background-size: cover;
			}
		</style>
		<!--   Reference: https://api.jquery.com/removeclass/ -->
		<script type="text/javascript">
			$(document).ready(function(){
				$("#searchBook").addClass("active");
				$("#home").removeClass("active");
				$("#displayBookList").removeClass("active");
			})
		</script>
		<title>PSU Library Book Search</title>
	</head>
<body class="bg">
	<div class = "container-fluid">
		<jsp:include page="defaultMenu.jsp" />
	</div>
	 <div class = "container-fluid" id = "searchBox">
    	<div class = "row">
    		<div class = "col-md-4 col-sm-4 col-xs-12"></div>
	    	<div class = "col-md-4 col-sm-4 col-xs-12">
	    	<form:form action="/displayBookDetails" method="get" modelAttribute="inputBookName" class="form-container" data-toggle="validator" role="form" name="searchForm">
	    			<h1 style="align-content: center;">Search Books</h1>
	    			<div class="form-group input-group mb-2">
						<div class="input-group-prepend">
          					<span class="input-group-text"><i class="fa fa-book" aria-hidden="true"></i></span>
        				</div>
						<form:input type="text" class="form-control" id="exampleBookName" placeholder="Enter a book name" 
						name="bookNameGiven" path="bookNameGiven" data-error = "Please enter a book name to search"/>
						 <span class="glyphicon form-control-feedback"></span>
                		 <span class="help-block with-errors"></span>
					</div>
					<input type="submit" class="btn btn-primary btn-block" value= "Search">
	    	</form:form>
	    	</div>
	    </div>
	  </div>
	
</body>
</html>