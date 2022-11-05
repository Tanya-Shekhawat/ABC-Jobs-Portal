<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
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
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,400i,700,700i" rel="stylesheet"> 
	
    <!-- Custom & Default Styles -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/carousel.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="style.css">
<jsp:include page="adminheader.jsp"/>
  </head>
  <body>
  <div class="img">
    
    <div class="s132" >
      <form:form action="/sear" method="post" modelAttribute="searchd">
        <div class="inner-form" >
          <!-- <div class="input-field first-wrap" >
            <div class="input-select">
              <select data-trigger="" name="choices-single-defaul">
                <option placeholder="">Category</option>
                <option>Name</option>
                <option>Country</option>
                <option>City</option>
              </select>
            </div>
          </div> -->
          
          <div class="input-field second-wrap">
             <form:input path="userName"  type="text" name="userName" id="userName" placeholder="Enter User Name"/>
          </div>
          <div class="input-field third-wrap">
            <button class="btn-search" type="submit">Search</button>
          </div>
          
        </div>
      </form:form>
    </div>
  </div>
    <script src="js/extention/choices.js"></script>
    <script>
      const choices = new Choices('[data-trigger]',
      {
        searchEnabled: false,
        itemSelectText: '',
      });

    </script>

     <!-- Fotter -->
     <footer class="section footer noover">
      <div class="container">
          <div class="row">
              <div class="col-lg-4 col-md-4">
                  <div class="widget clearfix">
                      <h3 class="widget-title">Subscribe Our Newsletter</h3>
                      <div class="newsletter-widget">
                          <p>You can opt out of our newsletters at any time.<br> See our <a href="#">privacy policy</a>.</p>
                         <%--  <form class="form-inline" role="search">
                              <div class="form-1">
                                  <input type="text" class="form-control" placeholder="Enter email here..">
                                  <button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane-o"></i></button>
                              </div>
                          </form> --%>
                          <img src="images/payments.png" alt="" class="img-responsive">
                      </div><!-- end newsletter -->
                  </div><!-- end widget -->
              </div><!-- end col -->

              <div class="col-lg-3 col-md-3">
                  <div class="widget clearfix">
                      <h3 class="widget-title">Join us today</h3>
                      <p>Would you like to earn your dream job by joining us? Join us without losing time.</p>
                      <a href="#" class="readmore">Became a Member</a>
                  </div><!-- end widget -->
              </div><!-- end col -->

              <div class="col-lg-3 col-md-3">
                  <div class="widget clearfix">
                      <h3 class="widget-title">Popular Tags</h3>
                      <div class="tags-widget">   
                          <ul class="list-inline">
                              <li><a href="#">Jobs</a></li>
                              <li><a href="#">Web design Jobs</a></li>
                              <li><a href="#">Development Jobs</a></li>
                              <li><a href="#">Java language Jobs</a></li>
                              <li><a href="#">App Development Jobs </a></li>
                              <li><a href="#">Programming Jobs</a></li>
                          </ul>
                      </div><!-- end list-widget -->
                  </div><!-- end widget -->
              </div><!-- end col -->

              <div class="col-lg-2 col-md-2">
                  <div class="widget clearfix">
                      <h3 class="widget-title">Support</h3>
                      <div class="list-widget">   
                          <ul>
                              <li><a href="#">Terms of Use</a></li>
                              <li><a href="#">Copyrights</a></li>
                              <li><a href="#">Create a Account</a></li>
                              <li><a href="#">Carrier</a></li>
                              <li><a href="#">Trademark</a></li>
                          </ul>
                      </div><!-- end list-widget -->
                  </div><!-- end widget -->
              </div><!-- end col -->
          </div><!-- end row -->
      </div><!-- end container -->
  </footer><!-- end footer -->

  <div class="copyrights">
      <div class="container">
          <div class="clearfix">
              <div class="pull-left">
                  <div class="cop-logo">
                      <a href="#"><img src="images/logo-dark.png" alt=""></a>
                  </div>
              </div>

              <div class="pull-right">
                  <div class="footer-links">
                      <ul class="list-inline">
                          <li>Design : <a href="">ABC Jobs Portal </a></li>
                      </ul>
                  </div>
              </div>
          </div>
      </div><!-- end container -->
  </div><!-- end copy -->
</div><!-- end wrapper -->

<!-- jQuery Files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/carousel.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
<!-- VIDEO BG PLUGINS -->
  </body>
</html>
