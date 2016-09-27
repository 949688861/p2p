package com.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exception.DataAccessException;
import com.exception.SamePasswordException;
import com.exception.ServiceException;
import com.service.ProductService;
import com.vo.ProductVo;



public class ProductTest {

	/**
	 * @param args
	 * @throws SamePasswordException 
	 * @throws DataAccessException 
	 * @throws ServiceException 
	 */
	public static void main(String[] args) throws  SamePasswordException, ServiceException {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		ProductService dao = (ProductService) ac.getBean("productService");
		
		List<ProductVo>list = dao.findAll();
		
		System.out.println(list.get(0).getPrimeLendingRateFrom());
	}

}
