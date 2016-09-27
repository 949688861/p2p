package com.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exception.DataAccessException;
import com.exception.PeriodExistException;
import com.exception.SamePasswordException;
import com.exception.ServiceException;
import com.service.CompanyService;
import com.vo.CompanyReportVo;



public class CompanyTest {

	/**
	 * @param args
	 * @throws SamePasswordException 
	 * @throws DataAccessException 
	 * @throws ServiceException 
	 * @throws PeriodExistException 
	 */
	public static void main(String[] args) throws  SamePasswordException, ServiceException, PeriodExistException, DataAccessException {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		CompanyService dao = (CompanyService) ac.getBean("companyService");
		
		List<CompanyReportVo>l = dao.queryByYear("2015");
		
		
		System.out.println(l.size());
	}

}
