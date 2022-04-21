package com.erp.model;

public class Faculty {
	
	private int faculty_id;
	private String faculty_name;
	private String faculty_email;
	private String faculty_education;
	
	private String gender;
	private String dob;
	private String photo;
	private String address;
	private String skills;
	private String faculty_password;
	private String uname;
    public Faculty()
    {
    	
		
	}
	public Faculty(int faculty_id, String faculty_name, String faculty_email, String faculty_education,
			 String gender, String dob, String photo, String address, String skills,
			String faculty_password,String uname) {
		super();
		this.faculty_id = faculty_id;
		this.faculty_name = faculty_name;
		this.faculty_email = faculty_email;
		this.faculty_education = faculty_education;
	
		this.gender = gender;
		this.dob = dob;
		this.photo = photo;
		this.address = address;
		this.skills = skills;
		this.faculty_password = faculty_password;
		this.uname=uname;
	}
	public int getFaculty_id() {
		return faculty_id;
	}
	public void setFaculty_id(int faculty_id) {
		this.faculty_id = faculty_id;
	}
	public String getFaculty_name() {
		return faculty_name;
	}
	public void setFaculty_name(String faculty_name) {
		this.faculty_name = faculty_name;
	}
	public String getFaculty_email() {
		return faculty_email;
	}
	public void setFaculty_email(String faculty_email) {
		this.faculty_email = faculty_email;
	}
	public String getFaculty_education() {
		return faculty_education;
	}
	public void setFaculty_education(String faculty_education) {
		this.faculty_education = faculty_education;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getFaculty_password() {
		return faculty_password;
	}
	public void setFaculty_password(String faculty_password) {
		this.faculty_password = faculty_password;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
    
}