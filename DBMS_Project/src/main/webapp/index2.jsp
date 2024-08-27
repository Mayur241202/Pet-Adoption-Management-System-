<!-- index.html -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta charset="ISO-8859-1">
    <title>Pet Adoption Management System</title>
    <link rel="stylesheet" href = "index3.css">
    
</head>
<body>
    <header>
        <div class="container">
            <h1>Pet Adoption Management System</h1>
            <nav>
                <ul>
                    <li><a href="index2.jsp">Home</a></li>
					<% 
					    Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");
					    if (isAdmin == null || !isAdmin) { // Show only if user is not admin
					%>
					    <li><a href="Adoption.jsp">Adoption Form</a></li>
					    <li><a href="DonatePet.jsp">Donate Pet</a></li>
					<% 
					    }
					%>
					<% 
					    if (isAdmin != null && isAdmin) {
					%>
					    <li><a href="displayData.jsp">Adoption Records</a></li>
					    <li><a href="donationData.jsp">Donation Records</a></li>
					<% 
					    }
					%>
					<li><a href="index.html">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <div class="container1">
            <div class="pet-card">
                <img src="dog.jpg" alt="Pet 1">
                <h2>Chiku</h2>
                <p><strong>Breed:</strong> Indian Pariah Dog</p>
                <p><strong>Species:</strong> Dog</p>
                <p><strong>Gender:</strong> Male</p>
                <p><strong>Location:</strong> Mumbai</p>
                <p><strong>Health:</strong> Good</p>
                <p><strong>Age:</strong> 3</p>
                <p><strong>Vaccinated:</strong> Yes</p>
                <p><strong>Shelter Name:</strong> Sacred Strays Sanctuary</p>
            </div>
            <div class="pet-card">
                <img src="rabbit.jpeg" alt="Pet 2">
                <h2>Pari</h2>
                <p><strong>Breed:</strong> Mini Rex</p>
                <p><strong>Species:</strong> Rabbit</p>
                <p><strong>Gender:</strong> Female</p>
                <p><strong>Location:</strong> Pune</p>
                <p><strong>Health:</strong> Good</p>
                <p><strong>Age:</strong> 2</p>
                <p><strong>Vaccinated:</strong> No</p>
                <p><strong>Shelter Name:</strong> Divine Dogs Retreat</p>
            </div>
            <div class="pet-card">
                <img src="cat.jpg" alt="Pet 2">
                <h2>Simba</h2>
                <p><strong>Breed:</strong> Persian Cat</p>
                <p><strong>Species:</strong> Cat</p>
                <p><strong>Gender:</strong> Male</p>
                <p><strong>Location:</strong> Nagpur</p>
                <p><strong>Health:</strong> Good</p>
                <p><strong>Age:</strong> 4</p>
                <p><strong>Vaccinated:</strong> No</p>
                <p><strong>Shelter Name:</strong> Sankalp Animal Shelter</p>
            </div>
        </div>
    </main>
    
    <footer>
        <div class="container3">
            <p>&copy; 2024 Pet Adoption Management System</p>
        </div>
    </footer>
</body>
</html>