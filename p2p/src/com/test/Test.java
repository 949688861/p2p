package com.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.Sysuser;
import com.exception.DataAccessException;
import com.exception.SamePasswordException;
import com.exception.ServiceException;
import com.service.SysuserService;



public class Test {

	/**
	 * @param args
	 * @throws SamePasswordException 
	 * @throws DataAccessException 
	 * @throws ServiceException 
	 */
	public static void main(String[] args) throws  SamePasswordException, ServiceException {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		SysuserService dao = (SysuserService) ac.getBean("sysuserService");
		
		Sysuser user = new Sysuser();
		user.setLoginName("admin");
		user.setLoginPassword("admin");
		dao.modifyPassword(user);
		System.out.println("OK");
	}

}
