<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>onlineApplyDetail.html</title>

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is my page">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css"
		type="text/css"></link>
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/css/flat-ui.css"
		type="text/css"></link>
	<link rel="shortcut icon" href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/img/favicon.ico">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/css/style.css">
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/js/flat-ui.js"></script>
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">&nbsp;在线申请详情</h3>
	  </div>
	  <div class="panel-body">
	  		<table class="table table-hover">
	  			<thead>
	  				<tr>
	  					<th>产品名称</th>
	  					<th>申请人</th>
	  					<th>申请数额</th>
	  					<th>申请日期</th>
	  					<th>身份证号</th>
	  				</tr>
	  			</thead>
	  			<tbody>
	  			
		  			<c:forEach items="${applys}" var="apply">
		  				<tr> 	 	 	 	 	 
			  				<td>${apply.applyProductName }</td>
			  				<td>${apply.applyPerson }</td>
			  				<td>${apply.applyNum }万</td>
			  				<td>
			  					<fmt:formatDate value="${apply.applyDate }" pattern="yyyy年MM月dd日"/>
			  				</td>
			  				<td>${apply.applyPersonidCard }</td>
		  			  </tr>
		  			</c:forEach>
		  			
	  			</tbody>
	  		</table>
	  </div>
	</div>
	
</body>
</html>
