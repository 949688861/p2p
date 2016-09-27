package com.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.LendingPeriod;
import com.exception.DataAccessException;
import com.exception.PeriodExistException;
import com.exception.SamePasswordException;
import com.exception.ServiceException;
import com.service.LendingPeriodService;



public class PeriodTest {

	/**
	 * @param args
	 * @throws SamePasswordException 
	 * @throws DataAccessException 
	 * @throws ServiceException 
	 * @throws PeriodExistException 
	 */
	public static void main(String[] args) throws  SamePasswordException, ServiceException, PeriodExistException {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		LendingPeriodService dao = (LendingPeriodService) ac.getBean("lendingPeriodService");
		
		List<LendingPeriod> list = dao.findAll();
		
		System.out.println(list.size()+"=========");
		
		LendingPeriod l = new LendingPeriod();
		l.setPeriod("1¸öÔÂ");
		l.setLendingPeriodId(2);
		dao.modify(l);
		System.out.println("ok");
	}

}
