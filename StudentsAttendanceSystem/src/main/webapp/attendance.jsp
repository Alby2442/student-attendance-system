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

<title>Mark Attendance</title>

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

    padding:20px;

}

/* CARD */

.attendance-card{

    width:650px;

    background:white;

    border-radius:25px;

    padding:45px;

    box-shadow:
    0px 0px 25px
    rgba(0,0,0,0.2);

}

/* TITLE */

.title{

    text-align:center;

    color:#0d6efd;

    font-size:42px;

    font-weight:bold;

    margin-bottom:10px;

}

/* SUBTITLE */

.subtitle{

    text-align:center;

    color:gray;

    margin-bottom:35px;

    font-size:18px;

}

/* STUDENT NAME */

.student-name{

    color:#198754;

    font-weight:bold;

}

/* BUTTON */

.btn-custom{

    width:100%;

    padding:14px;

    font-size:18px;

    border-radius:12px;

}

/* FORM LABEL */

.form-label{

    font-weight:bold;

}

/* RESPONSIVE */

@media(max-width:768px){

    .attendance-card{

        width:100%;
        padding:25px;

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

<a class="nav-link"
href="profile.jsp">

Profile

</a>

</li>

<li class="nav-item">

<a class="nav-link active"
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

<!-- ATTENDANCE FORM -->

<div class="container main-container">

<div class="attendance-card">

<h1 class="title">

Attendance

</h1>

<p class="subtitle">

Welcome

<span class="student-name">

<%= s.getFullName() %>

</span>

</p>

<form action="attendanceAction.jsp" method="post">

<!-- DATE SELECTION (NEW) -->
<div class="mb-3">

    <label class="form-label">
        Attendance Date
    </label>

    <input type="date"
           name="attendanceDate"
           class="form-control"
           required>

</div>

<!-- SUBJECT -->
<div class="mb-3">

    <label class="form-label">
        Select Subject
    </label>

    <select name="subjectId"
            class="form-select"
            required>

        <option value="">Select Subject</option>
        <option value="1">Java</option>
        <option value="2">Python</option>
        <option value="3">Database</option>
        <option value="4">Web Programming</option>
        <option value="5">Software Engineering</option>

    </select>

</div>

<!-- STATUS -->
<div class="mb-3">

    <label class="form-label">
        Attendance Status
    </label>

    <select name="status"
            class="form-select"
            required>

        <option value="">Select Status</option>
        <option value="Present">Present</option>
        <option value="Absent">Absent</option>

    </select>

</div>

<!-- REMARKS -->
<div class="mb-4">

    <label class="form-label">
        Remarks
    </label>

    <textarea name="remarks"
              class="form-control"
              rows="3"
              placeholder="Enter remarks here"></textarea>

</div>

<button type="submit"
        class="btn btn-primary btn-custom">

    Mark Attendance

</button>

</form>

</div>

</div>

<script src=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">

</script>

</body>

</html>