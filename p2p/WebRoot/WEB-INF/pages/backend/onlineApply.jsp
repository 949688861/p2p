<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>onlineApply.html</title>

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
	    <h3 class="panel-title">在线申请管理</h3>
	  </div>
	  <div class="panel-body">
	  		<table class="table table-hover">
	  			<thead>
	  				<tr>
	  					<th>产品名称</th>
	  					<th>发行单位</th>
	  					<th>产品类型</th>
	  					<th>贷款周期</th>
	  					<th>贷款利率</th>
	  					<th>贷款规模</th>
	  					<th>状态</th>
	  					<th>操作</th>
	  				</tr>
	  			</thead>
	  			<tbody>
		  			 <c:forEach items="${productVos }" var="productVo">
		  			  <tr> 	 	 	 	 	 
		  				<td>${productVo.productName }</td>
		  				<td>${productVo.companyName }</td>
		  				<td>${productVo.productTypeName }</td>
		  				<td>${productVo.period }</td>
		  				<td>${productVo.primeLendingRateFrom *100 }% -- ${productVo.primeLendingRateTo *100 }%</td>
		  				<td>${productVo.financingAmountFrom }万 -- ${productVo.financingAmountTo }万</td>
		  				<td>
		  					<c:choose>
		  						<c:when test="${productVo.lendingStatus==1  && productVo.typeStatus==1 }">
		  							<c:out value="有效产品"></c:out>
		  						</c:when>
		  						<c:otherwise>
		  							<c:out value="无效产品"></c:out>
		  						</c:otherwise>
		  					</c:choose>
		  				</td>
		  				<td>
		  					<a href="${pageContext.request.contextPath }/apply/applyDetail?applyProductId=${productVo.productId}" class="btn btn-primary  btn-xs btn-success">
		  						在线申请详情
		  						<span class="glyphicon glyphicon-arrow-right"></span>
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
