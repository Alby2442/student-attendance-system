<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="bean.Student" %>
<%@ page import="dao.AttendanceDAO" %>
<%@ page import="java.util.Map" %>

<%

Student s =
(Student)session.getAttribute("student");

if(s == null){

    response.sendRedirect("login.jsp");
    return;
}

/* DAO OBJECT */

AttendanceDAO attendanceDAO =
new AttendanceDAO();

/* GET ATTENDANCE REPORT */

Map<String,int[]> report =
attendanceDAO.getAttendanceReport(
s.getStudentId()
);

%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Attendance</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    margin:0;
    padding:0;
    background:linear-gradient(to right,#4facfe,#00f2fe);
    font-family:Arial, Helvetica, sans-serif;
}

.navbar{
    padding:15px 30px;
}

.navbar-brand{
    font-size:28px;
    font-weight:bold;
}

.nav-link{
    font-size:18px;
    margin-left:15px;
}

.table-box{

    width:95%;
    margin:auto;
    margin-top:40px;
    margin-bottom:40px;
    background:white;
    padding:30px;
    border-radius:20px;
    box-shadow:0px 0px 20px rgba(0,0,0,0.2);
}

.title{

    text-align:center;
    color:#0d6efd;
    font-size:45px;
    font-weight:bold;
}

.student-name{

    text-align:center;
    color:#198754;
    font-size:28px;
    font-weight:bold;
    margin-bottom:30px;
}

.progress{

    height:30px;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

<div class="container-fluid">

<a class="navbar-brand" href="#">

Attendance System

</a>

<button class="navbar-toggler"
type="button"
data-bs-toggle="collapse"
data-bs-target="#navbarNav">

<span class="navbar-toggler-icon"></span>

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

<a class="nav-link active"
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

<!-- REPORT -->

<div class="table-box">

<h1 class="title">

Attendance Report

</h1>

<br>

<div class="student-name">

Student :
<%= s.getFullName() %>

</div>

<table class="table table-bordered table-hover">

<tr class="table-primary">

<th>

Subject

</th>

<th>

Total Classes

</th>

<th>

Present

</th>

<th>

Percentage

</th>

</tr>

<%

if(report.size() > 0){

    for(Map.Entry<String,int[]> entry :
        report.entrySet()){

        String subjectName =
        entry.getKey();

        int totalClasses =
        entry.getValue()[0];

        int presentClasses =
        entry.getValue()[1];

        double percentage = 0;

        if(totalClasses > 0){

            percentage =
            (presentClasses * 100.0)
            / totalClasses;
        }

%>

<tr>

<td>

<%= subjectName %>

</td>

<td>

<%= totalClasses %>

</td>

<td>

<%= presentClasses %>

</td>

<td>

<div class="progress">

<div class="progress-bar bg-success"
role="progressbar"
style="width:<%= percentage %>%">

<%= (int)percentage %>%

</div>

</div>

</td>

</tr>

<%

    }

}else{

%>

<tr>

<td colspan="4"
class="text-center text-danger">

No Attendance Records Found

</td>

</tr>

<%

}

%>

</table>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>