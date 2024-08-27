package com.company.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.company.util.DBUtil;

public class AdminAction {

    public List<User> getAdoptionData() {
        List<User> adoptionList = new ArrayList<>();
        String query = "SELECT * FROM Adoptions";

        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
            	User adoption = new User();
                adoption.setAdopterFirstName(resultSet.getString("AdopterFirstName"));
                adoption.setAdopterMiddleName(resultSet.getString("AdopterMiddleName"));
                adoption.setAdopterLastName(resultSet.getString("AdopterLastName"));
                adoption.setAdopterGender(resultSet.getString("AdopterGender"));
                adoption.setAdopterPhoneNumber(resultSet.getString("AdopterPhoneNumber"));
                adoption.setAdopterStreetNumber(resultSet.getString("AdopterStreetNumber"));
                adoption.setAdopterStreetName(resultSet.getString("AdopterStreetName"));
                adoption.setAdopterCity(resultSet.getString("AdopterCity"));
                adoption.setAdopterZipcode(resultSet.getString("AdopterZipcode"));
                adoption.setAdopterState(resultSet.getString("AdopterState"));
                adoption.setAdopterCountry(resultSet.getString("AdopterCountry"));
                adoption.setAdopterEmail(resultSet.getString("AdopterEmail"));
                adoption.setAdopterAge(resultSet.getInt("AdopterAge"));
                adoption.setAdoptionDate(resultSet.getDate("AdoptionDate"));
                adoption.setPetName(resultSet.getString("PetName"));
                adoption.setPetBreed(resultSet.getString("PetBreed"));
                adoption.setPetSpecies(resultSet.getString("PetSpecies"));
                adoption.setPetAge(resultSet.getInt("PetAge"));
                adoption.setPetGender(resultSet.getString("PetGender"));
                adoption.setPetLocation(resultSet.getString("PetLocation"));
                adoption.setShelterId(resultSet.getInt("ShelterId"));
                adoptionList.add(adoption);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return adoptionList;
    }
    
    public List<User> getDonationData() {
        List<User> donationList = new ArrayList<>();
        String query = "SELECT * FROM pets";

        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                User donation = new User();
                donation.setDonatorFirstName(resultSet.getString("DonatorFirstName"));
                donation.setDonatorMiddleName(resultSet.getString("DonatorMiddleName"));
                donation.setDonatorLastName(resultSet.getString("DonatorLastName"));
                donation.setDonatorGender(resultSet.getString("DonatorGender"));
                donation.setDonatorPhoneNumber(resultSet.getString("DonatorPhoneNumber"));
                donation.setDonatorStreetNumber(resultSet.getString("DonatorStreetNumber"));
                donation.setDonatorStreetName(resultSet.getString("DonatorStreetName"));
                donation.setDonatorCity(resultSet.getString("DonatorCity"));
                donation.setDonatorZipcode(resultSet.getString("DonatorZipcode"));
                donation.setDonatorState(resultSet.getString("DonatorState"));
                donation.setDonatorCountry(resultSet.getString("DonatorCountry"));
                donation.setDonatorEmail(resultSet.getString("DonatorEmail"));
                donation.setDonatorAge(resultSet.getInt("DonatorAge"));
                donation.setDonationDate(resultSet.getDate("DonationDate"));
                donation.setPetName(resultSet.getString("PetName"));
                donation.setPetBreed(resultSet.getString("PetBreed"));
                donation.setPetSpecies(resultSet.getString("PetSpecies"));
                donation.setPetGender(resultSet.getString("PetGender"));
                donation.setPetLocation(resultSet.getString("PetLocation"));
                donation.setPetHealth(resultSet.getString("PetHealth"));
                donation.setPetAge(resultSet.getInt("PetAge"));
                donation.setVaccinated(resultSet.getString("Vaccinated"));
                donation.setShelterId(resultSet.getInt("ShelterId"));
                donationList.add(donation);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return donationList;
    }
}