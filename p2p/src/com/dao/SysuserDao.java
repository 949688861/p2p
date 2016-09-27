package com.dao;

import org.springframework.stereotype.Repository;

import com.entity.Sysuser;
import com.exception.DataAccessException;


@Repository("sysuserDao")
public interface SysuserDao {
	
	public Sysuser selectByLoginnameAndLoginpassword(Sysuser sysuser) throws DataAccessException;
	//通过登录名修改密码
	public void modifyPassword(Sysuser sysuser) throws DataAccessException;
	
	public Sysuser selectByLoginname(String loginname) throws DataAccessException;
}
