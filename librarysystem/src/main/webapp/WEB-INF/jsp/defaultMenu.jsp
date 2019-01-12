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
	<script type="text/javascript">
		function submitForm(){
			document.getElementById("logoutForm").submit();
		}
	</script>

</head>

<body>

   <nav class="navbar navbar-expand-lg navbar-light bg-light">
  		<a class="navbar-brand" href="/home" id ="home">PSU Library</a>
  		<button class="navbar-toggler" type="submit" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>
  		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li id="searchBook" class="nav-item active">
		        <a class="nav-link" href="/searchBook">Search Books <span class="sr-only">(current)</span></a>
		      </li>
		      <li id="displayBookList" class="nav-item">
		        <a class="nav-link" href="/displayBookList">Browse</a>
		      </li>
		    </ul>
		    <ul class = "navbar-nav ml-auto">
		    	<li id="logout" class = "nav-item ml-auto">
		      	 <a class = "nav-link" href="${pageContext.request.contextPath}/login?logout=1">Logout</a>
		      </li>
		    </ul>
 	 	</div>
	</nav>
</body>
</html>
