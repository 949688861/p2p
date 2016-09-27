package com.service;


import com.entity.Sysuser;
import com.exception.SamePasswordException;
import com.exception.ServiceException;
import com.exception.UserNotFoundException;

public interface SysuserService {
	
	public Sysuser selectByLoginnameAndLoginpassword(Sysuser sysuser) throws ServiceException,UserNotFoundException;
	//通过登录名修改密码
	public void modifyPassword(Sysuser sysuser) throws ServiceException,SamePasswordException;
}
