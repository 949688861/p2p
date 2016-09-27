package com.entity;

import java.io.Serializable;
import java.util.Date;

public class Apply implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer applyId;
	private String applyPerson;
	private String applyPersonidCard;
	private Long applyNum;
	private Date applyDate;
	private String applyProductName;
	private Long applyProductId;
	
	public Integer getApplyId() {
		return applyId;
	}
	public void setApplyId(Integer applyId) {
		this.applyId = applyId;
	}
	public String getApplyPerson() {
		return applyPerson;
	}
	public void setApplyPerson(String applyPerson) {
		this.applyPerson = applyPerson;
	}
	public String getApplyPersonidCard() {
		return applyPersonidCard;
	}
	public void setApplyPersonidCard(String applyPersonidCard) {
		this.applyPersonidCard = applyPersonidCard;
	}
	public Long getApplyNum() {
		return applyNum;
	}
	public void setApplyNum(Long applyNum) {
		this.applyNum = applyNum;
	}
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	public String getApplyProductName() {
		return applyProductName;
	}
	public void setApplyProductName(String applyProductName) {
		this.applyProductName = applyProductName;
	}
	public Long getApplyProductId() {
		return applyProductId;
	}
	public void setApplyProductId(Long applyProductId) {
		this.applyProductId = applyProductId;
	}
}