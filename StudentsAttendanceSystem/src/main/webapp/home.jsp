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

/* STUDENT NAME */

String studentName =
s.getFullName();

%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Home Page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{

    margin:0;
    padding:0;
    font-family:Arial, Helvetica, sans-serif;

    background:
    linear-gradient(
    to right,
    #4facfe,
    #00f2fe
    );

}

/* NAVBAR */

.navbar{

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

/* MAIN SECTION */

.main-container{

    min-height:90vh;

    display:flex;

    justify-content:center;

    align-items:center;

    padding:20px;

}

/* HOME CARD */

.home-card{

    width:700px;

    background:white;

    border-radius:25px;

    padding:50px;

    text-align:center;

    box-shadow:
    0px 0px 25px
    rgba(0,0,0,0.2);

}

/* TITLE */

.home-card h1{

    color:#0d6efd;

    font-size:48px;

    font-weight:bold;

    margin-bottom:25px;

}

/* WELCOME */

.home-card h2{

    color:#333;

    margin-bottom:20px;

}

/* DESCRIPTION */

.home-card p{

    color:gray;

    font-size:18px;

    margin-bottom:35px;

}

/* STUDENT NAME */

.student-name{

    color:#198754;

    font-weight:bold;

}

/* BUTTON */

.btn-custom{

    padding:14px 35px;

    font-size:18px;

    border-radius:12px;

}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

<div class="container-fluid">

<a class="navbar-brand"
href="#">

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

<a class="nav-link"
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

<!-- MAIN SECTION -->

<div class="container-fluid main-container">

<div class="home-card">

<h1>

Student Portal

</h1>

<h2>

Welcome

<span class="student-name">

<%= studentName %>

</span>

</h2>

<p>



</p>

<a href="attendance.jsp"
class="btn btn-primary btn-custom m-2">

Mark Attendance

</a>

<a href="viewAttendance.jsp"
class="btn btn-success btn-custom m-2">

View Attendance

</a>

<a href="profile.jsp"
class="btn btn-info btn-custom m-2">

Profile

</a>

</div>

</div>

<script src=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">

</script>

</body>

</html>