<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>NewsManage.html</title>

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is my page">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css"
		type="text/css"></link>
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/css/flat-ui.css"
		type="text/css"></link>
	<link rel="shortcut icon" href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/img/favicon.ico">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/css/style.css">
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/js/flat-ui.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/bootstrap/js/messager.js"></script>
	<script type="text/javascript">
		function deleteNews(id)
		{
			 $.messager.confirm("确认删除", "确认要删除吗?删除后不能恢复", function() { 
        			window.location.href="${pageContext.request.contextPath}/news/delete?newsId="+id;
      		 });
		}
		
		function desmethod()
		{
			alert(1);
		}
	</script>
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">新闻管理</h3>
	  </div>
	  <div class="panel-body">
	  		<a  href="${pageContext.request.contextPath }/toNewsAdd" class="btn btn-primary btn-default">
	  			添加
	  			<span class="glyphicon glyphicon-plus"></span>
	  		</a>
	  		<table class="table table-hover">
	  			<thead>
	  				<tr>
	  					<th>新闻标题</th>
	  					<th>新闻正文</th>
	  					<th>创建时间</th>
	  					<th>操作</th>
	  				</tr>
	  			</thead>
	  			<tbody>
		  			
		  			<c:forEach items="${newss}" var="news">
			  			<tr> 	 	 	 	 	 
			  				<td>${news.newsTitle}</td>
			  				<td>${fn:substring(news.content,0,12)}</td>
			  				<td><fmt:formatDate value="${news.createAt}" pattern="yyyy年MM月dd日"/></td>
			  				<td>
			  					<a class="btn btn-primary  btn-xs btn-warning" href="${pageContext.request.contextPath }/news/newsModify?newsId=${news.newsId}">
			  						修改
			  						<span class="glyphicon glyphicon-pencil"></span>
			  					</a>
			  					<a class="btn btn-primary btn-xs btn-success" href="${pageContext.request.contextPath }/news/newsDetail?newsId=${news.newsId}">
			  						详情
			  						<span class="glyphicon glyphicon-list-alt"></span>
			  					</a>
			  					<a class="btn btn-primary btn-xs btn-danger" href="javascript:;" onclick="deleteNews('${news.newsId}')">
			  						删除
			  						<span class="glyphicon glyphicon-remove"></span>
			  					</a>
			  				</td>
			  			</tr>
		  			</c:forEach>
	  			</tbody>
	  		</table>
	  </div>
	</div>
	
</body>
</html>
