package com.nf.bean;

import java.io.Serializable;
import java.sql.Date;

@SuppressWarnings("serial")
public class PaymentDetailsBean implements Serializable {

	private String bankName, mail;

	private long creditCardNo;
	private int cvv, plan;

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public long getCreditCardNo() {
		return creditCardNo;
	}

	public void setCreditCardNo(long creditCardNo) {
		this.creditCardNo = creditCardNo;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	public int getPlan() {
		return plan;
	}

	public void setPlan(int plan) {
		this.plan = plan;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public Date getPurchase_date() {
		return purchase_date;
	}

	public void setPurchase_date(Date purchase_date) {
		this.purchase_date = purchase_date;
	}

	private Date purchase_date;

}
