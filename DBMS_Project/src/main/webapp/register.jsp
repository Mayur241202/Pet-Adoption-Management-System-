<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Pet Adoption Management System</title>
    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
    <div class="container">
        <h1>Register</h1>
        <form action="/Pet_Adoption_Management_System/RegisterServlet" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Register</button>
        </form>

        <p>
            <a href="index.html">Back to Home</a>
        </p>

        <%-- Display error message if registration fails --%>
        <%
        String error = request.getParameter("error");
        if (error != null && error.equals("1")) {
        %>
        <p class="error-message">Registration failed. Please try again.</p>
        <%
        }
        %>
    </div>
</body>
</html>
