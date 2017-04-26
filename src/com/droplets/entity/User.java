package com.droplets.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "User")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "userId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;

	@Column(name = "username")
	private String username;

	public User() {

	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + "]";
	}

	public User(int userId, String username, String password) {
		super();
		this.userId = userId;
		this.username = username;
	}

}
