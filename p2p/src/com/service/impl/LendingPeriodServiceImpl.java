package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.LendingPeriodDao;
import com.entity.LendingPeriod;
import com.exception.DataAccessException;
import com.exception.PeriodExistException;
import com.exception.ServiceException;
import com.service.LendingPeriodService;

@Service("lendingPeriodService")
public class LendingPeriodServiceImpl implements LendingPeriodService {

	@Autowired
	private LendingPeriodDao lendingPeriodDao;
	
	public List<LendingPeriod> findAll() throws ServiceException {
		List<LendingPeriod>list = new ArrayList<LendingPeriod>();
		try {
			list = lendingPeriodDao.findAll();
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return list;
	}

	public void modifyStatus(LendingPeriod lendingperiod)
			throws ServiceException {
		try {
			lendingPeriodDao.modifyStatus(lendingperiod);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public void insert(LendingPeriod lendingPeriod) throws ServiceException, PeriodExistException {
		try {
			String period = lendingPeriodDao.selectByPeriod(lendingPeriod.getPeriod());
			if(period != null){
				throw new PeriodExistException("周期已存在");
			}
			lendingPeriodDao.insert(lendingPeriod);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public void modify(LendingPeriod lendingPeriod) throws ServiceException, PeriodExistException {
		try {
			String period = lendingPeriodDao.selectByPeriod(lendingPeriod.getPeriod());
			if(period != null){
				throw new PeriodExistException("周期已存在");
			}
			lendingPeriodDao.modify(lendingPeriod);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}
}