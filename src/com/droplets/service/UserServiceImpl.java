package com.droplets.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.droplets.dao.UserDaoInft;
import com.droplets.entity.User;
import com.droplets.entity.UserDetails;

@Service
@Repository
@Transactional
public class UserServiceImpl implements UserServiceInft {

	UserDaoInft userDao;

	@Autowired
	public void setUserDao(UserDaoInft userDao) {
		this.userDao = userDao;
	}

	@Override
	public void addUserDao(User user) {

		userDao.createUser(user);

	}

	@Override
	public void addUserDetailsDao(UserDetails userDetails) {
		userDao.createUserDetails(userDetails);

	}

}
