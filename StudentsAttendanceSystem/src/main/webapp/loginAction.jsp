<%@ page import="bean.Student" %>
<%@ page import="dao.StudentDAO" %>

<%

String username = request.getParameter("username");
String password = request.getParameter("password");

// NULL CHECK
if (username == null || password == null ||
    username.trim().equals("") || password.trim().equals("")) {

    response.sendRedirect("error.jsp?msg=Username and Password Required");
    return;
}

StudentDAO dao = new StudentDAO();

// LOGIN CALL
Student s = dao.loginStudent(username, password);

if (s != null) {

    // SUCCESS LOGIN
   session.setAttribute("student", s);
    response.sendRedirect("home.jsp");

} else {

    // FAILED LOGIN
    response.sendRedirect("error.jsp?msg=Invalid Username or Password");
}

%>