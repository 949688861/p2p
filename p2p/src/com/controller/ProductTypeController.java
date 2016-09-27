package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.ProductType;
import com.exception.ServiceException;
import com.service.ProductTypeService;

@Controller
@RequestMapping("/productType")
public class ProductTypeController {
	@Autowired
	private ProductTypeService productTypeService;
	
	//展示商品
	@RequestMapping("/findAll")
	public String showProducts(HttpServletRequest req){
		try {
			List<ProductType> list = productTypeService.findAll();
			req.setAttribute("productTypes",list);
		} catch (ServiceException e) {
			req.setAttribute("msg",e.getMessage());
			return "error";
		}
		return "backend/productTypeManage";
	}
	
	//添加
	@RequestMapping("/add")
	public String insert(HttpServletRequest req,ProductType productType){
		try {
			productTypeService.insert(productType);
			List<ProductType> list = productTypeService.findAll();
			req.setAttribute("productTypes",list);
		} catch (ServiceException e) {
			req.setAttribute("msg",e.getMessage());
			return "error";
		}
		return "backend/productTypeManage";
	}
	
	//修改
	@RequestMapping("/modify")
	public String modify(HttpServletRequest req,ProductType productType){
		try {
			productTypeService.modify(productType);
			List<ProductType> list = productTypeService.findAll();
			req.setAttribute("productTypes",list);
		} catch (ServiceException e) {
			req.setAttribute("msg",e.getMessage());
			return "error";
		}
		return "backend/productTypeManage";
	}
	
	//修改状态
	@RequestMapping("/modifyStatus")
	public String delete(HttpServletRequest req,ProductType productType){
		try {
			productTypeService.modifyStatus(productType);
			List<ProductType> list = productTypeService.findAll();
			req.setAttribute("productTypes",list);
		} catch (ServiceException e) {
			req.setAttribute("msg",e.getMessage());
			return "error";
		}
		return "backend/productTypeManage";
	}
}