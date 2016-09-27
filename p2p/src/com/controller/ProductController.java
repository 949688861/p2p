package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Product;
import com.exception.ServiceException;
import com.service.ProductService;
import com.vo.ProductVo;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	//����������Ʒ
	public List<ProductVo> findAllProducts(){
		List<ProductVo> list = new ArrayList<ProductVo>();
		try {
			list = productService.findAll();
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return list;
	}
	
	//չʾ��Ʒ
	@RequestMapping("/findAll")
	public String showProducts(HttpServletRequest req){
		List<ProductVo> list = findAllProducts();
		req.setAttribute("productVos",list);
		return "backend/productManage";
	}
	
	//���
	@RequestMapping("/add")
	public String insert(HttpServletRequest req,Product product){
		try {
			productService.insert(product);
			List<ProductVo> list = findAllProducts();
			req.setAttribute("productVos",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/productManage";
	}
	
	//ȥ�޸�ҳ��
	@RequestMapping("/productModify")
	public String productModify(HttpServletRequest req,int productId){
		try {
			ProductVo productVo = productService.selectByProductId(productId);
			req.setAttribute("productVo",productVo);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/productModify";
	}
	
	//�޸�
	@RequestMapping("/modify")
	public String modify(HttpServletRequest req,Product product){
		try {
			productService.modify(product);
			List<ProductVo> list = findAllProducts();
			req.setAttribute("productVos",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/productManage";
	}
	
	//����
	@RequestMapping("/productDetail")
	public String productDetail(HttpServletRequest req,int productId){
		try {
			ProductVo productVo = productService.selectByProductId(productId);
			req.setAttribute("productVo",productVo);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/productDetail";
	}
	
	//ɾ��
	@RequestMapping("/delete")
	public String delete(HttpServletRequest req,int productId){
		try {
			productService.deleteById(productId);
			List<ProductVo> list = findAllProducts();
			req.setAttribute("productVos",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/productManage";
	}
}