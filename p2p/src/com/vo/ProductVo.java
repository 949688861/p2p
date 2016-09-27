package com.vo;

import java.io.Serializable;

public class ProductVo implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer productId;
	private String productName;
	private String companyName;
	private String productTypeName;
	private String period;
	private Double primeLendingRateFrom;
	private Double primeLendingRateTo;
	private Long financingAmountFrom;
	private Long financingAmountTo;
	private Integer lendingStatus;
	private Integer typeStatus;
	private String productDescription;
	private String linkMan;
    private String ownedBank;
	private Integer productTypeId;
    private Integer lendingPeriodId;
    private Integer companyId;
    
	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	public Integer getProductTypeId() {
		return productTypeId;
	}
	public void setProductTypeId(Integer productTypeId) {
		this.productTypeId = productTypeId;
	}
	public Integer getLendingPeriodId() {
		return lendingPeriodId;
	}
	public void setLendingPeriodId(Integer lendingPeriodId) {
		this.lendingPeriodId = lendingPeriodId;
	}
	public String getLinkMan() {
		return linkMan;
	}
	public void setLinkMan(String linkMan) {
		this.linkMan = linkMan;
	}
	public String getOwnedBank() {
		return ownedBank;
	}
	public void setOwnedBank(String ownedBank) {
		this.ownedBank = ownedBank;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getProductTypeName() {
		return productTypeName;
	}
	public void setProductTypeName(String productTypeName) {
		this.productTypeName = productTypeName;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public Double getPrimeLendingRateFrom() {
		return primeLendingRateFrom;
	}
	public void setPrimeLendingRateFrom(Double primeLendingRateFrom) {
		this.primeLendingRateFrom = primeLendingRateFrom;
	}
	public Double getPrimeLendingRateTo() {
		return primeLendingRateTo;
	}
	public void setPrimeLendingRateTo(Double primeLendingRateTo) {
		this.primeLendingRateTo = primeLendingRateTo;
	}
	public Long getFinancingAmountFrom() {
		return financingAmountFrom;
	}
	public void setFinancingAmountFrom(Long financingAmountFrom) {
		this.financingAmountFrom = financingAmountFrom;
	}
	public Long getFinancingAmountTo() {
		return financingAmountTo;
	}
	public void setFinancingAmountTo(Long financingAmountTo) {
		this.financingAmountTo = financingAmountTo;
	}
	public Integer getLendingStatus() {
		return lendingStatus;
	}
	public void setLendingStatus(Integer lendingStatus) {
		this.lendingStatus = lendingStatus;
	}
	public Integer getTypeStatus() {
		return typeStatus;
	}
	public void setTypeStatus(Integer typeStatus) {
		this.typeStatus = typeStatus;
	}
}