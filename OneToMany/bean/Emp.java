package com.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="EMP")
public class Emp {

	 private int eid;
	 private String fname,lname,email;
	 private Dept dept;
	 
	 @Id
	   @GenericGenerator(name="inc", strategy = "increment")
	   @GeneratedValue(generator = "inc")
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	@Column(name="fname")
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	@Column(name="lname")
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	@Column(name="email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Dept getDept() {
		return dept;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="Dept")
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	 
}
