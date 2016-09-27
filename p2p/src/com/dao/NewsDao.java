package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.News;
import com.exception.DataAccessException;

@Repository
public interface NewsDao {
	
	public void insert(News news) throws DataAccessException;
	
	public void deleteById(int newsId) throws DataAccessException;
	
	public void modify(News news) throws DataAccessException;
	
	public News selectByNewsId(int newsId) throws DataAccessException;
	//
	public List<News> findAll() throws DataAccessException;
}