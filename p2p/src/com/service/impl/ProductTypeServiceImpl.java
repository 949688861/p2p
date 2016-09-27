package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductTypeDao;
import com.entity.ProductType;
import com.exception.DataAccessException;
import com.exception.ServiceException;
import com.service.ProductTypeService;

@Service("productTypeService")
public class ProductTypeServiceImpl implements ProductTypeService {

	@Autowired
	private ProductTypeDao productTypeDao;
	
	public void insert(ProductType productType) throws ServiceException {
		try {
			productTypeDao.insert(productType);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public void modify(ProductType productType) throws ServiceException {
		try {
			productTypeDao.modify(productType);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public void modifyStatus(ProductType productType) throws ServiceException {
		try {
			productTypeDao.modifyStatus(productType);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public List<ProductType> findAll() throws ServiceException {
		List<ProductType>list = new ArrayList<ProductType>();
		try {
			list = productTypeDao.findAll();
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return list;
	}

	public ProductType findById(int productId) throws ServiceException {
		ProductType productType = null;
		try {
			productTypeDao.findById(productId);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return productType;
	}
}