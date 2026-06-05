<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>
Student Attendance System
</title>

<link rel="stylesheet"
href="css/style.css">

<link href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">
<link rel="icon" type="image/jpg" href="assects/icon/google.jpg">
<style>

body{
    background:
    linear-gradient(
    to right,
    #4facfe,
    #00f2fe
    );
}

/* HERO SECTION */

.hero-section{
    width:100%;
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:20px;
}

/* MAIN CARD */

.main-card{

    width:550px;

    background:white;

    padding:50px;

    border-radius:25px;

    text-align:center;

    box-shadow:
    0px 5px 20px
    rgba(0,0,0,0.2);
}

/* TITLE */

.main-title{

    font-size:42px;

    font-weight:bold;

    color:#2563eb;

    margin-bottom:20px;
}

/* SUBTITLE */

.main-subtitle{

    color:#555;

    font-size:18px;

    margin-bottom:35px;

    line-height:30px;
}

/* BUTTON */

.btn-custom{

    width:220px;

    padding:14px;

    font-size:18px;

    border-radius:10px;

    margin:10px;

    font-weight:bold;
}

/* ICON */

.icon{

    font-size:70px;

    margin-bottom:20px;
}

</style>

</head>

<body>

<div class="hero-section">

    <div class="main-card">

        <div class="icon">

            🎓

        </div>

        <h1 class="main-title">

            Student Attendance System

        </h1>

        <p class="main-subtitle">

            Manage Student Attendance Easily
            Using JSP, DAO, MySQL and MVC Architecture

        </p>

        <a href="register.jsp"
           class="btn btn-primary btn-custom">

            Student Register

        </a>

        <br>

        <a href="login.jsp"
           class="btn btn-success btn-custom">

            Student Login

        </a>

    </div>

</div>

</body>

</html>