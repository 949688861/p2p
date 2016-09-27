package com.service;

import java.util.List;

import com.entity.LendingPeriod;
import com.exception.PeriodExistException;
import com.exception.ServiceException;

public interface LendingPeriodService {
	public List<LendingPeriod> findAll() throws ServiceException;
	
    public void modifyStatus(LendingPeriod lendingperiod) throws ServiceException;
    
    public void insert(LendingPeriod lendingPeriod) throws ServiceException,PeriodExistException;
    
    public void modify(LendingPeriod lendingPeriod) throws ServiceException,PeriodExistException;

}