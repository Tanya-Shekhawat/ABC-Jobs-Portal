<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>

<jsp:include page="headerforadmin.jsp"/>
</head>

 <style>
.user-detail{
    border-radius: 5px 5px 0 0 !important;
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 1.5em;
    min-width: 400px;
    color: #000;
    margin-left: 428px;
    margin-right: auto;  
}

.user-detail thead tr{
    
    border-radius: 5px 5px 0 0 !important;
    background-color: #4ed7bc;
    color: #000;
    text-align: left;
    font-weight: bold;
}

.user-detail th,
.user-detail td{
padding: 12px 15px;
}

.user-detail tbody tr{
    text-align: left;
}

.user-detail tbody th{
    text-align: left;
}

.user-detail tbody tr:nth-of-type(even) {
  background-color: #8acbbe ;
}

.user-detail tbody tr:last-of-type {
  border-bottom: 2px solid #47c1a9;
}

</style>



<body style="background-image: url(/images/showresult.png); background-repeat: no-repeat; background-size: cover;">

<div class= "row">

 <div class="main-panel" id="main-panel">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute" style="margin-left: 270px;">
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
          <a href="/admin">Dashboard</a></div>

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
</div>
   
<h1 style="padding-left: 49%; margin-top:9%; ">Job Details</h1>


<Table class="user-detail" style="margin-left: 550px;" >

<thead>    
<tr>
    <th>Job Title </th>
    <th>Company name</th>
    <th>Region</th>
    <th>Job Type</th>
    <th>Last Date</th>
    <th>Actions</th>
    </tr>
</thead>

<tbody>
<dd:forEach var="job" items="${jobl}">
    <tr>
    <td hidden="hidden">${job.job_Id}</td>
    <td>${job.j_title}</td>
    <td>${job.j_company}</td>
    <td>${job.j_country}</td>
    <td>${job.j_type}</td>
    <td>${job.j_ldate}</td>
    <td><a href="/descjobadmin/${job.job_Id}">More Details</a></td>
    
    </tr>
 </dd:forEach>
</tbody>
</Table>

<div class="s132" style="min-height: 60vh !important; " >
    <br>
  </div>
  <!-- footer-->

 

<script src="js/extention/choices.js"></script>
  <script>
    const choices = new Choices('[data-trigger]',
    {
      searchEnabled: false,
      itemSelectText: '',
    });

  </script>
  
  
  <footer class="footer" style="margin-left: 250px; margin-top: -200px">
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
</body>
</html>









