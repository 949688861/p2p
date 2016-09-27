package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.ProductType;
import com.exception.DataAccessException;

@Repository
public interface ProductTypeDao {
	
	public void insert(ProductType productType) throws DataAccessException;

	public void modify(ProductType productType) throws DataAccessException;
	
	public void modifyStatus(ProductType productType) throws DataAccessException;
	
	public List<ProductType> findAll() throws DataAccessException;

	public ProductType findById(int productId) throws DataAccessException;
}