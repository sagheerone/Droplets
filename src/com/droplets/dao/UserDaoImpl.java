package com.droplets.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.droplets.entity.User;
import com.droplets.entity.UserDetails;

@Repository
@Transactional
public class UserDaoImpl implements UserDaoInft {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unused")
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void createUser(User user) {
		// TODO Auto-generated method stub
		 sessionFactory.getCurrentSession().save(user);
	}

	@Override
	public void createUserDetails(UserDetails userDetails) {
		
		
		 sessionFactory.getCurrentSession().save(userDetails);
		
	}

}
