package com.abc.portal.dto;

import javax.persistence.*;

@Entity
public class Jobsp {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int job_Id;
	private String j_title;
	private String j_company;
	private String j_country;
	private String j_city;
	private String j_ldate;
	private Integer j_salary;
	private String j_type;
	private String j_desc;
	
	public Jobsp() {
		
	}

	public int getJob_Id() {
		return job_Id;
	}

	public void setJob_Id(int job_Id) {
		this.job_Id = job_Id;
	}

	public String getJ_title() {
		return j_title;
	}

	public void setJ_title(String j_title) {
		this.j_title = j_title;
	}

	public String getJ_company() {
		return j_company;
	}

	public void setJ_company(String j_company) {
		this.j_company = j_company;
	}

	public String getJ_country() {
		return j_country;
	}

	public void setJ_country(String j_country) {
		this.j_country = j_country;
	}

	public String getJ_city() {
		return j_city;
	}

	public void setJ_city(String j_city) {
		this.j_city = j_city;
	}

	public String getJ_ldate() {
		return j_ldate;
	}

	public void setJ_ldate(String j_ldate) {
		this.j_ldate = j_ldate;
	}

	public Integer getJ_salary() {
		return j_salary;
	}

	public void setJ_salary(Integer j_salary) {
		this.j_salary = j_salary;
	}

	public String getJ_type() {
		return j_type;
	}

	public void setJ_type(String j_type) {
		this.j_type = j_type;
	}

	public String getJ_desc() {
		return j_desc;
	}

	public void setJ_desc(String j_desc) {
		this.j_desc = j_desc;
	}

	@Override
	public String toString() {
		return "Jobs [job_Id=" + job_Id + ", j_title=" + j_title + ", j_company=" + j_company + ", j_country="
				+ j_country + ", j_city=" + j_city + ", j_ldate=" + j_ldate + ", j_salary=" + j_salary + ", j_type="
				+ j_type + ", j_desc=" + j_desc + "]";
	}

	public Jobsp(int job_Id, String j_title, String j_company, String j_country, String j_city, String j_ldate,
			Integer j_salary, String j_type, String j_desc) {
		super();
		this.job_Id = job_Id;
		this.j_title = j_title;
		this.j_company = j_company;
		this.j_country = j_country;
		this.j_city = j_city;
		this.j_ldate = j_ldate;
		this.j_salary = j_salary;
		this.j_type = j_type;
		this.j_desc = j_desc;
	}
	

}
