package com.droplets.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "UserDetails")
public class UserDetails implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "userDetailId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userDetailId;

	@Column(name = "dateCreated")
	private Date dateCreated;

	@Column(name = "userId")
	private int userId;

	@Column(name = "packageName")
	private String packageName;

	@Column(name = "version")
	private String version;

	@Column(name = "region")
	private String region;

	public UserDetails() {
	}

	public int getUserDetailId() {
		return userDetailId;
	}

	public void setUserDetailId(int userDetailId) {
		this.userDetailId = userDetailId;
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "UserDetails [userDetailId=" + userDetailId + ", dateCreated="
				+ dateCreated + ", userId=" + userId + ", packageName="
				+ packageName + ", version=" + version + ", region=" + region
				+ "]";
	}

	public UserDetails(int userDetailId, Date dateCreated, int userId,
			String packageName, String version, String region) {
		super();
		this.userDetailId = userDetailId;
		this.dateCreated = dateCreated;
		this.userId = userId;
		this.packageName = packageName;
		this.version = version;
		this.region = region;
	}

}
