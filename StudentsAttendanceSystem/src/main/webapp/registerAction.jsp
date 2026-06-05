<%@ page import="bean.Student"%>
<%@ page import="dao.StudentDAO"%>
<%@ page import="utility.ValidationUtil"%>
<%@ page import="utility.PasswordEncryptor"%>

<%

String fullName =
request.getParameter("fullName");

String gender =
request.getParameter("gender");

String dateOfBirth =
request.getParameter("dateOfBirth");

String email =
request.getParameter("email");

String phone =
request.getParameter("phone");

String address =
request.getParameter("address");

String year =
request.getParameter("yearOfStudy");

String department =
request.getParameter("department");

String admissionDate =
request.getParameter("admissionDate");

String username =
request.getParameter("username");

String password =
request.getParameter("password");

/* NULL CHECK */

if(fullName == null ||
gender == null ||
dateOfBirth == null ||
email == null ||
phone == null ||
address == null ||
year == null ||
department == null ||
admissionDate == null ||
username == null ||
password == null){

    response.sendRedirect(
    "error.jsp?msg=All Fields Required"
    );

    return;
}

/* EMPTY CHECK */

if(fullName.trim().equals("") ||
email.trim().equals("") ||
phone.trim().equals("") ||
username.trim().equals("") ||
password.trim().equals("")){

    response.sendRedirect(
    "error.jsp?msg=Fields Cannot Be Empty"
    );

    return;
}

/* PHONE VALIDATION */

if(!ValidationUtil.isValidPhone(phone)){

    response.sendRedirect(
    "error.jsp?msg=Phone Number Must Be 10 Digits"
    );

    return;
}

/* EMAIL VALIDATION */

if(!ValidationUtil.isValidEmail(email)){

    response.sendRedirect(
    "error.jsp?msg=Invalid Email Format"
    );

    return;
}

/* PASSWORD VALIDATION */

if(!ValidationUtil.isValidPassword(password)){

    response.sendRedirect(
    "error.jsp?msg=Password Must Contain Capital Letter And Number"
    );

    return;
}

/* YEAR CONVERSION */

int yearOfStudy = 0;

try{

    yearOfStudy =
    Integer.parseInt(year);

}catch(Exception e){

    response.sendRedirect(
    "error.jsp?msg=Invalid Year Of Study"
    );

    return;
}

/* ENCRYPT PASSWORD */

String encryptedPassword =
PasswordEncryptor.encryptPassword(
password
);

/* CREATE OBJECT */

Student s = new Student();

s.setFullName(fullName);

s.setGender(gender);

s.setDateOfBirth(dateOfBirth);

s.setEmail(email);

s.setPhone(phone);

s.setAddress(address);

s.setYearOfStudy(yearOfStudy);

s.setDepartment(department);

s.setAdmissionDate(admissionDate);

s.setUsername(username);

s.setPassword(encryptedPassword);

/* DAO */

StudentDAO dao =
new StudentDAO();

boolean status =
dao.createStudent(s);

/* RESULT */

if(status){

    response.sendRedirect("login.jsp");

}else{

    response.sendRedirect(
    "error.jsp?msg=Registration Failed"
    );
}

%>