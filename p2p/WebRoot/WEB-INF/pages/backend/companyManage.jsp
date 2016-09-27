<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>conpanyManage.html</title>

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is my page">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/css/pagination.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css"
		type="text/css"></link>
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/css/flat-ui.css"
		type="text/css"></link>
	<link rel="shortcut icon" href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/img/favicon.ico">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/css/style.css">
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/js/flat-ui.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/bootstrap/js/messager.js"></script>
		<script type="text/javascript"src="${pageContext.request.contextPath}/js/jquery.pagination.js"></script>
	<script type="text/javascript">
	
		function deleteProduct(id)
		{
			 $.messager.confirm("确认删除", "确认要删除吗?删除后不能恢复", function() { 
        			//alert("ok pressed");
        			window.location.href="${pageContext.request.contextPath}/company/delete?companyId="+id;
      		 });
		}
	</script>
	
	
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">企业管理</h3>
	  </div>
	  <div class="panel-body">
	  		<a  href="${pageContext.request.contextPath }/toCompanyAdd" class="btn btn-primary btn-default">
	  			添加
	  			<span class="glyphicon glyphicon-plus"></span>
	  		</a>
	  		<table class="table table-hover">
	  			<thead>
	  				<tr>
	  					<th>企业名称</th>
	  					<th>佣金比例</th>
	  					<th>企业详情</th>
	  					<th>操作</th>
	  				</tr>
	  			</thead>
	  			<tbody id="tb">
	  				
	  				<c:forEach items="${companys}" var="company">
	  				
		  			<tr> 	 	 	 	 	 
		  				<td>${company.companyName}</td>
		  				<td>${company.financingInReturn}%</td>
		  				<td>${company.companyDetail}</td>
		  				<td>
		  					<a class="btn btn-primary  btn-xs btn-warning" href="${pageContext.request.contextPath }/company/companyModify?companyId=${company.companyId}">
		  						修改
		  						<span class="glyphicon glyphicon-pencil"></span>
		  					</a>
		  					<a class="btn btn-primary btn-xs btn-success" href="${pageContext.request.contextPath }/company/companyDetail?companyId=${company.companyId}">
		  						详情
		  						<span class="glyphicon glyphicon-list-alt"></span>
		  					</a>
		  					<a class="btn btn-primary btn-xs btn-danger" href="javascript:;" onclick="deleteProduct('${company.companyId}')">
		  						删除
		  						<span class="glyphicon glyphicon-remove"></span>
		  					</a>
		  				</td>
		  			</tr>
		  			
		  			</c:forEach>
		  			
	  			</tbody>
	  		</table>
	  		<div class="M-box3" style="margin-top: 30px;margin-left: 30%" ></div>
	  </div>
	</div>
	
</body>
</html>
