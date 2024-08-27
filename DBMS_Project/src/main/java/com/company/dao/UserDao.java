package com.company.dao;

import java.util.List;

import com.company.model.User;

public interface UserDao {

	boolean addUser(User user);
	boolean isValidUser(String username, String password);
	boolean addAdoption(User adoption);
	boolean addPet(User pet);
	public boolean removePet(User adoption);
}