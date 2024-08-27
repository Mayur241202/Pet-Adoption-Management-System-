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

public class AdoptionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final UserDao userDao = new UserDaoImpl();
    
    public AdoptionServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String adopterFirstName = request.getParameter("firstName");
        String adopterMiddleName = request.getParameter("middleName");
        String adopterLastName = request.getParameter("lastName");
        String adopterGender = request.getParameter("adopterGender");
        String adopterPhoneNumber = request.getParameter("phoneNumber");
        String adopterStreetNumber = request.getParameter("streetNumber");
        String adopterStreetName = request.getParameter("streetName");
        String adopterCity = request.getParameter("city");
        String adopterZipcode = request.getParameter("zipcode");
        String adopterState = request.getParameter("state");
        String adopterCountry = request.getParameter("country");
        String adopterEmail = request.getParameter("email");
        
        int adopterAge = 0;
        
        String adopterAgeStr = request.getParameter("adopterAge");

        if (adopterAgeStr != null && !adopterAgeStr.isEmpty()) {
            adopterAge = Integer.parseInt(adopterAgeStr);
        }
        
        String adoptionDateString = request.getParameter("adoptionDate");
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date adoptionDate = null;
        try {
            adoptionDate = dateFormat.parse(adoptionDateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
        String petName = request.getParameter("petName");
        String petBreed = request.getParameter("breed");
        String petSpecies = request.getParameter("species");
        
        int petAge = 0;
        
        String petAgeStr = request.getParameter("petAge");

        if (petAgeStr != null && !petAgeStr.isEmpty()) {
            petAge = Integer.parseInt(petAgeStr);
        }
        
        String petGender = request.getParameter("petGender");
        String petLocation = request.getParameter("location");
        String shelterIdStr = request.getParameter("shelter");
        
        int shelterId = 0;
        if (shelterIdStr != null && !shelterIdStr.isEmpty()) {
            shelterId = Integer.parseInt(shelterIdStr);
        }
        
        
        User adoption = new User();
        adoption.setAdopterFirstName(adopterFirstName);
        adoption.setAdopterMiddleName(adopterMiddleName);
        adoption.setAdopterLastName(adopterLastName);
        adoption.setAdopterGender(adopterGender);
        adoption.setAdopterPhoneNumber(adopterPhoneNumber);
        adoption.setAdopterStreetNumber(adopterStreetNumber);
        adoption.setAdopterStreetName(adopterStreetName);
        adoption.setAdopterCity(adopterCity);
        adoption.setAdopterZipcode(adopterZipcode);
        adoption.setAdopterState(adopterState);
        adoption.setAdopterCountry(adopterCountry);
        adoption.setAdopterEmail(adopterEmail);
        adoption.setAdopterAge(adopterAge);
        adoption.setAdoptionDate(adoptionDate);
        adoption.setPetName(petName);
        adoption.setPetBreed(petBreed);
        adoption.setPetSpecies(petSpecies);
        adoption.setPetAge(petAge);
        adoption.setPetGender(petGender);
        adoption.setPetLocation(petLocation);
        adoption.setShelterId(shelterId);

        if (userDao.addAdoption(adoption)) {
            if (userDao.removePet(adoption)) {
                response.sendRedirect("index2.jsp?adoption=success");
            } else {
                response.sendRedirect("congratulationForAdoption.jsp?error=1");
            }
        } else {
            response.sendRedirect("Adoption.jsp?error=1");
        }
    }
}