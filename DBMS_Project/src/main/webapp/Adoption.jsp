<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pet Adoption Management System - Register</title>
<link rel="stylesheet" href="adoption.css">
<style>
    .horizontal-radio {
        display: flex;
        gap: 10px; /* Adds space between the radio buttons */
        align-items: center; /* Aligns radio buttons with the labels */
    }
    .horizontal-radio label {
        margin-right: 5px; /* Adjusts spacing between radio button and label */
    }
</style>
</head>
<body>
	<header>
		<div class="container">
			<h1>Pet Adoption Management System</h1>
			<nav>
				<ul>
					<li><a href="index2.jsp">Home</a></li>
					<li><a href="DonatePet.jsp">Donate Pet</a></li>
					<li><a href="index.html">Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<main>
		<div class="form">
			<h1>Adopt Pet Form</h1>
			<form action="AdoptionServlet" method="post">
				<label for="firstName">First Name:</label> <input type="text" id="firstName" name="firstName" pattern="[A-Za-z]+" title="Please enter a valid first name (only letters)" required>
                <label for="middleName">Middle Name:</label> <input type="text" id="middleName" name="middleName" pattern="[A-Za-z]+" title="Please enter a valid first name (only letters)">
                <label for="lastName">Last Name:</label> <input type="text" id="lastName" name="lastName" pattern="[A-Za-z]+" title="Please enter a valid first name (only letters)" required>
                <label for="adopterGender">Gender:</label>
                <div class="horizontal-radio">
                    <input type="radio" id="male" name="adopterGender" value="male" required>
                    <label for="male">Male</label>
                    
                    <input type="radio" id="female" name="adopterGender" value="female" required>
                    <label for="female">Female</label>
                    
                    <input type="radio" id="other" name="adopterGender" value="other" required>
                    <label for="other">Other</label>
                </div>
				<label for="phoneNumber">Phone Number:</label> <input type="tel" id="phoneNumber" name="phoneNumber" pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number" required>
				<label for="streetNumber">Street Number:</label> <input type="text" id="streetNumber" name="streetNumber" required>
                <label for="streetName">Street Name:</label> <input type="text" id="streetName" name="streetName" required>
                <label for="city">City:</label>
                <select id="city" name="city" required>
                    <option value="">Select City</option>
                    <option value="Pune">Pune</option>
                    <option value="Mumbai">Mumbai</option>
                    <option value="Nagpur">Nagpur</option>
                    <option value="Kolhapur">Kolhapur</option>
                </select>
                
                <label for="zipcode">Zipcode:</label> <input type="text" id="zipcode" name="zipcode" pattern="[0-9]{6}" title="Please enter a valid 6-digit zipcode" required>
                
                
                <label for="state">State:</label>
                <select id="state" name="state" required>
                    <option value="">Select State</option>
                    <option value="Maharashtra">Maharashtra</option>
                    <option value="Bihar">Bihar</option>
                    <option value="Tamilnadu">Tamilnadu</option>
                    <option value="Manipur">Manipur</option>
                </select>
                
                <label for="country">Country:</label>
                <select id="country" name="country" required>
                    <option value="">Select Country</option>
                    <option value="India">India</option>
                    <option value="Canada">Canada</option>
                    <option value="UK">UK</option>
                    <option value="Australia">Australia</option>
                </select><label for="email">Email:</label> <input type="email" id="email" name="email" required>
				<label for="adopterAge">Age:</label> <input type="number" id="adopterAge" name="adopterAge" min = "18" required>
				<label for="adoptionDate">Select a todays date:</label> <input type="date" id="adoptionDate" name="adoptionDate">
				<label for="petName">Pet Name:</label> <input type="text" id="petName" name="petName" required>
                <label for="breed">Breed:</label> <input type="text" id="breed" name="breed" required>
                <label for="species">Species:</label> <input type="text" id="species" name="species" required>
                <label for="petAge">Pet Age:</label> <input type="number" id="petAge" name="petAge" required>
                <label for="petGender">Pet Gender:</label>
                <div class="horizontal-radio">
                    <input type="radio" id="male" name="adopterGender" value="male" required>
                    <label for="male">Male</label>
                    
                    <input type="radio" id="female" name="adopterGender" value="female" required>
                    <label for="female">Female</label>
                    
                    <input type="radio" id="other" name="adopterGender" value="other" required>
                    <label for="other">Other</label>
                </div>
                <label for="location">Pet Location:</label> <input type="text" id="location" name="location" required>
                <label for="shelter">Select Shelter:</label>
                <select id="shelter" name="shelter" required>
                    <option value="">Select Shelter</option>
                    <option value="1">Sankalp Animal Shelter</option>
                    <option value="2">Loving Paws Ashram</option>
                    <option value="3">Sacred Strays Sanctuary</option>
                    <option value="4">Serene Souls Haven</option>
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
	<footer>
        <div class="container3">
            <p>&copy; 2024 Pet Adoption Management System</p>
        </div>
    </footer>
</body>
</html>