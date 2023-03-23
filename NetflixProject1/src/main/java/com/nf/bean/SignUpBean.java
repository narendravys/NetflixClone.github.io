package com.nf.bean;

import java.io.Serializable;

@SuppressWarnings("serial")
public class SignUpBean implements Serializable {
	private String name;
    private String mail;
	private String pwd;
	private long ph;

	public SignUpBean() {
	}

	public String getMail() {
		return mail;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public long getPh() {
		return ph;
	}

	public void setPh(long ph) {
		this.ph = ph;
	}

}
