<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="j" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="headerforadmin.jsp"/>
  <!-- Custom & Default Styles -->
 <!--  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/carousel.css">
  <link rel="stylesheet" href="css/animate.css">
  <link rel="stylesheet" href="css/style.css"> -->
      <style>
        [data-tooltip]{
            position:  relative;
            cursor: default;
            
        }
        [data-tooltip]::after{
            position: absolute;
            width: 240px;
            left: calc(50% - 70px );
            content: attr(data-tooltip);
            bottom: 125%;
            text-align: center;
            box-sizing: border-box;
            color: #FFFFFF;
            background: #000;
            padding: 8px ;
            border-radius: 10px;
            font-size: 0.9em;
             font-weight: bold;


            visibility: hidden;
            opacity: 0;
            transform: translateY(10px);
            transition: opacity 0.3s, transform 0.2s;
            }
            [data-tooltip]:hover::after{
                opacity: 1;
                visibility: visible;
                transform: translateY(0);
            }
    </style>
</head>

<body>
 <div class="main-panel" id="main-panel">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute" style="background: linear-gradient(to right, #0c2646 0%, #204065 60%, #2a5788 100%); ">
      <div class="container-fluid">
        <div class="navbar-wrapper">
          <div class="navbar-toggle">
            <button type="button" class="navbar-toggler">
              <span class="navbar-toggler-bar bar1"></span>
              <span class="navbar-toggler-bar bar2"></span>
              <span class="navbar-toggler-bar bar3"></span>
            </button>
          </div>
          <!-- <a class="navbar-brand" href="#pablo">Dashboard</a> -->
        </div >
         <div class="blocsininv">
         <a href="/admin">Dashboard</a>
         </div> 

        <div class="blocsinnav">
        <a href="/show">User data</a>
      </div>
      <div class="blocsinnav">
        <a href="/show">Update data </a>
      </div>
      <div class="blocsinnav">
        <a href="/show">Delete Data</a>
      </div>
      <div class="blocsinnav">
        <a href="/admin/sendmail" >Send Mail</a>
      </div>
      <div class="blocsinnav">
        <a href="/admin/jobpost">Post Job</a>
      </div>
      <div class="blocsinnav">
        <a href="/viewjobsadmin">Job List</a>
      </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-bar navbar-kebab"></span>
          <span class="navbar-toggler-bar navbar-kebab"></span>
          <span class="navbar-toggler-bar navbar-kebab"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navigation">
          <form>
            <div class="input-group no-border">
              <input type="text" value="" class="form-control" placeholder="Search...">
              <div class="input-group-append">
                <div class="input-group-text">
                  <i class="now-ui-icons ui-1_zoom-bold"></i>
                </div>
              </div>
            </div>
          </form>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="#pablo">
                <i class="now-ui-icons media-2_sound-wave"></i>
                <p>
                  <span class="d-lg-none d-md-block">Stats</span>
                </p>
              </a>
            </li>
           <li class="nav-item">
              <a class="nav-link" href="#pablo">
                <i class="now-ui-icons location_world"></i>
                
                <p>
                  <span class="d-lg-none d-md-block">Account</span>
                </p>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="now-ui-icons users_single-02"></i>
                <p>
                  <span class="d-lg-none d-md-block">Some Actions</span>
                </p>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="/logout">Sign-Out</a>
                <a class="dropdown-item" href="#">Profile</a>
                <!-- <a class="dropdown-item" href="#">Something else here</a> -->
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
</div>

  <div class="footer-width"></div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>
<%--   <jsp:include page="ShowDetails.jsp"/>   --%>           

<!--  <form action="/logout">
<input type="submit" value="logout">
</form> -->

<!--  post job form-->

      <div class="content">
        <div class="row">
          <div class="col-md-8">
            <div class="cardz" style="height: 60vh; !important" >
              <div class="card-header">
                <h5 class="title" style="text-align: center;">Send Email</h5>
              </div>
              <div class="card-body" style="margin-left: 15px; margin-right: 15px;">
                            
                            
                            
                <j:form  action="/mailSent" method="post" modelAttribute="emails">
                
                
                  <div class="row">
                    <div class="col-md-6 pr-1" style="padding-top: 30px; padding-bottom: 20px;" >
                      <div class="form-group" >
                        <label >To: </label>
                        <div style="margin-bottom: 10px;">
                        <span data-tooltip="Use , (single coma)without space to add multiple email address">Hover to add multiple email Ids'</span>
                        </div>
                        <j:input type="text" class="form-control"   placeholder="To" value="" name="reciever_email" path="reciever_email" id="reciever_email" required="required"/>
                      </div>
                    </div>
                    <div class="col-md-6 pl-1" style="margin-left: 0px;" >
                      <div class="form-group">
                        <label hidden="hidden">toz</label>
                        
                      </div>
                    </div>
                  </div>

                  <div class="row" hidden="hidden">
                    <div class="col-md-6 pr-1">
                        <div class="form-group">
                          <label hidden="hidden" >Country</label>
                          <!-- <input type="text" class="form-control" placeholder="Country" value=""> -->
                          
                        </div>
                      </div>
                    <div class="col-md-6 pl-1" style="margin-left: 0px;" hidden="hidden">
                      <div class="form-group">
                        <label hidden="hidden" >City</label>
                        <!-- <input type="" class="form-control" placeholder="City" value=""> -->
                        
                      </div>
                    </div>
                  </div>
                  
                  
                  
                  
                  
                  
                  <div class="row">
                    <div class="col-md-6 pr-1" style= " padding-top: 5px; padding-bottom: 20px;">
                      <div class="form-group">
                        <label>Subject: </label>
                        
                        <j:input type="text" class="form-control"  placeholder="Subject" value="" name="subject" path="subject" id="subject" required="required"/>
                      </div>
                    </div>
                    <div class="col-md-6 pl-1" style="margin-left: 0px;" >
                      <div class="form-group">
                        <label hidden="hidden">toz</label>
                        
                      </div>
                    </div>
                  </div>

                  <div class="row" hidden="hidden">
                    <div class="col-md-6 pr-1">
                      <div class="form-group">
                        <label hidden="hidden">Subject</label> 
                       
                      </div>
                    </div>
                       <div class="col-md-6 pl-1" style="margin-left: 0px;" hidden="hidden">
                        <div class="form-group">
                          <label hidden="hidden">Salary</label>
                          
                        </div>
                      </div>
                  </div>
                    <%-- <div class="col-md-6 pl-1" style="margin-left: 0px;">
                        <div class="form-group">
                          <label hidden="hidden">Posted on</label>
                          <j:input type="date" class="form-control" placeholder="Posted On" value="" hidden="hidden" path="j_pdate" name="j_pdate"/>
                        </div>
                      </div>
                       --%>
                      <div class="row" hidden="hidden">
                    <div class="col-md-6 pr-1">
                      <div class="form-group">
                        <label hidden="hidden" >Job Type</label>
                        <div class="row form-group">
                            <div class="col-md-12"></div>
                            <div class="col-md-12 mb-3 mb-md-0">
                            <label for="option-job-type-1" >
                            
                            </label>
                            </div>
                            <div class="col-md-12 mb-3 mb-md-0">
                            <label for="option-job-type-2">
                            
                            </label>
                            </div>
                            </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-12" style= " padding-top: 10px; padding-bottom: 20px;">
                      <div class="form-group">
                        <label>Body:</label>
                        <j:textarea rows="4" required="required" cols="80" class="form-control" placeholder="Add Body" value="" path="body" name="body"></j:textarea>
                      </div>
                      <button for="click" class="close-btn"  style="text-align: center; center; margin-top: 35px;" ">Send</button>
                      
                      
        <!-- <script>
            function job(){
            alert("Job Posted Successfully");
            }
            onclick="job()"
        </script> -->
                      
                    </div>
                  </div>
                </j:form>
                      
                  </div>
                  
                  
              </div>
            </div>
          </div>
          
        </div>
      
      
      
      
      
      
      <!-- end of post job form -->
<footer class="footer" style="margin-left: 250px; margin-top: 200px">
        <div class=" container-fluid ">
          <nav>
            <ul>
              <li>
                <a href="/">
                  ABC Jobs Portal
                </a>
              </li>
              <li>
                <a href="">
                  About Us
                </a>
              </li>
              <li>
                <a href="/admin">
                  Dashboard
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright" id="copyright">
            All copyrights are reserved 2022
          </div>
        </div>
      </footer>
   

<%-- <jsp:include page="footer.jsp"/> --%>
</body>

</html>