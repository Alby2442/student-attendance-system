<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%

String message =
request.getParameter("msg");

if(message == null){

    message =
    "Unknown Error Occurred";
}

%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Error Page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{

    margin:0;
    padding:0;
    background:linear-gradient(to right,#ff512f,#dd2476);
    font-family:Arial, Helvetica, sans-serif;
}

.main-container{

    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.error-card{

    width:600px;
    background:white;
    padding:40px;
    border-radius:20px;
    text-align:center;
    box-shadow:0px 0px 25px rgba(0,0,0,0.3);
}

.error-title{

    color:red;
    font-size:40px;
    font-weight:bold;
    margin-bottom:20px;
}

.error-message{

    font-size:22px;
    color:#333;
    margin-bottom:35px;
    font-weight:bold;
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

<div class="error-card">

<div class="error-title">

Registration Error

</div>

<div class="error-message">

<%= message %>

</div>

<a href="register.jsp"
class="btn btn-primary btn-custom m-2">

Back To Registration

</a>

<a href="login.jsp"
class="btn btn-success btn-custom m-2">

Go To Login

</a>

</div>

</div>

</body>

</html>