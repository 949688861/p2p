package com.service;

import java.util.List;

import com.entity.Product;
import com.exception.ServiceException;
import com.vo.ProductVo;

public interface ProductService {
	public void insert(Product product) throws ServiceException;
	public void deleteById(int productId) throws ServiceException;
	public void modify(Product product) throws ServiceException;
	public ProductVo selectByProductId(int productId) throws ServiceException;
	public List<ProductVo> findAll() throws ServiceException;
}
