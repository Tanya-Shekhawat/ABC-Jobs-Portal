<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>


<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

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


<body onload='document.loginForm.username.focus();'>
<%-- <jsp:include page="indexheader.jsp"/> --%>
 
  <%-- <c:if test="${not empty errorMessge}"><div style="color:red; font-weight: bold; margin: 30px 0px;">${errorMessge}</div></c:if> --%>
 
 <div class="main" style="min-height: 100vh;">

		<!-- Sing in  Form -->
		<section class="sign-in" style="min-height: 70vh; margin-top: 100px;">
			<div class="container" style="min-height: 70vh;">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="/register" class="signup-image-link">Create an
							account</a><br>
							<a href="/" class="signup-image-link">Go back</a>
					</div>

					<div class="signin-form">
					<c:if test="${param.error!=null}">
                      <i style="color:red; font-weight: bold; margin: 30px 0px;"> Bad Credentials</i>
                       </c:if>
						<h2 class="form-title">Sign In</h2>
						 <form name='login' action="/login" method='POST' class="register-form"
							id="login-form"  >
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" required="required"/>
							</div>
							<!-- <div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div> -->
							<div class="form-group form-button">
								<input id="signin" name="submit" type="submit" value="submit"
									class="form-submit" value="Sign in" />
							</div>
							 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>



 
<%--  
  <form name='login' action="/login" method='POST'>
    <table>
      <tr>
        <td>UserName:</td>
        <td><input type='text' name='username' value=''></td>
      </tr>
      <tr>
        <td>Password:</td>
        <td><input type='password' name='password' /></td>
      </tr>
      <tr>
        <td colspan='2'><input name="submit" type="submit" value="submit" /></td>
      </tr>
    </table>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
  </form>
</body> --%>







</html>