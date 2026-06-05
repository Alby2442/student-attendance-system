<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="bean.Student" %>

<%

/* SESSION CHECK */

Student s =
(Student)session.getAttribute("student");

if(s == null){

    response.sendRedirect("login.jsp");
    return;
}

%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Profile Page</title>

<link href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{

    margin:0;
    padding:0;

    background:
    linear-gradient(
    to right,
    #4facfe,
    #00f2fe
    );

    font-family:
    Arial,
    Helvetica,
    sans-serif;
}

/* NAVBAR */

.navbar{

    padding:15px 30px;

    box-shadow:
    0px 2px 10px
    rgba(0,0,0,0.2);

}

.navbar-brand{

    font-size:28px;
    font-weight:bold;

}

.nav-link{

    font-size:18px;
    margin-left:15px;

}

/* MAIN CONTAINER */

.main-container{

    display:flex;

    justify-content:center;

    align-items:center;

    min-height:90vh;

    padding:30px;

}

/* PROFILE CARD */

.profile-card{

    width:750px;

    background:white;

    border-radius:25px;

    padding:45px;

    text-align:center;

    box-shadow:
    0px 0px 30px
    rgba(0,0,0,0.2);

}

/* PROFILE IMAGE */

.profile-img{

    width:150px;

    height:150px;

    border-radius:50%;

    margin-bottom:20px;

    border:5px solid #0d6efd;

}

/* PROFILE NAME */

.profile-name{

    font-size:38px;

    font-weight:bold;

    color:#0d6efd;

    margin-bottom:30px;

}

/* PROFILE INFO */

.profile-info{

    font-size:18px;

    margin-bottom:18px;

    background:#f8f9fa;

    padding:15px;

    border-radius:12px;

    text-align:left;

    transition:0.3s;

}

.profile-info:hover{

    background:#e9f2ff;

    transform:scale(1.01);

}

/* LABEL */

.label{

    font-weight:bold;

    color:#198754;

}

/* RESPONSIVE */

@media(max-width:768px){

    .profile-card{

        width:100%;
        padding:25px;

    }

    .profile-name{

        font-size:28px;

    }

}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

<div class="container-fluid">

<a class="navbar-brand"
href="home.jsp">

Attendance System

</a>

<button class="navbar-toggler"
type="button"
data-bs-toggle="collapse"
data-bs-target="#navbarNav">

<span class="navbar-toggler-icon">

</span>

</button>

<div class="collapse navbar-collapse"
id="navbarNav">

<ul class="navbar-nav ms-auto">

<li class="nav-item">

<a class="nav-link"
href="home.jsp">

Home

</a>

</li>

<li class="nav-item">

<a class="nav-link active"
href="profile.jsp">

Profile

</a>

</li>

<li class="nav-item">

<a class="nav-link"
href="attendance.jsp">

Mark Attendance

</a>

</li>

<li class="nav-item">

<a class="nav-link"
href="viewAttendance.jsp">

View Attendance

</a>

</li>

<li class="nav-item">

<a class="nav-link text-warning"
href="logout.jsp">

Logout

</a>

</li>

</ul>

</div>

</div>

</nav>

<!-- PROFILE SECTION -->

<div class="container main-container">

<div class="profile-card">

<img src=
"https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
class="profile-img">

<div class="profile-name">

<%= s.getFullName() %>

</div>

<div class="profile-info">

<span class="label">

Student ID :

</span>

<%= s.getStudentId() %>

</div>

<div class="profile-info">

<span class="label">

Gender :

</span>

<%= s.getGender() %>

</div>

<div class="profile-info">

<span class="label">

Date Of Birth :

</span>

<%= s.getDateOfBirth() %>

</div>

<div class="profile-info">

<span class="label">

Email :

</span>

<%= s.getEmail() %>

</div>

<div class="profile-info">

<span class="label">

Phone :

</span>

<%= s.getPhone() %>

</div>

<div class="profile-info">

<span class="label">

Address :

</span>

<%= s.getAddress() %>

</div>

<div class="profile-info">

<span class="label">

Year Of Study :

</span>

<%= s.getYearOfStudy() %>

</div>

<div class="profile-info">

<span class="label">

Department :

</span>

<%= s.getDepartment() %>

</div>

<div class="profile-info">

<span class="label">

Admission Date :

</span>

<%= s.getAdmissionDate() %>

</div>

<div class="profile-info">

<span class="label">

Username :

</span>

<%= s.getUsername() %>

</div>

</div>

</div>

<script src=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">

</script>

</body>

</html>