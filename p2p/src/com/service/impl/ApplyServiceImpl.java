package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ApplyDao;
import com.entity.Apply;
import com.exception.DataAccessException;
import com.exception.ServiceException;
import com.service.ApplyService;

@Service("applyService")
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	private ApplyDao applyDao;
	
	public List<Apply> findAll(int applyProductId) throws ServiceException {
		List<Apply>list = new ArrayList<Apply>();
		try {
			list = applyDao.findAll(applyProductId);
		} catch (DataAccessException e) {
			throw new ServiceException("·þÎñÆ÷Òì³£");
		}
		return list;
	}
}