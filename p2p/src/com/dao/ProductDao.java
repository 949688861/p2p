package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.Product;
import com.exception.DataAccessException;
import com.vo.ProductVo;

@Repository
public interface ProductDao {
	
	public void insert(Product product) throws DataAccessException;
	public void deleteById(int productId) throws DataAccessException;
	public void modify(Product product) throws DataAccessException;
	public ProductVo selectByProductId(int productId) throws DataAccessException;
	public List<ProductVo> findAll() throws DataAccessException;
//	public List<ProductVo> findAllProduct();
//	public  ProductVo findProductDetail(int productId);
//	public List<ProductVo> findProductByCondition(SelectVo selectVo);
	
}