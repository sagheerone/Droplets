package com.droplets.dao;

import com.droplets.entity.User;
import com.droplets.entity.UserDetails;


public interface UserDaoInft {

	public void createUser(User user);

	public void createUserDetails(UserDetails userDetails);
}
