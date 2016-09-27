package com.service;

import java.util.List;

import com.entity.News;
import com.exception.ServiceException;

public interface NewsService {
	public void insert(News news) throws ServiceException;
	
	public void deleteById(int newsId) throws ServiceException;
	
	public void modify(News news) throws ServiceException;
	
	public News selectByNewsId(int newsId) throws ServiceException;
	//
	public List<News> findAll() throws ServiceException;
}
