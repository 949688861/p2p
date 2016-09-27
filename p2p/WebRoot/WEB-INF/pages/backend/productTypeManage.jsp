<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>productTypeManage.html</title>

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
		function modify(name,id)
		{
			$("#productId4Modify").val(id);
			$("#productName4Modify").val(name);
			$('#proModify').modal();
		}
		
		function changeStatus(id,status)
		{
			var sta = 1;
			if(status == 1){
				sta = 0;
			}
			window.location.href = "${pageContext.request.contextPath}/productType/modifyStatus?productTypeId="+id+"&status="+sta;
		}
	</script>
	
	
	
	
</head>

<body style="padding: 5px 10px;">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">产品类型管理</h3>
	  </div>
	  <div class="panel-body">
	  		<a  href="javascript:;" class="btn btn-primary btn-default" data-toggle="modal" data-target="#proAdd">
	  			添加
	  			<span class="glyphicon glyphicon-plus"></span>
	  		</a>
	  		
	  		<table class="table table-hover table-bordered">
	  			<thead>
	  				<tr>
	  					<th>产品类型ID</th>
	  					<th>产品类型名称</th>
	  					<th>状态</th>
	  					<th>操作</th>
	  				</tr>
	  			</thead>
	  			<tbody id="tb">
		  			<c:forEach items="${productTypes}" var="productType">
				  			<tr> 	 	 	 	 	 
				  				<td>${productType.productTypeId}</td>
				  				<td>
				  					${productType.productTypeName}
				  				</td>
				  				<td>
				  					<c:if test="${productType.status == 1}">启用</c:if>
				  					<c:if test="${productType.status == 0}">禁用</c:if>
				  				</td>
				  				<td>
				  					<a class="btn btn-primary  btn-xs btn-warning" href="javascript:;" onclick="modify('${productType.productTypeName}','${productType.productTypeId}')">
				  						修改
				  						<span class="glyphicon glyphicon-pencil"></span>
				  					</a>
				  			
				  					<a  href="javascript:;" onclick="changeStatus('${productType.productTypeId}','${productType.status}')">
				  						<c:if test="${productType.status == 0}"><span class="glyphicon glyphicon-ok btn btn-primary btn-xs btn-success" >启用</span></c:if>
				  						<c:if test="${productType.status == 1}"><span class="glyphicon glyphicon-remove  btn btn-primary btn-xs btn-danger">禁用</span> </c:if>
				  					</a>
				  				</td>
				  			</tr>
		  			</c:forEach>
	  			</tbody>
	  		</table>
	  		<div class="M-box3" style="margin-top: 30px;margin-left: 30%" ></div>
	  </div>
	</div>
	
	
	
			<!-- 产品修改Modal -->
			<div class="modal fade" style="margin-top: 200px;" id="proModify" tabindex="-1" role="dialog" aria-labelledby="proModifyLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			        <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/productType/modify" method="post">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					        <h4 class="modal-title" id="myModalLabel">产品类型修改</h4>
					      </div>
					      <div class="modal-body">
					      			<div class="form-group">
						              <label for="productId4Modify" class="col-lg-2 control-label">类型Id</label>
						              <div class="col-lg-10">
						                <input type="text" class="form-control" id="productId4Modify" name="productTypeId" readonly="readonly"/>
						              </div>
						            </div>
						            <div class="form-group">
						              <label for="productName4Modify" class="col-lg-2 control-label">类型名称</label>
						              <div class="col-lg-10">
						                <input type="text" class="form-control" id="productName4Modify" name="productTypeName"/>
						              </div>
						            </div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					        <input type="submit" class="btn btn-primary" value="修改" />
					      </div>
           			</form>
			    </div>
			  </div>
			</div>
			<!-- 产品修改Modal -->
			
			<!-- 产品类型添加Modal -->
			<div class="modal fade" style="margin-top: 200px;" id="proAdd" tabindex="-1" role="dialog" aria-labelledby="proAddLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			        <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/productType/add" method="post">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					        <h4 class="modal-title" id="proAddLabel">产品类型添加</h4>
					      </div>
					      <div class="modal-body">
						            <div class="form-group">
						              <label for="productName4Add" class="col-lg-2 control-label">类型名称</label>
						              <div class="col-lg-10">
						                <input type="text" class="form-control" id="productName4Add" name="productTypeName" placeholder="类型名称">
						              </div>
						            </div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					        <input type="submit" class="btn btn-primary" value="添加" />
					      </div>
           			</form>
			    </div>
			  </div>
			</div>
			<!-- 产品添加Modal -->
			
			
	
	
</body>
</html>
