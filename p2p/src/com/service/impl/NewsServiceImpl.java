package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.NewsDao;
import com.entity.News;
import com.exception.DataAccessException;
import com.exception.ServiceException;
import com.service.NewsService;

@Service("newsService")
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDao newsDao;
	
	public void insert(News news) throws ServiceException {
		try {
			newsDao.insert(news);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public void deleteById(int newsId) throws ServiceException {
		try {
			newsDao.deleteById(newsId);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public void modify(News news) throws ServiceException {
		try {
			newsDao.modify(news);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
	}

	public News selectByNewsId(int newsId) throws ServiceException {
		News news  = null;
		try {
			news = newsDao.selectByNewsId(newsId);
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return news;
	}

	public List<News> findAll() throws ServiceException {
		List<News> list = new ArrayList<News>();
		try {
			list = newsDao.findAll();
		} catch (DataAccessException e) {
			throw new ServiceException("服务器异常");
		}
		return list;
	}
}