package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import com.entity.Sysuser;
import com.exception.SamePasswordException;
import com.exception.ServiceException;
import com.exception.UserNotFoundException;
import com.service.SysuserService;

@Controller
@RequestMapping("/sysuser")
public class SysuserController {
	@Autowired
	private SysuserService sysuserService;
	
	@RequestMapping("/login")
	public String login(Sysuser sysuser,HttpServletRequest req){
		try {
			Sysuser user = sysuserService.selectByLoginnameAndLoginpassword(sysuser);
			req.getSession().setAttribute("user", user);
			
			return "redirect:/toMain";
		} catch (ServiceException e) {
			req.setAttribute("msg", e.getMessage());
			return "backend/login";
		} catch (UserNotFoundException e) {
			req.setAttribute("msg", e.getMessage());
			return "backend/login";
		}
	}
	
	@RequestMapping("/modifyPassword")
	public String modifyPassword(Sysuser sysuser,HttpServletRequest req){
		try {
			sysuserService.modifyPassword(sysuser);
			
			return "redirect:/toLogin";
		} catch (ServiceException e) {
			req.setAttribute("msg", e.getMessage());
			return "backend/main";
		} catch (SamePasswordException e) {
			req.setAttribute("msg", e.getMessage());
			return "backend/main";
		}
	}
	
	@RequestMapping("/exit")
	public String exit(SessionStatus status){
		status.setComplete();
		return "redirect:/toLogin";
	}
}
