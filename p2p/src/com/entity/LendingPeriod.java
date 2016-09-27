package com.entity;

import java.io.Serializable;

public class LendingPeriod implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer lendingPeriodId;

	private String period;

	private Integer status;

	public Integer getLendingPeriodId() {
		return lendingPeriodId;
	}

	public void setLendingPeriodId(Integer lendingPeriodId) {
		this.lendingPeriodId = lendingPeriodId;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}