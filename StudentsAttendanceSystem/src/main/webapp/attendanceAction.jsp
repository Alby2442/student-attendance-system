<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="bean.Student" %>
<%@ page import="bean.Attendance" %>
<%@ page import="dao.AttendanceDAO" %>
<%@ page import="dao.SubjectDAO" %>

<%

/* SESSION CHECK */
Student s = (Student) session.getAttribute("student");

if (s == null) {
    response.sendRedirect("login.jsp");
    return;
}

/* GET VALUES */
String subjectValue = request.getParameter("subjectId");
String status = request.getParameter("status");
String remarks = request.getParameter("remarks");
String attendanceDate = request.getParameter("attendanceDate"); // ✅ NEW FIX

/* NULL CHECK */
if (subjectValue == null || status == null || attendanceDate == null) {
    response.sendRedirect("error.jsp?msg=Attendance Data Missing");
    return;
}

/* EMPTY CHECK */
if (subjectValue.trim().equals("") ||
    status.trim().equals("") ||
    attendanceDate.trim().equals("")) {

    response.sendRedirect("error.jsp?msg=Fields Cannot Be Empty");
    return;
}

/* SUBJECT ID */
int subjectId = 0;

try {
    subjectId = Integer.parseInt(subjectValue);
} catch (Exception e) {
    response.sendRedirect("error.jsp?msg=Invalid Subject");
    return;
}

/* CREATE ATTENDANCE OBJECT */
Attendance attendance = new Attendance();

attendance.setStudentId(s.getStudentId());
attendance.setSubjectId(subjectId);

/* ✅ FIXED: USE USER SELECTED DATE */
attendance.setAttendanceDate(attendanceDate);

attendance.setStatus(status);
attendance.setRemarks(remarks);

/* DAO */
AttendanceDAO attendanceDAO = new AttendanceDAO();

boolean result = attendanceDAO.markAttendance(attendance);

/* SUBJECT NAME */
SubjectDAO subjectDAO = new SubjectDAO();

String subjectName = subjectDAO.getSubjectNameById(subjectId);

%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Attendance Result</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    margin:0;
    padding:0;
    background:linear-gradient(to right,#4facfe,#00f2fe);
    font-family:Arial, Helvetica, sans-serif;
}

.main-container{
    display:flex;
    justify-content:center;
    align-items:center;
    min-height:100vh;
}

.result-card{
    width:650px;
    background:white;
    border-radius:20px;
    padding:40px;
    text-align:center;
    box-shadow:0px 0px 25px rgba(0,0,0,0.2);
}

.success{
    color:green;
    font-size:35px;
    font-weight:bold;
    margin-bottom:25px;
}

.failed{
    color:red;
    font-size:35px;
    font-weight:bold;
    margin-bottom:25px;
}

.present{
    color:green;
    font-size:28px;
    font-weight:bold;
}

.absent{
    color:red;
    font-size:28px;
    font-weight:bold;
}

.result-text{
    font-size:20px;
    margin-bottom:15px;
}

.btn-custom{
    padding:12px 30px;
    font-size:18px;
    border-radius:10px;
}

</style>

</head>

<body>

<div class="container main-container">

<div class="result-card">

<%

if(result){
%>

<h1 class="success">Attendance Marked Successfully</h1>

<div class="result-text">
Student : <b><%= s.getFullName() %></b>
</div>

<div class="result-text">
Subject : <b><%= subjectName %></b>
</div>

<div class="result-text">
Date : <b><%= attendanceDate %></b>  <!-- ✅ FIXED -->
</div>

<div class="result-text">
Remarks : <b>
<%= (remarks == null || remarks.trim().equals("")) ? "No Remarks" : remarks %>
</b>
</div>

<br>

<%

if(status.equalsIgnoreCase("Present")){
%>

<div class="present">PRESENT</div>

<%
}else{
%>

<div class="absent">ABSENT</div>

<%
}
%>

<%
}else{
%>

<h1 class="failed">Attendance Mark Failed</h1>
<p>Unable To Save Attendance</p>

<%
}
%>

<br><br>

<a href="viewAttendance.jsp" class="btn btn-success btn-custom m-2">
View Attendance
</a>

<a href="attendance.jsp" class="btn btn-primary btn-custom m-2">
Back
</a>

<a href="home.jsp" class="btn btn-dark btn-custom m-2">
Home
</a>

</div>

</div>

</body>
</html>