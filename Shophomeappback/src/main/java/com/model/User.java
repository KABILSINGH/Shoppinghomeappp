package com.model;

import javax.persistence.*;
@Entity
@Table
public class User
{
	@Id
    String uname;
	String Role, Enabled, pword, birthd, adss, email, mnum;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	public String getEnabled() {
		return Enabled;
	}
	public void setEnabled(String enabled) {
		Enabled = enabled;
	}
	public String getPword() {
		return pword;
	}
	public void setPword(String pword) {
		this.pword = pword;
	}
	public String getBirthd() {
		return birthd;
	}
	public void setBirthd(String birthd) {
		this.birthd = birthd;
	}
	public String getAdss() {
		return adss;
	}
	public void setAdss(String adss) {
		this.adss = adss;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMnum() {
		return mnum;
	}
	public void setMnum(String mnum) {
		this.mnum = mnum;
	}
}
