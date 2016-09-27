package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.LendingPeriod;
import com.exception.PeriodExistException;
import com.exception.ServiceException;
import com.service.LendingPeriodService;

@Controller
@RequestMapping("/lendingPeriod")
public class LendingPeriodController {
	@Autowired
	private LendingPeriodService lendingPeriodService;
	
	//չʾ
	@RequestMapping("/findAll")
	public String showProducts(HttpServletRequest req){
		try {
			List<LendingPeriod> list = lendingPeriodService.findAll();
			req.setAttribute("lendingPeriods",list);
		} catch (ServiceException e) {
			req.setAttribute("msg",e.getMessage());
			return "error";
		}
		return "backend/loanTimeManage";
	}
	
	//���
	@RequestMapping("/add")
	public String insert(HttpServletRequest req,LendingPeriod lendingPeriod){
		try {
			lendingPeriodService.insert(lendingPeriod);
			List<LendingPeriod> list = lendingPeriodService.findAll();
			req.setAttribute("lendingPeriods",list);
		} catch (ServiceException e) {
			req.setAttribute("msg",e.getMessage());
			return "error";
		} catch (PeriodExistException e) {
			req.setAttribute("msg",e.getMessage());
			return "error";
		}
		return "backend/loanTimeManage";
	}
	
	//�޸�
	@RequestMapping("/modify")
	public String modify(HttpServletRequest req,LendingPeriod lendingPeriod){
		try {
			lendingPeriodService.modify(lendingPeriod);
			List<LendingPeriod> list = lendingPeriodService.findAll();
			req.setAttribute("lendingPeriods",list);
		} catch (ServiceException e) {
			req.setAttribute("msg",e.getMessage());
			return "error";
		} catch (PeriodExistException e) {
			req.setAttribute("msg",e.getMessage());
			return "error";
		}
		return "backend/loanTimeManage";
	}
	
	//�޸�״̬
	@RequestMapping("/modifyStatus")
	public String delete(HttpServletRequest req,LendingPeriod lendingPeriod){
		try {
			lendingPeriodService.modifyStatus(lendingPeriod);
			List<LendingPeriod> list = lendingPeriodService.findAll();
			req.setAttribute("lendingPeriods",list);
		} catch (ServiceException e) {
			req.setAttribute("msg",e.getMessage());
			return "error";
		}
		return "backend/loanTimeManage";
	}
}