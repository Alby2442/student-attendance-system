<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>
Student Registration
</title>

<link rel="stylesheet"
href="css/style.css">

<link href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background:
    linear-gradient(
    to right,
    #4facfe,
    #00f2fe
    );
}

/* REGISTER CONTAINER */

.register-container{

    width:850px;

    margin:auto;

    margin-top:40px;

    margin-bottom:40px;

    background:white;

    padding:40px;

    border-radius:25px;

    box-shadow:
    0px 5px 20px
    rgba(0,0,0,0.2);
}

/* HEADING */

.heading{

    text-align:center;

    margin-bottom:35px;

    color:#2563eb;

    font-weight:bold;

    font-size:40px;
}

/* LABEL */

.form-label{

    font-weight:bold;

    color:#333;
}

/* INPUT */

.form-control{

    height:50px;

    border-radius:10px;
}

/* TEXTAREA */

textarea.form-control{

    height:120px;
}

/* BUTTON */

.btn-custom{

    width:200px;

    padding:12px;

    font-size:18px;

    border-radius:10px;

    margin:10px;

    font-weight:bold;
}

/* PASSWORD NOTE */

.note{

    color:#666;

    font-size:14px;

    margin-top:5px;
}

</style>

</head>

<body>

<div class="container">

    <div class="register-container">

        <h2 class="heading">

            Student Registration

        </h2>

        <form action="registerAction.jsp"
              method="post">

            <div class="row">

                <!-- FULL NAME -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Full Name

                    </label>

                    <input type="text"
                           name="fullName"
                           class="form-control"
                           placeholder="Enter Full Name"
                           pattern="[A-Za-z ]+"
                           required>

                </div>

                <!-- GENDER -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Gender

                    </label>

                    <select name="gender"
                            class="form-control"
                            required>

                        <option value="">

                            Select Gender

                        </option>

                        <option>

                            Male

                        </option>

                        <option>

                            Female

                        </option>

                        <option>

                            Other

                        </option>

                    </select>

                </div>

                <!-- DATE OF BIRTH -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Date of Birth

                    </label>

                    <input type="date"
                           name="dateOfBirth"
                           class="form-control"
                           required>

                </div>

                <!-- EMAIL -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Email

                    </label>

                    <input type="email"
                           name="email"
                           class="form-control"
                           placeholder="Enter Email"
                           required>

                </div>

                <!-- PHONE -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Phone Number

                    </label>

                    <input type="text"
                           name="phone"
                           class="form-control"
                           placeholder="10 Digit Phone Number"
                           pattern="[0-9]{10}"
                           maxlength="10"
                           required>

                </div>

                <!-- YEAR -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Year Of Study

                    </label>

                    <input type="number"
                           name="yearOfStudy"
                           class="form-control"
                           min="1"
                           max="5"
                           placeholder="Enter Year"
                           required>

                </div>

                <!-- DEPARTMENT -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Department

                    </label>

                    <input type="text"
                           name="department"
                           class="form-control"
                           placeholder="Enter Department"
                           required>

                </div>

                <!-- ADMISSION DATE -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Admission Date

                    </label>

                    <input type="date"
                           name="admissionDate"
                           class="form-control"
                           required>

                </div>

                <!-- ADDRESS -->

                <div class="col-md-12 mb-3">

                    <label class="form-label">

                        Address

                    </label>

                    <textarea name="address"
                              class="form-control"
                              placeholder="Enter Address"
                              required></textarea>

                </div>

                <!-- USERNAME -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Username

                    </label>

                    <input type="text"
                           name="username"
                           class="form-control"
                           placeholder="Enter Username"
                           pattern="[A-Za-z0-9_]{4,15}"
                           required>

                </div>

                <!-- PASSWORD -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Password

                    </label>

                    <input type="password"
                           name="password"
                           class="form-control"
                           placeholder="Enter Password"
                           pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{6,}$"
                           required>

                    <div class="note">

                        Password must contain:
                        1 Capital Letter,
                        1 Small Letter,
                        1 Number,
                        Minimum 6 Characters

                    </div>

                </div>

            </div>

            <!-- BUTTONS -->

            <div class="text-center mt-4">

                <button type="submit"
                        class="btn btn-primary btn-custom">

                    Register

                </button>

                <a href="index.jsp"
                   class="btn btn-secondary btn-custom">

                    Back

                </a>

            </div>

        </form>

    </div>

</div>

</body>

</html>This is the register code i have re write the code and give the final correct code as we needed