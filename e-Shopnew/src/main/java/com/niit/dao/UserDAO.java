package com.niit.dao;

import java.util.List;

import com.niit.model.User;

public interface UserDAO {
	
	public void adduser(User user);
	
	public List<User> getList();
	
	public void deleteuser(String id);
	
    public User getUser(String id);
	
	public void edituser(User user);



}
