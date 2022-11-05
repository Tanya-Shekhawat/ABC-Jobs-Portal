<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- header -->
 <jsp:include page="adminheader.jsp"/>

  
<title>Insert title here</title>
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
    margin-left: auto;
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


<body>
<body style="background-image: url(/images/showresult.png); background-repeat: no-repeat; background-size: cover;">
<div class="image" style="background-color: black; height: 60px !important;">
    
</div>
 
<h1 style="padding-left: 45%; margin-top: 100px; ">Jobs Available</h1>


<Table class="user-detail" >

<thead>    
<tr>
    <th>Job Title </th>
    <th hidden ="hidden">Job Id </th>
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
    <td>${job.j_title}</td>
    <td hidden ="hidden">${job.job_Id}</td>
    <td>${job.j_company}</td>
    <td>${job.j_country}</td>
    <td>${job.j_type}</td>
    <td>${job.j_ldate}</td>
    <td><a href="/descjobu/${job.job_Id}">More Details</a></td>
    
    </tr>
 </dd:forEach>
</tbody>
</Table>

<div class="s132" style="min-height: 60vh !important; " >
    <br>
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
 <jsp:include page="footer.jsp"/>
 
</body>

</html>


 







