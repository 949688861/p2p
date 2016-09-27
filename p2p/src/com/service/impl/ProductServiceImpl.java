package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDao;
import com.entity.Product;
import com.exception.DataAccessException;
import com.exception.ServiceException;
import com.service.ProductService;
import com.vo.ProductVo;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	public void deleteById(int productId) throws ServiceException {
		try {
			productDao.deleteById(productId);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public List<ProductVo> findAll() throws ServiceException {
		List<ProductVo> list = new ArrayList<ProductVo>();
		try {
			list = productDao.findAll();
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return list;
	}

	public void insert(Product product) throws ServiceException {
		try {
			productDao.insert(product);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public void modify(Product product) throws ServiceException {
		try {
			productDao.modify(product);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public ProductVo selectByProductId(int productId) throws ServiceException {
		ProductVo pv = null;
		try {
			pv = productDao.selectByProductId(productId);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return pv;
	}
}