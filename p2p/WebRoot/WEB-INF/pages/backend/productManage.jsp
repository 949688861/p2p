<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>productManage.html</title>

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
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/bootstrap/js/messager.js"></script>
	<script type="text/javascript">
		function deleteProduct(id)
		{
			 $.messager.confirm("确认删除", "确认要删除吗?删除后不能恢复", function() { 
        			//alert("ok pressed");
        			window.location.href = "${pageContext.request.contextPath}/product/delete?productId="+id;
      		 });
		}
	</script>
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">融资产品管理</h3>
	  </div>
	  <div class="panel-body">
	  		<a  href="${pageContext.request.contextPath }/toProductAdd" class="btn btn-primary btn-default">
	  			添加
	  			<span class="glyphicon glyphicon-plus"></span>
	  		</a>
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
		  				<td>${productVo.primeLendingRateFrom * 100 }% -- ${productVo.primeLendingRateTo * 100 }%</td>
		  				<td>${productVo.financingAmountFrom }万 -- ${productVo.financingAmountTo }万</td>
		  				<td> 
		  					<c:choose>
		  						<c:when test="${productVo.lendingStatus==1 && productVo.typeStatus==1 }">
		  							<c:out value="有效产品"></c:out> 
		  						</c:when>
		  						<c:otherwise>
		  							<c:out value="无效产品"></c:out>
		  						</c:otherwise>
		  					</c:choose>
		  				</td>
		  				<td>
		  					<a class="btn btn-primary  btn-xs btn-warning" href="${pageContext.request.contextPath }/product/productModify?productId=${productVo.productId}">
		  						修改
		  						<span class="glyphicon glyphicon-pencil"></span>
		  					</a>
		  					<a class="btn btn-primary btn-xs btn-success" href="${pageContext.request.contextPath }/product/productDetail?productId=${productVo.productId}">
		  						详情
		  						<span class="glyphicon glyphicon-list-alt"></span>
		  					</a>
		  					<a class="btn btn-primary btn-xs btn-danger" href="javascript:;" onclick="deleteProduct('${productVo.productId}')">
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
