package com.example.demo.Entitydemo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="user")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name="FirstName")
	private String FirstName;
	
	@Column(name="LastName")
	private String LastName;
	
	
	@Column(name="Email")
	private String Email;
	
	@Column(name="Password")
	private String Password;
	
	@Column(name="Gender")
	private String Gender;
	
	private String stateid;
	
	private String citiid;
	
	private String role="user";
	
	private boolean approved;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}
	
	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public boolean isApproved() {
		return approved;
	}

	public void setApproved(boolean approved) {
		this.approved = approved;
	}

	public String getStateid() {
		return stateid;
	}

	public void setStateid(String stateid) {
		this.stateid = stateid;
	}

	public String getCitiid() {
		return citiid;
	}
	
	public void setCitiid(String citiid) {
		this.citiid = citiid;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", FirstName=" + FirstName + ", LastName=" + LastName + ", Email=" + Email + ", Gender=" + Gender + ", stateid=" + stateid + ", citiid=" + citiid + ", role="
				+ role + ", Password=" + Password + ", approved=" + approved + "]";
	}

	

	
	

}
