package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.LendingPeriod;
import com.exception.DataAccessException;

@Repository
public interface LendingPeriodDao {

    public List<LendingPeriod> findAll() throws DataAccessException;
	
    public void modifyStatus(LendingPeriod lendingperiod) throws DataAccessException;
    
    public void insert(LendingPeriod lendingPeriod) throws DataAccessException;
    
    public void modify(LendingPeriod lendingPeriod) throws DataAccessException;
    
    public String selectByPeriod(String period) throws DataAccessException;
}