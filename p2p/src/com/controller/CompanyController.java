package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Company;
import com.exception.ServiceException;
import com.service.CompanyService;
import com.vo.CompanyReportVo;

@Controller
@RequestMapping("/company")
public class CompanyController {
	@Autowired
	private CompanyService companyService;
	
	//��������company
	public List<Company> findAllCompanys(){
		List<Company> list = new ArrayList<Company>();
		try {
			list = companyService.findAll();
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return list;
	}
	
	//չʾcompany
	@RequestMapping("/findAll")
	public String showCompanys(HttpServletRequest req){
		List<Company> list = findAllCompanys();
		req.setAttribute("companys",list);
		return "backend/companyManage";
	}
	
	//���
	@RequestMapping("/add")
	public String insert(HttpServletRequest req,Company company){
		try {
			companyService.insert(company);
			List<Company> list = findAllCompanys();
			req.setAttribute("companys",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		} 
		return "backend/companyManage";
	}
	
	//ȥ�޸�ҳ��
	@RequestMapping("/companyModify")
	public String productModify(HttpServletRequest req,int companyId){
		try {
			Company company = companyService.selectByCompanyId(companyId);
			req.setAttribute("company",company);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/companyModify";
	}
	
	//�޸�
	@RequestMapping("/modify")
	public String modify(HttpServletRequest req,Company company){
		try {
			companyService.modify(company);
			List<Company> list = findAllCompanys();
			req.setAttribute("companys",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		} 
		return "backend/companyManage";
	}
	
	//����
	@RequestMapping("/companyDetail")
	public String companyDetail(HttpServletRequest req,int companyId){
		try {
			Company company = companyService.selectByCompanyId(companyId);
			req.setAttribute("company",company);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/companyDetail";
	}
	
	//ɾ��
	@RequestMapping("/delete")
	public String delete(HttpServletRequest req,int companyId){
		try {
			companyService.deleteById(companyId);
			List<Company> list = findAllCompanys();
			req.setAttribute("companys",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		} 
		return "backend/companyManage";
	}
	
	/**
	 * ����Ϊ������
	 * 
	 */
	@RequestMapping("/findAllCompanyReport")
	public String findAllCompanyReport(HttpServletRequest req){
		try {
			List<CompanyReportVo> list = companyService.queryAll();
			req.setAttribute("companyReportVos",list);
			req.setAttribute("year",null);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		} 
		return "backend/companyReport";
	}
	//����˾��ѯ��������
	@RequestMapping("/companyReportDetail")
	public String findCompanyReportByIdAndYear(HttpServletRequest req,CompanyReportVo companyReportVo){
		try {
			List<CompanyReportVo> list = companyService.queryByIdAndYear(companyReportVo);
			req.setAttribute("companyReportVos",list);
			req.setAttribute("year",companyReportVo.getYear());
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		} 
		return "backend/companyReportDetail";
	}
	//�����ѯ����
	@RequestMapping("/findCompanyReportByYear")
	public String findCompanyReportByYear(HttpServletRequest req,String year){
		try {
			List<CompanyReportVo> list = companyService.queryByYear(year);
			req.setAttribute("companyReportVos",list);
			req.setAttribute("year",year);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		} 
		return "backend/companyReport";
	}
	
	@RequestMapping("/companyReportClear")
	public String clearCondition(HttpServletRequest req){
		try {
			List<CompanyReportVo> list = companyService.queryAll();
			req.setAttribute("companyReportVos",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		} 
		return "backend/companyReport";
	}
}