<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.company.model.AdminAction" %>
<%@ page import="com.company.model.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donation Records</title>
<link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
<h1>Donation Records</h1>
    <div class="container">
        <table>
            <thead>
                <tr>
                    <th>Donator First Name</th>
                    <th>Donator Middle Name</th>
                    <th>Donator Last Name</th>
                    <th>Donator Gender</th>
                    <th>Donator Phone Number</th>
                    <th>Donator Street Number</th>
                    <th>Donator Street Name</th>
                    <th>Donator City</th>
                    <th>Donator Zipcode</th>
                    <th>Donator State</th>
                    <th>Donator Country</th>
                    <th>Donator Email</th>
                    <th>Donator Age</th>
                    <th>Donation Date</th>
                    <th>Pet Name</th>
                    <th>Pet Breed</th>
                    <th>Pet Species</th>
                    <th>Pet Age</th>
                    <th>Pet Gender</th>
                    <th>Pet Location</th>
                    <th>Pet Health</th>
                    <th>Vaccinated</th>
                    <th>Shelter ID</th>
                </tr>
            </thead>
            <tbody>
                <%
                    AdminAction adminAction = new AdminAction();
                    List<User> donationList = adminAction.getDonationData();
                    for (User donation : donationList) {
                %>
                <tr>
                    <td><%= donation.getDonatorFirstName() %></td>
                    <td><%= donation.getDonatorMiddleName() %></td>
                    <td><%= donation.getDonatorLastName() %></td>
                    <td><%= donation.getDonatorGender() %></td>
                    <td><%= donation.getDonatorPhoneNumber() %></td>
                    <td><%= donation.getDonatorStreetNumber() %></td>
                    <td><%= donation.getDonatorStreetName() %></td>
                    <td><%= donation.getDonatorCity() %></td>
                    <td><%= donation.getDonatorZipcode() %></td>
                    <td><%= donation.getDonatorState() %></td>
                    <td><%= donation.getDonatorCountry() %></td>
                    <td><%= donation.getDonatorEmail() %></td>
                    <td><%= donation.getDonatorAge() %></td>
                    <td><%= donation.getDonationDate() %></td>
                    <td><%= donation.getPetName() %></td>
                    <td><%= donation.getPetBreed() %></td>
                    <td><%= donation.getPetSpecies() %></td>
                    <td><%= donation.getPetAge() %></td>
                    <td><%= donation.getPetGender() %></td>
                    <td><%= donation.getPetLocation() %></td>
                    <td><%= donation.getPetHealth() %></td>
                    <td><%= donation.getVaccinated() %></td>
                    <td><%= donation.getShelterId() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
    <p>
        <a href="displayData.jsp">Adoption Records</a>
        <a href="index2.jsp">Back to Home</a>
    </p>
</body>
</html>