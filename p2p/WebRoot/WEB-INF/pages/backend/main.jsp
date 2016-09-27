<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>ITing金融-后台首页</title>

		<link rel="stylesheet"
			href=" ${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css"
			type="text/css"></link>
		<link rel="stylesheet"
			href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/css/flat-ui.css"
			type="text/css"></link>
		<link rel="shortcut icon"
			href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/img/favicon.ico">
		<link rel="stylesheet"
			href=" ${pageContext.request.contextPath}/css/style.css">
		<script type="text/javascript"
			src=" ${pageContext.request.contextPath}/js/jquery.js">
</script>
		<script type="text/javascript"
			src=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/js/flat-ui.js">
</script>
		<script type="text/javascript"
			src=" ${pageContext.request.contextPath}/js/base.js">
</script>
		<script type="text/javascript">

function confirm() {
	var currentPassword = "${user.loginPassword}";

	var oldpwd = document.getElementById("oldPwd").value;

	var newpwd = document.getElementById("newPwd").value;

	var repwd = document.getElementById("reNewPwd").value;
	if (currentPassword == "") {
		document.getElementById("msg").innerHTML = "此状态下，用户未登录，无法修改密码，请先登录...";
		return false;
	}
	if (currentPassword != oldpwd) {
		document.getElementById("msg").innerHTML = "该用户下密码错误，请重新输入...";
		return false;
	}

	if (oldpwd == "") {
		document.getElementById("msg").innerHTML = "原始的密码不能为空,，请重新输入...";
		return false;
	}
	if (newpwd != repwd) {
		document.getElementById("msg").innerHTML = "重复的密码输入不正确,，请重新输入...";
		return false;
	}
	if (repwd == "" && newpwd == "") {
		document.getElementById("msg").innerHTML = "新密码不能为空，请重新输入...";
		return false;
	}
	return true;
}

function removeMsg() {
	document.getElementById("msg").innerHTML = "";
}
</script>



	</head>

	<body class="page-header-fixed">

		<!-- 	头部logo开始 -->
		<div class="header navbar navbar-inverse navbar-fixed-top">
			<div class="header-inner" style="padding: 2px 40px;">
				<img alt="liu"
					src=" ${pageContext.request.contextPath}/images/logo.png">
				<div class="nav navbar-nav pull-right">
					<div class="btn-group">
						<button data-toggle="dropdown"
							class="btn btn-default dropdown-toggle" type="button">
							<img alt=""
								src=" ${pageContext.request.contextPath}/images/admin.png">
							<span>欢迎您：用户${user.userName}</span>
							<span class="caret"></span>
						</button>

						<ul role="menu" class="dropdown-menu">
							<li>
								<a href="javascript:;" data-toggle="modal"
									data-target="#modifyPwd">修改密码</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="${pageContext.request.contextPath }/sysuser/exit">退出系统</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix">
		</div>
		<!-- 	头部logo结束 -->


		<div class="page-container">
			<!-- 菜单导航开始 -->
			<div class="container menu">
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-toggle="collapse"
									data-parent="#accordion" href="#collapseOne"> 融资产品 </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div>
								<ul>
									<li>
										<a href="javascript:;"
											onclick="changePage('${pageContext.request.contextPath}/product/findAll')">融资产品管理</a>
									</li>
									<li>
										<a href="javascript:;"
											onclick="changePage('${pageContext.request.contextPath}/apply/findAll')">在线申请管理</a>
									</li>
								</ul>
							</div>
						</div>
					</div>


					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-toggle="collapse"
									data-parent="#accordion" href="#collapseTwo"> 新闻 </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<li>
										<a href="javascript:;"
											onclick="changePage('${pageContext.request.contextPath}/news/findAll')">新闻管理</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-toggle="collapse"
									data-parent="#accordion" href="#collapseThree"> 元数据管理 </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<li>
										<a href="javascript:;"
											onclick="changePage('${pageContext.request.contextPath}/productType/findAll')">产品类型管理</a>
									</li>
									<li>
										<a href="javascript:;"
											onclick="changePage('${pageContext.request.contextPath}/lendingPeriod/findAll')">贷款周期管理</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-toggle="collapse"
									data-parent="#accordion" href="#collapseFour"> 企业管理 </a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<li>
										<a href="javascript:;"
											onclick="changePage('${pageContext.request.contextPath}/company/findAll')">企业管理</a>
									</li>
									<li>
										<a href="javascript:;"
											onclick="changePage('${pageContext.request.contextPath}/company/findAllCompanyReport')">企业报表</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 菜单导航结束 -->

			<!--主界面开始 -->
			<iframe id="mainFrm" style="border: none; width: 73%; height: 80%;"
				src="${pageContext.request.contextPath}/product/findAll"></iframe>
			<!-- 主界面结束 -->

			<!-- 文档尾部开始 -->
			<div class="footer">
				Copyright &copy;  版权所有
			</div>
			<!-- 文档尾部结束 -->
		</div>




		<!-- 修改密码Modal -->
		<div class="modal fade" style="margin-top: 200px;" id="modifyPwd"
			tabindex="-1" role="dialog" aria-labelledby="modifyPwd"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form method="post"
						action="${pageContext.request.contextPath }/sysuser/modifyPassword"
						onsubmit="return confirm()" class="form-horizontal" role="form">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">
								修改密码
							</h4>
						</div>
						<input type="hidden" name="loginName" value="${user.loginName }"/>
						<div class="modal-body">
							<div class="form-group">
								<label for="oldPwd" class="col-lg-2 control-label">
									原密码
								</label>
								<div class="col-lg-10">
									<input type="password" class="form-control" id="oldPwd"
										name="oldPassword" onfocus="removeMsg()" />
								</div>
							</div>
							<div class="form-group">
								<label for="newPwd" class="col-lg-2 control-label">
									新密码
								</label>
								<div class="col-lg-10">
									<input type="password" class="form-control" id="newPwd"
										name="loginPassword" onfocus="removeMsg()" 　 />
								</div>
							</div>
							<div class="form-group">
								<label for="reNewPwd" class="col-lg-2 control-label">
									重复密码
								</label>
								<div class="col-lg-10">
									<input type="password" class="form-control" id="reNewPwd"
										name=repeatPaswword onfocus="removeMsg()" 　/>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<label id="msg" style="color: red; font-size: 15px"></label>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">
								取消
							</button>
							<input type="submit" class="btn btn-primary" value="修改"
								confim=" return checkPwd()" />
						</div>

					</form>
				</div>
			</div>
		</div>
		<!-- 修改密码Modal -->
	</body>
</html>