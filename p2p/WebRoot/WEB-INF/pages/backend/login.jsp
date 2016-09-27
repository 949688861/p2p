<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/base.js"></script>
    <title>登录到Iting</title>
    	<style type="text/css">
    		$(function(){
    			$('#loginFrm');
    		})	
    	</style>
	<style type="text/css">
		body{
			background-color: #7784a0;
			padding-top: 40px;
		}
		.loginDiv{
			margin: auto;
			height: 300px;
			width: 600px;
			margin-top:1111pz;;
			background-color: #aaaaaa;
			color: white;
		}
		.loginFrm{
			margin: auto;
			height: 300px;
			width: 600px;
			height: 300px;
			background: #ffffff;
			margin-top:1111pz;;
		}
	</style>
	
	<script type="text/javascript">
	function removeMsg(){
		document.getElementById("msg").innerHTML="";
		
		
	}
	
	</script>
</head>
	
<body>
	<div class="loginDiv" style="height: 61px;">
		<h3 style="text-align: center;padding-top: 10px;">欢迎使用ITing融资系统</h3>
	</div>
	<div class="loginFrm">
			<form class="form-horizontal" role="form"  method="post" action="${pageContext.request.contextPath }/sysuser/login" >
					    <div class="form-group" style="padding-top: 15px;">
							<label for="userName" class="col-lg-2 control-label">用户名</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="userName" name="loginName" onfocus="removeMsg()" />
							</div>
						</div>
						<div class="form-group">
							  <label for="pwd" class="col-lg-2 control-label">密码</label>
							  <div class="col-lg-9">
							     <input type="password" class="form-control" id="pwd" name="loginPassword" onfocus="removeMsg()" />
							  </div>
						</div>
						<span style="color:red; font-size: 15px" id="msg">${msg }</span>
						<div class="form-group" align="right">
							  <div class="col-lg-10">
							  		<a style="border: none;" class="btn" href="main.html" >
										<input type="image"  src="${pageContext.request.contextPath }/images/login_btn.png">
							  		</a>
							  </div>
						
						</div>
						<div  class="form-group" align="right" >
							<hr style="width:80%"/>	
							<div class="col-lg-10" style="color:lightgrey">
							  		p2p金融管理系统 
							  </div>
						</div>
           			</form>
	</div>
</body>
</html>

