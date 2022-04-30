package com.erp.model;

public class Department {

	private String dept_code;
	private String dept_name;
	private String intake;
	private String semester;
	private String register_date;
	public Department(String dept_code, String dept_name, String intake, String semester, String register_date) {
		super();
		this.dept_code = dept_code;
		this.dept_name = dept_name;
		this.intake = intake;
		this.semester = semester;
		this.register_date = register_date;
	}
	public String getDept_code() {
		return dept_code;
	}
	public void setDept_code(String dept_code) {
		this.dept_code = dept_code;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getIntake() {
		return intake;
	}
	public void setIntake(String intake) {
		this.intake = intake;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public String getRegister_date() {
		return register_date;
	}
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}
	
}
