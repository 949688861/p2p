package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CompanyDao;
import com.entity.Company;
import com.exception.DataAccessException;
import com.exception.ServiceException;
import com.service.CompanyService;
import com.vo.CompanyReportVo;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyDao companyDao;
	
	public void insert(Company company) throws ServiceException {
		try {
			companyDao.insert(company);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}

	}

	public void deleteById(int companyId) throws ServiceException {
		try {
			companyDao.deleteById(companyId);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public void modify(Company company) throws ServiceException {
		try {
			companyDao.modify(company);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public Company selectByCompanyId(int companyId) throws ServiceException {
		Company company = null;
		try {
			company = companyDao.selectByCompanyId(companyId);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return company;
	}

	public List<Company> findAll() throws ServiceException {
		List<Company> list = new ArrayList<Company>();
		try {
			list = companyDao.findAll();
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return list;
	}

	public List<CompanyReportVo> queryAll() throws ServiceException {
		List<CompanyReportVo> list = new ArrayList<CompanyReportVo>();
		try {
			list = companyDao.queryAll();
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return list;
	}

	public List<CompanyReportVo> queryByIdAndYear(CompanyReportVo compamyReportVo) throws ServiceException {
		List<CompanyReportVo> list = new ArrayList<CompanyReportVo>();
		try {
			list = companyDao.queryByIdAndYear(compamyReportVo);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return list;
	}

	public List<CompanyReportVo> queryByYear(String year) throws ServiceException {
		List<CompanyReportVo> list = new ArrayList<CompanyReportVo>();
		try {
			list = companyDao.queryByYear(year);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return list;
	}
}