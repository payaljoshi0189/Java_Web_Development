<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Member Login</title>
 	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	
	<!--Reference for shadow effect on login box: https://cssmatic.com/box-shadow -->
	<style type="text/css">
	.bg{
			background-color:#DFE2DB;
			width: 100%;
			height: 100vh;
			background-size: cover;
			}

	.form-container{
			background-color:#FFFFFF;
			border: 1px solid #fff;
			padding: 50px 60px;
			margin-top: 20vh;
			-webkit-box-shadow: 3px 9px 25px 3px rgba(0,0,0,0.75);
			-moz-box-shadow: 3px 9px 25px 3px rgba(0,0,0,0.75);
			box-shadow: 3px 9px 25px 3px rgba(0,0,0,0.75);
	
	}
	#messageDiv {
		color:red;
	}
	</style>
	
	
</head>
<!-- Reference: https://getbootstrap.com/docs/4.0/components/forms/ -->
<!-- Class examples and assignment on bootstrap form -->
<body class="bg"> 
    <div class = "container-fluid">
    	<div class = "row">
    		<div class = "col-md-4 col-sm-4 col-xs-12"></div>
	    	<div class = "col-md-4 col-sm-4 col-xs-12">
	    		<form method="POST" action="${contextPath}/login" class="form-container" name="loginForm">
	    			<h4 align="center">Member Login</h4>
	    			<div id ="messageDiv" class="form-group ${error != null ? 'has-error' : ''}">
            			<span>${msg}</span>
            			<span>${errorMsg}</span>
            		</div>
	  				<div class="form-group input-group mb-2">
						<div class="input-group-prepend">
          					<span class="input-group-text"><i class="fa fa-user" aria-hidden="true"></i></span>
        				</div>
						<input type="text" class="form-control" id="exampleUserName" placeholder="Enter username" name="username" required>
					</div>
					<div class="form-group input-group mb-2">
						<div class="input-group-prepend">
          					<span class="input-group-text"><i class="fa fa-lock" aria-hidden="true"></i></span>
        				</div>
						<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password" required>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Login</button>
				</form>
	    	</div>
    	</div>
    </div>
    <div class = "container-fluid" style="padding: 30px 650px;">
    	<a href="/register">Create an account</a>
    </div>
</body>
</html>
