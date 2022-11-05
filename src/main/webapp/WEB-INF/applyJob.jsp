<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <jsp:include page="adminheader.jsp"/> --%>
</head>



<style>

@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}


body{
    margin: 0;
  padding: 0;
  /* background: linear-gradient(120deg,#2980b9, #44ad4b); */
  min-height: 100vh;
  overflow: hidden;
  
}

.center{
  box-shadow: 0 15px 15px 0 rgba(0,0,0,0.5) ;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 1000px;
  background: white;
  border-radius: 10px;
  /* box-shadow: 10px 10px 15px rgba(0,0,0,0.05); */

}

.center h1{
  text-align: center;
  padding: 20px 0;
  border-bottom: 1px solid silver;
}
.center form{
  padding: 0 40px;
  box-sizing: border-box;
}
form .txt_field{
  position: relative;
  border-bottom: 2px solid #2691d9;
  margin: 30px 0;
  width: 35%;
}
.txt_field input{
  width: 100%;
  padding: 0 5px;
  height: 40px;
  font-size: 16px;
  border: none;
  background: none;
  outline: none;
}

.txt_field label{
  position: absolute;
  top: -20%;
  left: 5px;
  color: #2691d9;
  transform: translateY(-50%);
  font-size: 16px;
  pointer-events: none;
  transition: .5s;
}

.txt_field span::before{
  content: '';
  position: absolute;
  top: 40px;
  left: 0;
  width: 0%;
  height: 2px;
  background: #2691d9 !important;
  transition: .5s;
}

.txt_field input:focus ~ label,
.txt_field input:valid ~ label{
  top: -5px;
  color: #2691d9;
}

.txt_field input:focus ~ span::before,
.txt_field input:valid ~ span::before{
  width: 100%;
}

.apbtn{
  width: 40% !important;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
  margin-left: 270px;
}

.apbtn:hover{
  border-color: #2691d9;
  transition: .5s;
}
.bottom{
    margin: 30px 0;
}
</style>
<body style="background-image: url(/images/update.png); background-repeat: no-repeat; background-size: cover;">
<!-- <form  method="post" action="dataupdate"> -->

<div class="center">
<h1  name="j_title" value="${apply.j_title}" >${apply.j_title}</h1>
<fm:form action="/descjob/${apply.job_Id}" method="get" modelAttribute="apply" >


<div class="txt_field">
    <input type="text" name="j_company" value="${apply.j_company}"  disabled="disabled" />
    <span></span> 
    <label>Company Name</label>
</div>
<div class="txt_field" hidden="hidden">
    <input type="text" name="j_company" value="${apply.job_Id}"  hidden="hidden" disabled="disabled" />
    <span hidden="hidden" ></span> 
    <label hidden="hidden" >Job Id</label>
</div>

 <div class="txt_fieldz">
    <input type="text" name="j_type" value="${apply.j_type}"  disabled="disabled"/>
    <span></span>
    <label>Job Type</label>
</div>

<div class="txt_field">
        <input type="text" name="j_salary" value="${apply.j_salary}"  disabled="disabled"/>
        <span></span>
        <label>Salary (in USD)</label>
 </div>

 <div class="txt_fieldz">
    <input type="" name="j_ldate" value="${apply.j_ldate}"  disabled="disabled" />
    <span></span>
    <label>Last Date</label>
</div>

<div class="txt_field">
    <input type="text" name="j_country" value="${apply.j_country}"   disabled="disabled" />
    <span></span>
    <label>Country </label>
</div>

<div class="txt_fieldz">
    <input type="text" name="j_city"  value="${apply.j_city}"  disabled="disabled" />
    <span></span>
    <label>City</label>
</div>

<div class="txt_fieldy">
    <input type="text" name="j_desc" value="${apply.j_desc}"  disabled="disabled" />
    <span></span>
    <label>Job description</label>
</div>
<div>

<a href="/descjob/${apply.job_Id}"><button class="apbtn">Apply</button></a>
</div>
<div class="bottom"></div>
</fm:form>
<a href="/viewjobs"><button class="button">Go Back</button></a>
<div class="bottom"></div>  
</div>
  
<%--  <jsp:include page="footer.jsp"/> --%>
</body>
<style>

.button{
  width: 20% ;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
  margin-left: 60px;
}

.button:hover{
  border-color: #2691d9;
  transition: .5s;
}



form .txt_fieldz{
  position: relative;
  border-bottom: 2px solid #2691d9;
  margin-top: -72px;
  margin-bottom: 30px;
  margin-left: 550px;
  margin-right: 30px;
  width: 40%;
}
.txt_fieldz input{
  width: 100%;
  padding: 0 5px;
  height: 40px;
  font-size: 16px;
  border: none;
  background: none;
  outline: none;
}

.txt_fieldz label{
  position: absolute;
  top: -40%;
  left: 5px;
  /* color: #adadad; */
  color: #2691d9;

  /* transform: translateY(-50%); */
  font-size: 16px;
  pointer-events: none;
  transition: .5s;
}

.txt_fieldz span::before{
  content: '';
  position: absolute;
  top: 40px;
  left: 0;
  width: 0%;
  height: 2px;
  background: #2691d9 !important;
  transition: .5s;
}

.txt_fieldz input:focus ~ label,
.txt_fieldz input:valid ~ label{
  top: -5px;
  color: #2691d9;
}

.txt_fieldz input:focus ~ span::before,
.txt_fieldz input:valid ~ span::before{
  width: 100%;
}

input[type="submit"]{
  width: 100%;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
}

input[type="submit"]:hover{
  border-color: #2691d9;
  transition: .5s;
}


/* Job description */
form .txt_fieldy{
  position: relative;
  border-bottom: 2px solid #2691d9;
  margin: 30px 0;
  width: 100%;
}
.txt_fieldy input{
  width: 100%;
  padding: 0 5px;
  height: 40px;
  font-size: 16px;
  border: none;
  background: none;
  outline: none;
}

.txt_fieldy label{
  position: absolute;
  top: -20%;
  left: 5px;
  color: #2691d9;
  transform: translateY(-50%);
  font-size: 16px;
  pointer-events: none;
  transition: .5s;
}

.txt_fieldy span::before{
  content: '';
  position: absolute;
  top: 40px;
  left: 0;
  width: 0%;
  height: 2px;
  background: #2691d9 !important;
  transition: .5s;
}

.txt_fieldy input:focus ~ label,
.txt_fieldy input:valid ~ label{
  top: -5px;
  color: #2691d9;
}

.txt_fieldy input:focus ~ span::before,
.txt_fieldy input:valid ~ span::before{
  width: 100%;
}

input[type="submit"]{
  width: 100%;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
}

input[type="submit"]:hover{
  border-color: #2691d9;
  transition: .5s;
}
</style>
</html>


      
