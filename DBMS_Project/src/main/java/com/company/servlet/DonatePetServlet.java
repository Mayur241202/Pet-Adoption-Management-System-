package com.company.servlet;

import com.company.dao.UserDao;
import com.company.dao.UserDaoImpl;
import com.company.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DonatePetServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final UserDao userDao = new UserDaoImpl();
    
    public DonatePetServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String donatorFirstName = request.getParameter("firstName");
        String donatorMiddleName = request.getParameter("middleName");
        String donatorLastName = request.getParameter("lastName");
        String donatorGender = request.getParameter("donatorGender");
        String donatorPhoneNumber = request.getParameter("phoneNumber");
        String donatorStreetNumber = request.getParameter("streetNumber");
        String donatorStreetName = request.getParameter("streetName");
        String donatorCity = request.getParameter("city");
        String donatorZipcode = request.getParameter("zipcode");
        String donatorState = request.getParameter("state");
        String donatorCountry = request.getParameter("country");
        String donatorEmail = request.getParameter("email");
     
        int donatorAge = 0;
        
        String ageParam = request.getParameter("donatorAge");
        
        if (ageParam != null && !ageParam.isEmpty()) {
        	donatorAge = Integer.parseInt(ageParam);
        }
        
        String donationDateString = request.getParameter("donationDate");
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date donationDate = null;
        try {
            donationDate = dateFormat.parse(donationDateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
        String petName = request.getParameter("petName");
        String petBreed = request.getParameter("breed");
        String petSpecies = request.getParameter("species");
        String petGender = request.getParameter("petGender");
        String petLocation = request.getParameter("location");
        String petHealth = request.getParameter("health");
        
        int petAge = 0;
        
        String petAgeParam = request.getParameter("petAge");
        
        if (petAgeParam != null && !petAgeParam.isEmpty()) {
            petAge = Integer.parseInt(petAgeParam);
        }
        
        String vaccinated = request.getParameter("vaccinated");
        String shelterIdStr = request.getParameter("shelter");
        
        int shelterId = 0;
        if (shelterIdStr != null && !shelterIdStr.isEmpty()) {
            shelterId = Integer.parseInt(shelterIdStr);
        }

        User pet = new User();
        pet.setDonatorFirstName(donatorFirstName);
        pet.setDonatorMiddleName(donatorMiddleName);
        pet.setDonatorLastName(donatorLastName);
        pet.setDonatorGender(donatorGender);
        pet.setDonatorPhoneNumber(donatorPhoneNumber);
        pet.setDonatorStreetNumber(donatorStreetNumber);
        pet.setDonatorStreetName(donatorStreetName);
        pet.setDonatorCity(donatorCity);
        pet.setDonatorZipcode(donatorZipcode);
        pet.setDonatorState(donatorState);
        pet.setDonatorCountry(donatorCountry);
        pet.setDonatorEmail(donatorEmail);
        pet.setDonatorAge(donatorAge);
        pet.setDonationDate(donationDate);
        pet.setPetName(petName);
        pet.setPetBreed(petBreed);
        pet.setPetSpecies(petSpecies);
        pet.setPetGender(petGender);
        pet.setPetLocation(petLocation);
        pet.setPetHealth(petHealth);
        pet.setPetAge(petAge);
        pet.setVaccinated(vaccinated);
        pet.setShelterId(shelterId);
        

        if (userDao.addPet(pet)) {
            response.sendRedirect("ThankYou.jsp?donation=success");
        } else {
            response.sendRedirect("DonatePet.jsp?error=1");
        }
    }
}
