package com.erp.model;

public class Admin {

	private String admin_name;
	private String admin_username;
	private String admin_email;
	private String admin_phone;
	private String admin_password;
	
	public Admin() {
		
	}
	public Admin(String admin_name, String admin_username, String admin_email, String admin_phone,
			String admin_password) {
		super();
		this.admin_name = admin_name;
		this.admin_username = admin_username;
		this.admin_email = admin_email;
		this.admin_phone = admin_phone;
		this.admin_password = admin_password;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_username() {
		return admin_username;
	}
	public void setAdmin_username(String admin_username) {
		this.admin_username = admin_username;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	public String getAdmin_phone() {
		return admin_phone;
	}
	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	
	
}
