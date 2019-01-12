<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Registration</title>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
 	<!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>  -->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
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
	#registerForm {
		top:-110px;
		position: absolute;
	}
	
	
	</style>
</head>

<!-- References: https://getbootstrap.com/docs/4.0/components/forms/? -->
<!-- Class examples and assignment on bootstrap form to create registration form  -->
<!--  -->
<body class = "bg">
	 <div class = "container-fluid" id = "registerForm">
    	<div class = "row">
    		<div class = "col-md-4 col-sm-4 col-xs-12"></div>
	    	<div class = "col-md-4 col-sm-4 col-xs-12">
	    		<form:form action="/register" method="post" modelAttribute="user" class="form-container" data-toggle="validator" role="form" name="registerForm">
	    			<h4 align="center">Member Registration</h4>
	  				<div class="form-group input-group mb-2">
						<div class="input-group-prepend">
          					<span class="input-group-text"><i class="fa fa-user" aria-hidden="true"></i></span>
        				</div>
						<form:input type="text" class="form-control" id="exampleUserName" placeholder="Enter username" 
						name="username" path="userName" required = "true" data-error = "Please enter user name"></form:input>
						 <span class="glyphicon form-control-feedback"></span>
                		 <span class="help-block with-errors"></span>
					</div>
					<div class="form-group input-group mb-2">
						<div class="input-group-prepend">
          					<span class="input-group-text"><i class="fa fa-user" aria-hidden="true"></i></span>
        				</div>
						<form:input type="text" class="form-control" id="exampleFirstName" placeholder="Enter first name" name="firstName" path="firstName" />
					</div>
					<div class="form-group input-group mb-2">
						<div class="input-group-prepend">
          					<span class="input-group-text"><i class="fa fa-user" aria-hidden="true"></i></span>
        				</div>
						<form:input type="text" class="form-control" id="exampleLastName" placeholder="Enter last name" name="lastName" path="lastName" />
					</div>
					<div class="form-group input-group mb-2">
						<div class="input-group-prepend">
          					<span class="input-group-text"><i class="fa fa-envelope" aria-hidden="true" style="font-size: 12px;"></i></span>
        				</div>
						<form:input type="email" class="form-control" id="exampleEmailId" placeholder="Enter Email Id" name="email" path="email"  
						required = "true" data-error="Please enter Email address" />
						<span class="glyphicon form-control-feedback"></span>
                		<span class="help-block with-errors"></span>
					</div>
					<div class="form-group input-group mb-2">
						<div class="input-group-prepend">
          					<span class="input-group-text"><i class="fa fa-lock" aria-hidden="true"></i></span>
        				</div>
						<form:input type="password" class="form-control" id="examplePassword" placeholder="Enter password" name="password" path="password"  required = "true" 
						data-minlength="6" data-error = "Please enter password"/>
						 <span class="glyphicon form-control-feedback"></span>
                		 <span class="help-block with-errors"></span>
					</div>
					<div class="form-group input-group mb-2">
						<div class="input-group-prepend">
          					<span class="input-group-text"><i class="fa fa-lock" aria-hidden="true"></i></span>
        				</div>
						<form:input type="password" class="form-control" id="exampleConfirmPassword" placeholder="Confirm password" 
						name="confirmPassword" path="confirmPassword"  data-match="#examplePassword" required = "true" data-error = "Please confirm password"/>
					</div>
					 <span class="glyphicon form-control-feedback"></span>
                	<span class="help-block with-errors"></span>
					<input type="submit" class="btn btn-primary btn-block" value= "Register">
				</form:form>
	    	</div>
    	</div>
    </div>
	
</body>
</html>