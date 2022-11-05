<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<!-- header -->
<jsp:include page="adminheader.jsp"/>
  
</head>

<!-- Style sheet -->
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


<body style="background-image: url(images/showresult.png); background-repeat: no-repeat; background-size: cover;">
<div class="image" style="background-color: black; height: 60px !important;">
    
</div>
 
<h1 style="padding-left: 45%; margin-top: 100px; ">User's Details</h1>


<Table class="user-detail" >

<thead>    
<tr>
    <th>First name </th>
    <th>Last name</th>
    <th>Email</th>
    <th>Contact Number</th>
    <th>Address</th>
    <th>UserName</th>
    </tr>
</thead>

<tbody>
<%-- <dd:forEach var="arves" items="${searcheded}"> --%>
    <tr>
    <td>${arves.firstName}</td>
    <td>${arves.lastName}</td>
    <td>${arves.mailid}</td>
    <td>${arves.userContact}</td>
    <td>${arves.userAddress}</td>
    <td>${arves.userName}</td>
    </tr>
<%-- </dd:forEach> --%>
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