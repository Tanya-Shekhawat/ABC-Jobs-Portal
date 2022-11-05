<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- <form action="deleteUser">

<td><input type="text" name="pid" /> </td>

<input type="submit" value="Delete Learners">

 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
  background: linear-gradient(120deg,#2980b9, #44ad4b);
  min-height: 100vh;
  overflow: hidden;
  /* background-image: url(images/2n.png); */
  background-image: url(/images/update.png); 
}

.center{
  box-shadow: 0 15px 15px 0 rgba(0,0,0,0.5) ;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 400px;
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
  border-bottom: 2px solid #adadad;
  margin: 30px 0;
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
  top: 50%;
  left: 5px;
  color: #adadad;
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
.bottom{
    margin: 30px 0;
}
</style>
<body>
    <div class="center">
        <h1>Delete User</h1>
        <form action="deleteUser">
        <div class="txt_field">
        <input type="text" name="pid" required="required" />
        <span></span>
        <label>User ID</label>
        </div>
       <input type="submit" value="Delete User">
       <div class="bottom">

       </div>
</form>
</div>
</body>
</html>