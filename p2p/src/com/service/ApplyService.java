package com.service;

import java.util.List;

import com.entity.Apply;
import com.exception.ServiceException;

public interface ApplyService {
	//Õ¹Ê¾ÏêÇé
	public List<Apply> findAll(int applyProductId) throws ServiceException;
}
