package com.vo;

import java.io.Serializable;

public class CompanyReportVo implements Serializable {
	
	private static final long serialVersionUID = 1L;
		private Integer companyId;
		private String companyName;
		private Integer productNum;//融资产品总数
		private Long items;//融资目标
		private Long actualNum;//实际融资数		
		private Long commission;//佣金
		private String productName;
		private String year;//申请借贷年份
		
		public String getYear() {
			return year;
		}
		public void setYear(String year) {
			this.year = year;
		}
		public Integer getCompanyId() {
			return companyId;
		}
		public void setCompanyId(Integer companyId) {
			this.companyId = companyId;
		}
		public String getCompanyName() {
			return companyName;
		}
		public void setCompanyName(String companyName) {
			this.companyName = companyName;
		}
		public Integer getProductNum() {
			return productNum;
		}
		public void setProductNum(Integer productNum) {
			this.productNum = productNum;
		}
		public Long getItems() {
			return items;
		}
		public void setItems(Long items) {
			this.items = items;
		}
		public Long getActualNum() {
			return actualNum;
		}
		public void setActualNum(Long actualNum) {
			this.actualNum = actualNum;
		}
		public Long getCommission() {
			return commission;
		}
		public void setCommission(Long commission) {
			this.commission = commission;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
}
