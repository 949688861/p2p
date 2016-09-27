package com.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.News;
import com.exception.DataAccessException;
import com.exception.SamePasswordException;
import com.exception.ServiceException;
import com.service.NewsService;



public class NewsTest {

	/**
	 * @param args
	 * @throws SamePasswordException 
	 * @throws DataAccessException 
	 * @throws ServiceException 
	 */
	public static void main(String[] args) throws  SamePasswordException, ServiceException {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		NewsService dao = (NewsService) ac.getBean("newsService");
		
		News news = new News("123123", "13123");
		news.setNewsId(6);
		news.setImage("1.png");
		dao.modify(news);
		
		System.out.println("ok");
	}

}
