package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.Company;
import com.exception.DataAccessException;
import com.vo.CompanyReportVo;

@Repository
public interface CompanyDao {
	
	public void insert(Company company) throws DataAccessException;
	
	public void deleteById(int companyId) throws DataAccessException;
	
	public void modify(Company company) throws DataAccessException;
	
	public Company selectByCompanyId(int companyId) throws DataAccessException;

	public List<Company> findAll() throws DataAccessException;
	//
	//报表
	public List<CompanyReportVo> queryAll() throws DataAccessException;
	
	public List<CompanyReportVo> queryByIdAndYear(CompanyReportVo compamyReportVo) throws DataAccessException;
	
	public List<CompanyReportVo> queryByYear(String year) throws DataAccessException;
}