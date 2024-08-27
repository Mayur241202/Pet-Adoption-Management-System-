<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pet Adoption Management System - Register</title>
<link rel="stylesheet" href="adoption.css">
</head>
<body>
	<header>
		<div class="container">
			<h1>Pet Adoption Management System</h1>
			<nav>
				<ul>
					<li><a href="index2.jsp">Home</a></li>
					<li><a href="Adoption.jsp">Adoption Form</a></li>
					<li><a href="index.html">Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<main>
		<div class="form">
			<h1>Pet Donation Form</h1>
			<form action="DonatePetServlet" method="post">
                <label for="firstName">First Name:</label> <input type="text" id="firstName" name="firstName" pattern="[A-Za-z]+" title="Please enter a valid first name (only letters)" required>
                <label for="middleName">Middle Name:</label> <input type="text" id="middleName" name="middleName" pattern="[A-Za-z]+" title="Please enter a valid first name (only letters)">
                <label for="lastName">Last Name:</label> <input type="text" id="lastName" name="lastName" pattern="[A-Za-z]+" title="Please enter a valid first name (only letters)" required>
                <label for="donatorGender">Gender:</label>
                <select id="donatorGender" name="donatorGender" required>
                    <option value="">Select Gender</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
				<label for="phoneNumber">Phone Number:</label> <input type="tel" id="phoneNumber" name="phoneNumber" pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number" required>
				<label for="streetNumber">Street Number:</label> <input type="text" id="streetNumber" name="streetNumber" required>
                <label for="streetName">Street Name:</label> <input type="text" id="streetName" name="streetName" required>
                <label for="city">City:</label> <input type="text" id="city" name="city" required>
                <label for="zipcode">Zipcode:</label> <input type="text" id="zipcode" name="zipcode" pattern="[0-9]{6}" title="Please enter a valid 6-digit zipcode" required>
                <label for="state">State:</label> <input type="text" id="state" name="state" required>
                <label for="country">Country:</label> <input type="text" id="country" name="country" required>
				<label for="email">Email:</label> <input type="email" id="email" name="email" required>
				<label for="donatorAge">Age:</label> <input type="number" id="donatorAge" name="donatorAge" min = "18" required>
				<label for="donationDate">Select a todays date:</label> <input type="date" id="donationDate" name="donationDate">
                <label for="petName">Pet Name:</label> <input type="text" id="petName" name="petName" required>
                <label for="breed">Breed:</label> <input type="text" id="breed" name="breed" required>
                <label for="species">Species:</label> <input type="text" id="species" name="species" required>
                <label for="petGender">Pet Gender:</label>
                <select id="petGender" name="petGender" required>
                    <option value="">Select Gender</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
                <label for="location">Pet Location:</label> <input type="text" id="location" name="location" required>
                <label for="health">Pet Health:</label>
                <select id="health" name="health" required>
                    <option value="">Select Option</option>
                    <option value="good">Good</option>
                    <option value="bad">Bad</option>
                </select>
                <label for="petAge">pet Age:</label> <input type="number" id="petAge" name="petAge" required>
                <label for="vaccination">Is Pet Vaccinationed:</label>
                <select id="vaccinated" name="vaccinated" required>
                    <option value="">Select Option</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
                <label for="shelter">Select Shelter:</label>
                <select id="shelter" name="shelter" required>
                    <option value="">Select Shelter</option>
                    <option value="1">Loving Paws Ashram</option>
                    <option value="2">Sacred Strays Sanctuary</option>
                    <option value="3">Serene Souls Haven</option>
                    <option value="4">Sankalp Animal Shelter</option>
                    <option value="5">Divine Dogs Retreat</option>
                    <option value="6">Karma Kritters Shelter</option>
                    <option value="7">Blissful Bark Haven</option>
                </select>
                <button type="submit">Submit</button>
            </form>

			<p>
				<a href="index2.jsp">Back to Home</a>
			</p>
		</div>
	</main>
</body>
</html>