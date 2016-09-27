package com.service;

import java.util.List;

import com.entity.Company;
import com.exception.ServiceException;
import com.vo.CompanyReportVo;

public interface CompanyService {
	public void insert(Company company) throws ServiceException;
	
	public void deleteById(int companyId) throws ServiceException;
	
	public void modify(Company company) throws ServiceException;
	
	public Company selectByCompanyId(int companyId) throws ServiceException;

	public List<Company> findAll() throws ServiceException;
	
	//±¨±í
	public List<CompanyReportVo> queryAll() throws ServiceException;
	
	public List<CompanyReportVo> queryByIdAndYear(CompanyReportVo compamyReportVo) throws ServiceException;
	
	public List<CompanyReportVo> queryByYear(String year) throws ServiceException;
}
