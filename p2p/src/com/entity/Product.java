package com.entity;

import java.util.Date;

public class Product {
    
    private Integer productId;
    private String productName;
    private Double primeLendingRateFrom;
    private Double primeLendingRateTo;
    private Integer companyId;
    private Long financingAmountFrom;
    private Long financingAmountTo;
    private Integer producttypeId;
    private Integer lendingPeriodId;
    private String linkMan;
    private String ownedBank;
    private String productDescription;
    private Date createTime;    
    private String image;  
    
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

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
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

	public Integer getProducttypeId() {
		return producttypeId;
	}

	public void setProducttypeId(Integer producttypeId) {
		this.producttypeId = producttypeId;
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

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getImage() {
        return image;
    }
   
    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }
}