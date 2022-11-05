<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 9]> <html class="no-js ie9 fixed-layout" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js " lang="en"> <!--<![endif]-->
<head>

</head>
<body style="background-image: ../images/thankyou.png">  
<!-- header -->
<jsp:include page="indexheader.jsp"/>

        <section id="home" class="video-section js-height-full">
            <div class="overlay"></div>
            <div class="home-text-wrapper relative container">
                <div class="home-message">
                    <p>ABC JOBS PORTAL</p>
                    <small>Looking for jobs? You are at right place. ABC Jobs has helped over 14 Thousands of people to get their dream job</small>
                    <div class="btn-wrapper">
                        <div class="text-center">
                            <a href="/register" class="btn btn-primary wow slideInLeft">Sign Up</a> &nbsp;&nbsp;&nbsp;
                            <a href="/login" class="btn btn-default wow slideInRight">Sign In</a>
                        </div>
                    </div><!-- end row -->
                </div>
            </div>
            <div class="slider-bottom">
                <span>Explore <i class="fa fa-angle-down"></i></span>
            </div>
        </section>

<!-- footer-->
<jsp:include page="footer.jsp"/>
       
</body>
</html>