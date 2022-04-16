package com.erp.model;

public class Faculty {
	
	private int faculty_id;
	private String faculty_fname;
	private String faculty_mname;
	private String faculty_lname;
	private String faculty_email;
	private String faculty_education;
	private String faculty_password;
    public Faculty()
    {
    	
		
	}
	public Faculty(int faculty_id, String faculty_fname, String faculty_mname, String faculty_lname,
			String faculty_email, String faculty_education, String faculty_password) {
		super();
		this.faculty_id = faculty_id;
		this.faculty_fname = faculty_fname;
		this.faculty_mname = faculty_mname;
		this.faculty_lname = faculty_lname;
		this.faculty_email = faculty_email;
		this.faculty_education = faculty_education;
		this.faculty_password = faculty_password;
	}
	public int getFaculty_id() {
		return faculty_id;
	}
	public void setFaculty_id(int faculty_id) {
		this.faculty_id = faculty_id;
	}
	public String getFaculty_fname() {
		return faculty_fname;
	}
	public void setFaculty_fname(String faculty_fname) {
		this.faculty_fname = faculty_fname;
	}
	public String getFaculty_mname() {
		return faculty_mname;
	}
	public void setFaculty_mname(String faculty_mname) {
		this.faculty_mname = faculty_mname;
	}
	public String getFaculty_lname() {
		return faculty_lname;
	}
	public void setFaculty_lname(String faculty_lname) {
		this.faculty_lname = faculty_lname;
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
	public String getFaculty_password() {
		return faculty_password;
	}
	public void setFaculty_password(String faculty_password) {
		this.faculty_password = faculty_password;
	}
	

}
