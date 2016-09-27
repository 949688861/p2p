package com.entity;

import java.io.Serializable;

public class ProductType implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer productTypeId;
    private String productTypeName;
	private Integer status;
	
    public Integer getProductTypeId() {
		return productTypeId;
	}
	public void setProductTypeId(Integer productTypeId) {
		this.productTypeId = productTypeId;
	}
	public String getProductTypeName() {
		return productTypeName;
	}
	public void setProductTypeName(String productTypeName) {
		this.productTypeName = productTypeName;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
}