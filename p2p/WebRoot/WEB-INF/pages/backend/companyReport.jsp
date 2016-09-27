<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>companyReport.html</title>

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is my page">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css"
		type="text/css"></link>
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/css/flat-ui.css"
		type="text/css"></link>
	<link rel="shortcut icon" href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/img/favicon.ico">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/css/style.css">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/datetimepicker/bootstrap-datetimepicker.css" type="text/css"></link>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/js/flat-ui.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/bootstrap/js/messager.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/datetimepicker/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>

	<script type="text/javascript">
		function clea(){
			window.location.href = "${pageContext.request.contextPath}/company/companyReportClear";
		}
	
	</script>

</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">企业报表</h3>
	  </div>
	  
	  
	  <div class="panel-body">
	  
	  		<form class="form-inline" role="form" method="post" style="margin-bottom: 10px;" action="${pageContext.request.contextPath}/company/findCompanyReportByYear">
				  <div class="form-group">
				    <label  for="time">查询年份</label>
				    <input type="text" readonly="readonly"  id="datetimepicker" name="year" data-date-format="yyyy" class="form-control" id="time" placeholder="${year }">
				  </div>
				  <input type="submit" class="btn btn-default" value="查询" />
				  <input type="button" class="btn btn-danger" value="清空条件"  onclick="clea()" />
				  <hr/>
			</form>
	  		
	  
	  
	  		<table class="table table-hover">
	  			<thead>
	  				<tr>
	  					<th>企业名称</th>
	  					<th>融资产品总数</th>
	  					<th>总融资目标</th>
	  					<th>实际融资数</th>
	  					<th>佣金</th>
	  					<th>操作</th>
	  				</tr>
	  			</thead>
	  			<tbody>
		  			
		  			<c:forEach items="${companyReportVos}" var="companyReportVo">
			  			<tr> 	 	 	 	 	 
			  				<td>${companyReportVo.companyName}</td>
			  				<td>${companyReportVo.productNum}</td>
			  				<td>${companyReportVo.items}万</td>
			  				<td>${companyReportVo.actualNum}万</td>
			  				<td>${companyReportVo.commission}万</td>
			  				<td>
			  					<a class="btn btn-primary btn-xs btn-success" href="${pageContext.request.contextPath }/company/companyReportDetail?companyId=${companyReportVo.companyId}&year=${year}">
			  						详情
			  						<span class="glyphicon glyphicon-list-alt"></span>
			  					</a>
			  				</td>
			  			</tr>
		  			</c:forEach>
	  			</tbody>
	  		</table>
	  </div>
	</div>
				<script type="text/javascript">
					$('#datetimepicker').datetimepicker({
				        language:  'zh-CN',
				        weekStart: 1,
				        todayBtn:  1,
						autoclose: 1,
						todayHighlight: 1,
						startView: 4,
						minView: 4,
						forceParse: 0
				    });
				</script>
</body>
</html>
