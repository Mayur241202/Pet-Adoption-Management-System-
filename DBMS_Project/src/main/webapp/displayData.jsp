<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.company.model.AdminAction" %>
<%@ page import="com.company.model.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adoptions Page</title>
<link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
<h1>Adoption Records</h1>
    <div class="container">
        
        <table>
            <thead>
                <tr>
                    <th>Adopter First Name</th>
                    <th>Adopter Middle Name</th>
                    <th>Adopter Last Name</th>
                    <th>Adopter Gender</th>
                    <th>Adopter Phone Number</th>
                    <th>Adopter Street Number</th>
                    <th>Adopter Street Name</th>
                    <th>Adopter City</th>
                    <th>Adopter Zipcode</th>
                    <th>Adopter State</th>
                    <th>Adopter Country</th>
                    <th>Adopter Email</th>
                    <th>Adopter Age</th>
                    <th>Adoption Date</th>
                    <th>Pet Name</th>
                    <th>Pet Breed</th>
                    <th>Pet Species</th>
                    <th>Pet Age</th>
                    <th>Pet Gender</th>
                    <th>Pet Location</th>
                    <th>Shelter ID</th>
                </tr>
            </thead>
            <tbody>
                <%
                    AdminAction adminAction = new AdminAction();
                    List<User> adoptionList = adminAction.getAdoptionData();
                    for (User adoption : adoptionList) {
                %>
                <tr>
                    <td><%= adoption.getAdopterFirstName() %></td>
                    <td><%= adoption.getAdopterMiddleName() %></td>
                    <td><%= adoption.getAdopterLastName() %></td>
                    <td><%= adoption.getAdopterGender() %></td>
                    <td><%= adoption.getAdopterPhoneNumber() %></td>
                    <td><%= adoption.getAdopterStreetNumber() %></td>
                    <td><%= adoption.getAdopterStreetName() %></td>
                    <td><%= adoption.getAdopterCity() %></td>
                    <td><%= adoption.getAdopterZipcode() %></td>
                    <td><%= adoption.getAdopterState() %></td>
                    <td><%= adoption.getAdopterCountry() %></td>
                    <td><%= adoption.getAdopterEmail() %></td>
                    <td><%= adoption.getAdopterAge() %></td>
                    <td><%= adoption.getAdoptionDate() %></td>
                    <td><%= adoption.getPetName() %></td>
                    <td><%= adoption.getPetBreed() %></td>
                    <td><%= adoption.getPetSpecies() %></td>
                    <td><%= adoption.getPetAge() %></td>
                    <td><%= adoption.getPetGender() %></td>
                    <td><%= adoption.getPetLocation() %></td>
                    <td><%= adoption.getShelterId() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        
    </div>
    <p>
		<a href="donationData.jsp">Donation Records</a>
		<a href="index2.jsp">Back to Home</a>
	</p>
</body>
</html>