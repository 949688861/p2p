package com.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.entity.News;
import com.exception.ServiceException;
import com.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {
	@Autowired
	private NewsService newsService;
	
	//��������news
	public List<News> findAllNewss(){
		List<News> list = new ArrayList<News>();
		try {
			list = newsService.findAll();
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return list;
	}
	
	//չʾnews
	@RequestMapping("/findAll")
	public String showNewss(HttpServletRequest req){
		List<News> list = findAllNewss();
		req.setAttribute("newss",list);
		return "backend/newsManage";
	}
	
	//���
	@RequestMapping("/add")
	public String insert(HttpServletRequest req,String newsTitle,String content,@RequestParam("image") CommonsMultipartFile file ){
		try {
			//�ļ�����·��
			String path = req.getSession().getServletContext().getRealPath("/images");
			//�ļ���
			String fileName =file.getOriginalFilename().trim();
			
			if(fileName!=null&&!fileName.equals("")){
				File file1 = new File(path, fileName);
				//�ж��Ƿ��ϴ���ͼƬ
				if(file1 != null){
					//�ϴ�
					file.transferTo(file1);
				}
			}
			
			News news = new News(newsTitle, content);
			news.setCreateAt(new Date());
			news.setImage(fileName);
			
			newsService.insert(news);
			List<News> list = findAllNewss();
			req.setAttribute("newss",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		} catch (Exception e) {
			// TODO Auto-generated catch block  �ϴ�ʧ��
		}		
		return "backend/newsManage";
	}
	
	//ȥ�޸�ҳ��
	@RequestMapping("/newsModify")
	public String productModify(HttpServletRequest req,int newsId){
		try {
			News news = newsService.selectByNewsId(newsId);
			req.setAttribute("news",news);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/newsModify";
	}
	
	//�޸�
	@RequestMapping("/modify")
	public String modify(HttpServletRequest req,String newsId,String newsTitle,String content,@RequestParam("image") CommonsMultipartFile file){
		try {
			//�ļ�����·��
			String path = req.getSession().getServletContext().getRealPath("/images");
			//�ļ���
			String fileName =file.getOriginalFilename().trim();
			
			if(fileName!=null&&!fileName.equals("")){
				File file1 = new File(path, fileName);
				//�ж��Ƿ��ϴ���ͼƬ
				if(file1 != null){
					//�ϴ�
					file.transferTo(file1);
				}
			}
			
			News news = new News(newsTitle, content);
			news.setImage(fileName);
			news.setNewsId(Integer.valueOf(newsId));
			
			newsService.modify(news);
			List<News> list = findAllNewss();
			req.setAttribute("newss",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		} catch (Exception e) {
			// TODO Auto-generated catch block  �ϴ�ʧ��
		} 
		return "backend/newsManage";
	}
	
	//����
	@RequestMapping("/newsDetail")
	public String productDetail(HttpServletRequest req,int newsId){
		try {
			News news = newsService.selectByNewsId(newsId);
			req.setAttribute("news",news);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/newsDetail";
	}
	
	//ɾ��
	@RequestMapping("/delete")
	public String delete(HttpServletRequest req,int newsId){
		try {
			newsService.deleteById(newsId);
			List<News> list = findAllNewss();
			req.setAttribute("newss",list);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
		}
		return "backend/newsManage";
	}
}