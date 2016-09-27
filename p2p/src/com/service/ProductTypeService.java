package com.service;

import java.util.List;

import com.entity.ProductType;
import com.exception.ServiceException;

public interface ProductTypeService {
	public void insert(ProductType productType) throws ServiceException;

	public void modify(ProductType productType) throws ServiceException;
	
	public void modifyStatus(ProductType productType) throws ServiceException;
	
	public List<ProductType> findAll() throws ServiceException;

	public ProductType findById(int productId) throws ServiceException;
}