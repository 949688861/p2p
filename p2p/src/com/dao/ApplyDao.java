package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.Apply;
import com.exception.DataAccessException;

@Repository
public interface ApplyDao {
	//չʾ����
	public List<Apply> findAll(int applyProductId) throws DataAccessException;
	
//	public void insertApply(Apply apply);
	
//	public List<ProductApplyVo> selectHistoricalApply(int applyProductId);
}