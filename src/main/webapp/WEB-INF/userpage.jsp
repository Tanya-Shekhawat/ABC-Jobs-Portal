<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <link rel="stylesheet" href="css/profile.css">
    <jsp:include page="userheader.jsp"/>
    
</head>
<body  >
    <!-- profile page -->
    <div class="profile-container">
        <img src="images/cover.png" class="cover-img" alt="">
        <div class="profile-details">
            <div class="pd-left">
                <div class="pd-row">
                    <img src="images/profile.png" class="pd-image">
                    <div>
                        <h3>${queer.userName}  </h3>
                        <h3 hidden="hidden">${queer.userId}</h3>
                        <p>Welcome back ${queer.firstName} ${queer.lastName}</p>
                        <p>120 Friends - 20 mutual</p>
                         <%-- <a  style="text-decoration: none; "  href = "us/update/${queer.userId}"> Update Profile </a>
                         --%>
                        <img src="images/member-1.png">
                        <img src="images/member-2.png">
                        <img src="images/member-3.png">
                        <img src="images/member-4.png">
                    </div>
                </div>
            </div>
            <div class="pd-right">

                <button type="button"><img src="images/add-friends.png">Friend</button>
                <button type="button" onclick="window.location.href='us/update/${queer.userId}'">Update Profile </button>
               <%--  <a  style="text-decoration: none; "  href = "us/update/${queer.userId}"> Update Profile </a>Message</button> --%>
                <br>
                <a href=""><img src="images/more.png"></a>
            </div>
        </div>

        <div class="profile-info">
             <div class="info-col">
                 <div class="profile-intro">
                     <h3>Introduction</h3>
                     <p class="intro-text">Belive in yourself and you can do unbelieveable things. <img src="images/feeling.png"></p>
                     <hr>
                     <ul>
                         <li>Working at Walmart</li>
                         <li>Studied at SAGE University</li>
                         <li>Currently at Bangalore, India</li>
                         <li>Likes to build legos</li>
                         <li>Socially awkward</li>
                     </ul>
                 </div>
             </div>
             <div class="profile-introd">
                <h3>Posts</h3>
                <p class="intro-text">You don't have any posts</p>
                <hr>
            </div>

            <div class="profile-introf">
                <h3>Notification</h3>
                <p class="intro-text">You don't have any new notifications.</p>
                <hr>   
            </div>
             <div class="post-col">
             </div>
</div>
 </div>
    
<!-- footer-->
<jsp:include page="footer.jsp"/>
</body>
</html>