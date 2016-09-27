<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>loanTimeManage.html</title>

		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css"
			type="text/css"></link>
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/plugins/FlatUI/dist/css/flat-ui.css"
			type="text/css"></link>
		<link rel="shortcut icon"
			href="${pageContext.request.contextPath}/plugins/FlatUI/dist/img/favicon.ico">
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/css/style.css">
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/js/jquery.js">
</script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/plugins/FlatUI/dist/js/flat-ui.js">
</script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/plugins/bootstrap/js/messager.js">
</script>
		<script type="text/javascript">
function modify(name, id) {
	$("#loanTimeId4Modify").val(id);
	$("#loanTimeName4Modify").val(name);
	$('#proModify').modal();
}

function changeStatus(id, status) {
	var sta = 1;
	if (status == 1) {
		sta = 0;

	}

	window.location.href = "${pageContext.request.contextPath}/lendingPeriod/modifyStatus?lendingPeriodId="
			+ id + "&status=" + sta;
}

function check(){
	var loanTimeName4Modify = $("#loanTimeName4Modify").val();
	if(loanTimeName4Modify=='' || loanTimeName4Modify == null){
		$("#pd").text("不能为空");
		return false;
	}

}
function rem(){
	$("#pd").text("");
}

</script>
	</head>

	<body style="padding: 5px 10px;">

		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">
					贷款周期管理
				</h3>
			</div>
			<div class="panel-body">
				<a href="javascript:;" class="btn btn-primary btn-default"
					data-toggle="modal" data-target="#proAdd"> 添加 <span
					class="glyphicon glyphicon-plus"></span> </a>

				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<th>
								贷款周期ID
							</th>
							<th>
								周期
							</th>
							<th>
								状态
							</th>
							<th>
								操作
							</th>
						</tr>
					</thead>
					<tbody>
						<p:forEach var="LendingPeriod" items="${lendingPeriods}">
							<tr>
								<td>
									${LendingPeriod.lendingPeriodId}
								</td>
								<td>
									${LendingPeriod.period}
								</td>
								<td>
									<p:if test="${LendingPeriod.status == 1}">启用</p:if>
									<p:if test="${LendingPeriod.status == 0}">禁用</p:if>
								</td>
								<td>
									<a class="btn btn-primary  btn-xs btn-warning"
										href="javascript:;"
										onclick="modify('${LendingPeriod.period}','${LendingPeriod.lendingPeriodId}')">
										修改 <span class="glyphicon glyphicon-pencil"></span> </a>
									<a 
										href="javascript:;"
										onclick="changeStatus('${LendingPeriod.lendingPeriodId}','${LendingPeriod.status}')">
										<p:if test="${LendingPeriod.status == 0}"><span class="glyphicon glyphicon-ok btn btn-primary btn-xs btn-success">启用</span></p:if> 
										<p:if test="${LendingPeriod.status == 1}"><span class="glyphicon glyphicon-remove btn btn-primary btn-xs btn-danger" >禁用</span></p:if>
										  </a>
								</td>
							</tr>
						</p:forEach>
					</tbody>
				</table>
			</div>
		</div>



		<!-- 产品修改Modal -->
		<div class="modal fade" style="margin-top: 200px;" id="proModify"
			tabindex="-1" role="dialog" aria-labelledby="proModifyLabel"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="form-horizontal" role="form"
						action="${pageContext.request.contextPath}/lendingPeriod/modify"  method="post" onsubmit="return check();">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">
								周期修改
							</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for="loanTimeId4Modify" class="col-lg-2 control-label">
									周期Id
								</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="loanTimeId4Modify"
										readonly="readonly" name="lendingPeriodId" />
								</div>
							</div>
							<div class="form-group">
								<label for="loanTimeName4Modify" class="col-lg-2 control-label">
									周期
								</label>
								<div class="col-lg-10">
									<input type="text" class="form-control"
										id="loanTimeName4Modify" placeholder="单位：月" name="period" onfocus="rem();"/>
									<label id="pd" style="color: red"></label>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">
								取消
							</button>
							<input type="submit" class="btn btn-primary" value="修改" />
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 产品修改Modal -->

		<!-- 产品类型添加Modal -->
		<div class="modal fade" style="margin-top: 200px;" id="proAdd"
			tabindex="-1" role="dialog" aria-labelledby="proAddLabel"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="form-horizontal" role="form"
						action="${pageContext.request.contextPath}/lendingPeriod/add" method="post">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="proAddLabel">
								周期添加
							</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for="loanTimeName4Add" class="col-lg-2 control-label">
									周期
								</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="loanTimeName4Add"
										placeholder="单位：月" name="period" onfocus="rem();">
									<label id="pd" style="color: red"></label>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">
								取消
							</button>
							<input type="submit" class="btn btn-primary" value="添加" />
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 产品添加Modal -->




	</body>
</html>
