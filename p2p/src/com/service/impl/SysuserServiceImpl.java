package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SysuserDao;
import com.entity.Sysuser;
import com.exception.DataAccessException;
import com.exception.SamePasswordException;
import com.exception.ServiceException;
import com.exception.UserNotFoundException;
import com.service.SysuserService;

@Service("sysuserService")
public class SysuserServiceImpl implements SysuserService{
	@Autowired
	private SysuserDao sysuserDao;
	
	
	public Sysuser selectByLoginnameAndLoginpassword(Sysuser sysuser) throws ServiceException, UserNotFoundException {
		
		Sysuser user = null;
		try {
			user = sysuserDao.selectByLoginnameAndLoginpassword(sysuser);
			if(user == null){
				throw new UserNotFoundException("�û������������");
			}
		} catch (DataAccessException e) {
			throw new ServiceException("�������쳣");
		}
		return user;
	}

	public void modifyPassword(Sysuser sysuser) throws ServiceException, SamePasswordException {
		Sysuser user = null;
		try {
			user = sysuserDao.selectByLoginname(sysuser.getLoginName());
			if(user.getLoginPassword().equals(sysuser.getLoginPassword())){
				throw new SamePasswordException("�������������ԭ������ͬ");
			}
			sysuserDao.modifyPassword(sysuser);
		} catch (DataAccessException e) {
			throw new ServiceException("�������쳣");
		}
	}
}