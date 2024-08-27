package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.company.model.User;
import com.company.util.DBUtil;

public class UserDaoImpl implements UserDao {
	@Override
	public boolean removePet(User adoption) {
	    String query = "DELETE FROM pets WHERE PetName = ? AND PetBreed = ? AND PetSpecies = ? AND PetAge = ? AND PetGender = ? AND PetLocation = ?";
	    try (Connection connection = DBUtil.getConnection();
	            PreparedStatement preparedStatement = connection.prepareStatement(query)) {
	        preparedStatement.setString(1, adoption.getPetName());
	        preparedStatement.setString(2, adoption.getPetBreed());
	        preparedStatement.setString(3, adoption.getPetSpecies());
	        preparedStatement.setInt(4, adoption.getPetAge());
	        preparedStatement.setString(5, adoption.getPetGender());
	        preparedStatement.setString(6, adoption.getPetLocation());
	        
	        int rowsAffected = preparedStatement.executeUpdate();
	        return rowsAffected > 0;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
	}


	@Override
	public boolean addAdoption(User adoption) {
		String query = "INSERT INTO Adoptions (AdopterFirstName, AdopterMiddleName, AdopterLastName, AdopterGender, AdopterPhoneNumber, AdopterStreetNumber, AdopterStreetName, AdopterCity, AdopterZipcode, AdopterState, AdopterCountry, AdopterEmail, AdopterAge, AdoptionDate, PetName, PetBreed, PetSpecies, PetAge, PetGender, PetLocation, ShelterId) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try (Connection connection = DBUtil.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(query)) {

			preparedStatement.setString(1, adoption.getAdopterFirstName());
	        preparedStatement.setString(2, adoption.getAdopterMiddleName());
	        preparedStatement.setString(3, adoption.getAdopterLastName());
	        preparedStatement.setString(4, adoption.getAdopterGender());
	        preparedStatement.setString(5, adoption.getAdopterPhoneNumber());
	        preparedStatement.setString(6, adoption.getAdopterStreetNumber());
	        preparedStatement.setString(7, adoption.getAdopterStreetName());
	        preparedStatement.setString(8, adoption.getAdopterCity());
	        preparedStatement.setString(9, adoption.getAdopterZipcode());
	        preparedStatement.setString(10, adoption.getAdopterState());
	        preparedStatement.setString(11, adoption.getAdopterCountry());
	        preparedStatement.setString(12, adoption.getAdopterEmail());
	        preparedStatement.setInt(13, adoption.getAdopterAge());
	        preparedStatement.setDate(14, new java.sql.Date(adoption.getAdoptionDate().getTime()));
	        preparedStatement.setString(15, adoption.getPetName());
	        preparedStatement.setString(16, adoption.getPetBreed());
	        preparedStatement.setString(17, adoption.getPetSpecies());
	        preparedStatement.setInt(18, adoption.getPetAge());
	        preparedStatement.setString(19, adoption.getPetGender());
	        preparedStatement.setString(20, adoption.getPetLocation());
	        preparedStatement.setInt(21, adoption.getShelterId());

			int rowsAffected = preparedStatement.executeUpdate();

			return rowsAffected > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addPet(User pet) {
		String query = "INSERT INTO pets (DonatorFirstName, DonatorMiddleName, DonatorLastName, DonatorGender, DonatorPhoneNumber, DonatorStreetNumber, DonatorStreetName, DonatorCity, DonatorZipcode, DonatorState, DonatorCountry, DonatorEmail, DonatorAge, DonationDate, PetName, PetBreed, PetSpecies, PetGender, PetLocation, PetHealth, PetAge, Vaccinated, ShelterId) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try (Connection connection = DBUtil.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(query)) {

			preparedStatement.setString(1, pet.getDonatorFirstName());
	        preparedStatement.setString(2, pet.getDonatorMiddleName());
	        preparedStatement.setString(3, pet.getDonatorLastName());
	        preparedStatement.setString(4, pet.getDonatorGender());
	        preparedStatement.setString(5, pet.getDonatorPhoneNumber());
	        preparedStatement.setString(6, pet.getDonatorStreetNumber());
	        preparedStatement.setString(7, pet.getDonatorStreetName());
	        preparedStatement.setString(8, pet.getDonatorCity());
	        preparedStatement.setString(9, pet.getDonatorZipcode());
	        preparedStatement.setString(10, pet.getDonatorState());
	        preparedStatement.setString(11, pet.getDonatorCountry());
	        preparedStatement.setString(12, pet.getDonatorEmail());
	        preparedStatement.setInt(13, pet.getDonatorAge());
	        preparedStatement.setDate(14, new java.sql.Date(pet.getDonationDate().getTime()));
	        preparedStatement.setString(15, pet.getPetName());
	        preparedStatement.setString(16, pet.getPetBreed());
	        preparedStatement.setString(17, pet.getPetSpecies());
	        preparedStatement.setString(18, pet.getPetGender());
	        preparedStatement.setString(19, pet.getPetLocation());
	        preparedStatement.setString(20, pet.getPetHealth());
	        preparedStatement.setInt(21, pet.getPetAge());
	        preparedStatement.setString(22, pet.getVaccinated());
	        preparedStatement.setInt(23, pet.getShelterId());

			int rowsAffected = preparedStatement.executeUpdate();

			return rowsAffected > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addUser(User user) {
		String query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

		try (Connection connection = DBUtil.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(query)) {

			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPassword());

			int rowsAffected = preparedStatement.executeUpdate();

			return rowsAffected > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean isValidUser(String username, String password) {
		String query = "SELECT * FROM users WHERE username = ? AND password = ?";
		try (Connection connection = DBUtil.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(query)) {

			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);

			ResultSet resultSet = preparedStatement.executeQuery();

			return resultSet.next();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}