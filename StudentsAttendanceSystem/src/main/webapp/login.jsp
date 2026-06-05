<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Student Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="css/style.css">

<style>

body{

    margin:0;
    padding:0;
    font-family:Arial, Helvetica, sans-serif;

    background:
    linear-gradient(to right,#4facfe,#00f2fe);

    min-height:100vh;
}

/* CENTER */

.main-container{

    width:100%;
    min-height:100vh;

    display:flex;
    justify-content:center;
    align-items:center;
}

/* LOGIN CARD */

.login-card{

    width:450px;

    background:white;

    padding:40px;

    border-radius:20px;

    box-shadow:0px 0px 25px rgba(0,0,0,0.2);
}

/* TITLE */

.heading{

    text-align:center;

    color:#0d6efd;

    font-size:38px;

    font-weight:bold;

    margin-bottom:10px;
}

.sub-heading{

    text-align:center;

    color:gray;

    margin-bottom:30px;

    font-size:16px;
}

/* INPUT */

.form-control{

    height:50px;

    border-radius:10px;
}

/* BUTTON */

.btn-custom{

    width:100%;

    height:50px;

    border-radius:10px;

    font-size:18px;

    font-weight:bold;
}

/* REGISTER */

.bottom-text{

    text-align:center;

    margin-top:20px;

    font-size:16px;
}

.bottom-text a{

    text-decoration:none;

    font-weight:bold;
}

</style>

</head>

<body>

<div class="container-fluid main-container">

    <div class="login-card">

        <h1 class="heading">

            Student Login

        </h1>

        <p class="sub-heading">

            Login to Student Attendance System

        </p>

        <form action="loginAction.jsp"
              method="post">

            <!-- USERNAME -->

            <div class="mb-3">

                <label class="form-label">

                    Username

                </label>

                <input type="text"
                       name="username"
                       class="form-control"
                       placeholder="Enter Username"
                       required>

            </div>

            <!-- PASSWORD -->

            <div class="mb-4">

                <label class="form-label">

                    Password

                </label>

                <input type="password"
                       name="password"
                       class="form-control"
                       placeholder="Enter Password"
                       required>

            </div>

            <!-- BUTTONS -->

            <button type="submit"
                    class="btn btn-success btn-custom">

                Login

            </button>

            <div class="d-grid mt-3">

                <a href="index.jsp"
                   class="btn btn-secondary btn-custom">

                    Back

                </a>

            </div>

        </form>

        <!-- REGISTER -->

        <div class="bottom-text">

            Don't have an account?

            <a href="register.jsp">

                Register Here

            </a>

        </div>

    </div>

</div>

</body>

</html>