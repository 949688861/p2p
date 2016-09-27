package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Apply;
import com.exception.ServiceException;
import com.service.ApplyService;
import com.service.ProductService;
import com.vo.ProductVo;

@Controller
@RequestMapping("/apply")
public class ApplyController {
	@Autowired
	private ApplyService applyService;
	@Autowired
	private ProductService productService;
	
	//展示商品
	@RequestMapping("/findAll")
	public String showProducts(HttpServletRequest req){
		List<ProductVo> list = new ArrayList<ProductVo>();
		try {
			list = productService.findAll();
			req.setAttribute("productVos",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/onlineApply";
	}
	
		//展示申请详细
		@RequestMapping("/applyDetail")
		public String applyDetail(HttpServletRequest req,int applyProductId){
			System.out.println(applyProductId+"------------------");
			List<Apply> list = new ArrayList<Apply>();
			try {
				list = applyService.findAll(applyProductId);
				System.out.println(list.size()+"=======");
				req.setAttribute("applys",list);
			} catch (ServiceException e) {
				// TODO Auto-generated catch block
			}
			return "backend/onlineApplyDetail";
		}
}