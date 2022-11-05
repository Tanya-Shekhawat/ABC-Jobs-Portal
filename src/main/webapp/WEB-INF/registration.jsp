   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html lang="en"  style="background-color: #5372F0;">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/stylec.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400" rel="stylesheet" />
<link href="css/main.css" rel="stylesheet" />
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Meta -->
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Site Meta -->
<title>ABC Jobs Portal</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="images/abc.png">

<!-- Google Fonts -->
<!-- <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,400i,700,700i" rel="stylesheet">  -->

<!-- Custom & Default Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/carousel.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="style.css">




</head>
<body>


<!-- <input type="hidden" id= "status value=<%-- <%= request.getAttribute("status") %>" --%>> -->

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
						<%-- <!-- <%
				if (request.getAttribute("error") != null) {
			%>
			<%=request.getAttribute("error")%><br />
			<%
				}
			%> --> --%>
				
						<form:form action="myreg" method="post" modelAttribute="vajresh">
						
							<div class="form-group">
								<!-- First Name -->
								
								<label for="fname">
								<i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<form:input path="firstName"  type="text" name="firstName" id="firstName" placeholder="Your First Name" required="required" />
									<!-- <input
									type="text" name="fname" id="fname" placeholder="Your First Name"  /> -->
							</div>
							<!-- Last name -->
							<div class="form-group">
								<label for="lname">
								<i class="zmdi zmdi-account material-icons-name"></i></label> <form:input path="lastName"
									type="text" name="lastName" id="lastName" placeholder="Your Last name" required="required"  />
							</div>
							
							<!-- email -->
							<div class="form-group">
								<label for="email">
								<i class="zmdi zmdi-email"></i></label> <form:input path="mailid"
									type="email" name="userMail" id="userMail" placeholder="Your Email" required="required"  />
							</div>
							<!-- Contact number -->
							<div class="form-group">
								<label for="contact">
								<i class="zmdi zmdi-phone"></i></label>
								<form:input path="userContact" type="number" name="userContact" id="userContact"
									placeholder="Contact number"  required="required" />
							</div>
							<!-- Address -->
							<div class="form-group">
								<label for="address">
								<i class="zmdi zmdi-home"></i></label>
								<form:input path="userAddress" type="text" name="userAddress" id="userAddress"
									placeholder="Address[City,Country]" required="required"/>
							</div>
							<!-- user name -->
							<div class="form-group">
								<label for="uname">
								<i class="zmdi zmdi-account-o"></i></label> <form:input path="userName"
									type="text" name="userName" id="userName" placeholder="User Name" required="required"  />
							</div>
							<!-- Password -->
							<div class="form-group">
								<label for="pass">
								<i class="zmdi zmdi-lock"></i></label> <form:input path="password"
									type="password" name="userPassword" id="userPassword" placeholder="Password" required="required" />
							</div>
							
							
							<div class="form-group">
										<br>
										<p  style="color: red;">Please remember your User Name and password, since you will need them to sign in.</p>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Submit"  />
									
				<!-- 		
                                        <script>
                                          function add(){
                                          alert("Account registred Successfully");
                                          }          
                                          </script> -->
									
							</div>
						</form:form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="/login" class="signup-image-link" >I am already
							member</a><br>
							<a href="/" class="signup-image-link">Go back</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	 <script src="vendor/jquery/jquery.min.js"></script> 
	 	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
	<script src="js/main.js"></script>
	</script>	
</body>
</html>