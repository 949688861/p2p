<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>ITing金融-产品</title>



		<link rel="stylesheet"
			href=" ${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css"
			type="text/css"></link>
		<link rel="stylesheet"
			href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/css/flat-ui.css"
			type="text/css"></link>
		<link rel="shortcut icon"
			href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/img/favicon.ico">
		<link rel="stylesheet"
			href=" ${pageContext.request.contextPath}/css/css.css">
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

function getTime() {

	var date = new Date();
	document.getElementById("time").innerHTML = date;
	window.setTimeout("getTime()", 1000);
}
window.onload = getTime;

	$(function() {

	$.getJSON(
			"${pageContext.request.contextPath}/backend/selectHistoryApply.do",		
			 {applyProductId:${productVo.productId},
			function(applys) {
				$(applys).each(
						function(i, apply) {
							$("#ul").append("<li></li>");
							$("#ul li").eq(i).html("<h1>" + (i + 1) +"</h1>"+ (apply.applyperson)+" 　 "+"成功申请("+(apply.applynum)+"万元)" );
							$("#pnum").text('(' + ( i+ 1) + ')');
						});

			});

	});



function confirm(){
	var applyPersonIDCard = document.getElementById("applyPersonIDCard").value;

	var applyPerson = document.getElementById("applyPerson").value;

	var applyNum = document.getElementById("applyNum").value;
	
	var  financingAmountFrom = "${productVo.financingAmountFrom}";
	
	var  financingAmountTo = "${productVo.financingAmountTo}";
	
	
	if(!(/(^\d{15}$)|(^\d{17}([0-9]|x)$)/.test(applyPersonIDCard))){
		
		document.getElementById("info").innerHTML="对不起,身份证格式不正确！";
		return false;
	}
	
	if(applyNum<financingAmountFrom ||applyNum>financingAmountTo ){
		document.getElementById("info").innerHTML="对不起,您输入的金额不在放贷金额范围之内！";
		return false;
	}	
	if(applyPerson == ""){
			document.getElementById("info").innerHTML="对不起,请输入正确的姓名！";
		return false;
	}
}


function removeMsg() {
	document.getElementById("info").innerHTML = "";
}


function checkCard(){
	var applyPersonIDCard = document.getElementById("applyPersonIDCard").value;
	
	if(!(/(^\d{15}$)|(^\d{17}([0-9]|x)$)/.test(applyPersonIDCard))){
		
		document.getElementById("info").innerHTML="对不起,身份证格式不正确！";
	}
}

function checknum(){
		var applyNum = document.getElementById("applyNum").value;
		
		var  financingAmountFrom = "${productVo.financingAmountFrom}";
	
	    var  financingAmountTo = "${productVo.financingAmountTo}";
 
		if(applyNum<financingAmountFrom ||applyNum>financingAmountTo ){
			
		document.getElementById("info").innerHTML="对不起,您输入的金额不在放贷金额范围之内！";
	}	
}
</script>
	</head>

	<body>

		<div class="wrap header oauto clear">
			<div class="fr">
				<a href="#"> <label id="time"></label> </a>
			</div>
		</div>
		<div class="logo-nav">
			<div class="wrap oauto">
				<div class="clear">
					<div class="fl">
						<img src=" ${pageContext.request.contextPath}/images/logo.png" />
					</div>
				</div>
			</div>
		</div>
		<div class="menu">
			<ul class="clear">
				<li>
					<a href="${pageContext.request.contextPath}/backend/showProduct.do"
						class="cur">融资产品</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/backend/showNews.do" target="_blank">每日新闻</a>
				</li>
			</ul>
		</div>



		<div class="wrap font16">
			首页 >> 融资产品 >> 银投联贷
		</div>
		<div class="wrap clear">
			<div class="fl">
				<div class="detail_detail">
					<div class="success_tp clear">
						<div class="fl">
							银投联贷
						</div>
					</div>
					<div class="detail_detail_bt">
						<div class="detail_detail_bt1">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										产品名称：${productVo.productName}
									</td>
									<td>
										放贷利率：${productVo.primeLendingRateFrom}%
									</td>
								</tr>
								<tr>
									<td>
										发行单位：${productVo.companyName}
									</td>
									<td>
										放贷金额：${productVo.financingAmountFrom}-${productVo.financingAmountTo}万
									</td>
								</tr>
								<tr>
									<td>
										产品类型：${productVo.productTypeName}
									</td>
									<td>
										放贷期限：${productVo.period}
									</td>
								</tr>
							</table>
						</div>
						<div class="detail_detail_bt3 clear">
							<div class="fl">
								<img src=" ${pageContext.request.contextPath}/images/logo.png" />
								经理：${productVo.linkMan}
								<br />
								银行：${productVo.ownedBank}
							</div>
							<div class="fr">
								<a href="javascript:;" data-toggle="modal"
									data-target="#applyModal" class="apply-btn" /> 申请 </a>
							</div>
						</div>
					</div>
				</div>
				<div class="detail_detail_title title clear">
					<h1 class="fl">
						产品详情
					</h1>
				</div>
				<div class="detail_detail_in">
					<h1>
						<span class="logo1"></span>产品描述
					</h1>
					<p>
						${productVo.productDescription}
					</p>
					<h1>
						<span class="logo1"></span>功能特点
					</h1>
					<p>
						利用创投机构对科技型中小企业经营状况以及发展潜力的专业判断，有效控制客户准入风险；
						（2）股权融资和债权融资相结合，在不稀释股权的基础上有效解决企业流动资金需求；
						（3）建立起银行、创投机构与科技型中小企业的合作平台。
					</p>
					<h1>
						<span class="logo1"></span>相关要求
					</h1>
					<p>
						（1）贷款金额：根据借款人的实际资金需求、偿债能力及我行认可的授信方案综合确定银投联贷的贷款金额，该品种项下的最高金额不得超过创投公司实际投入到借款人的创投（风投）资金的80％。
						（2）贷款期限：由贷款人根据借款人实际生产周期、借款用途、借款人风险承受能力、经营特点等情况具体确定，不得超过创投公司和借款人约定的退出投资期限。
						（3）贷款利率：贷款利率按照中国人民银行利率政策及我行的贷款定价政策执行。
					</p>
				</div>
			</div>
			<div class="fr">
				<div class="success">
					<div class="success_tp">
						产品成功申请
						<span class="fe4800" id="pnum">0</span>人
					</div>
					<div class="success_bt">
						<ul id="ul">

						</ul>
					</div>
				</div>
			</div>
		</div>


		<!-- 申请 -->
		<div class="modal fade" style="margin-top: 200px;" id="applyModal"
			tabindex="-1" role="dialog" aria-labelledby="applyModal"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="form-horizontal" role="form" method="post"
						action="${pageContext.request.contextPath}/backend/insertApply.do"
						onsubmit="return confirm()" >
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">
								申请
							</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for="productId" class="col-lg-2 control-label">
									产品ID
								</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="productId"
										readonly="readonly" value="${productVo.productId}"
										name="productId" />
								</div>
							</div>
							<div class="form-group">
								<label for="productName" class="col-lg-2 control-label">
									产品名称
								</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="productName"
										readonly="readonly" value="${productVo.productName}"
										name="productName" />
								</div>
							</div>
							<div class="form-group">
								<label for="applyPersonIDCard" class="col-lg-2 control-label">
									申请人身份证号
								</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="applyPersonIDCard"
										placeholder="申请人身份证号" name="personCard" onfocus="removeMsg()"
										onblur="checkCard()" />
								</div>

							</div>
							<div class="form-group">
								<label for="applyPerson" class="col-lg-2 control-label">
									申请人
								</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="applyPerson"
										placeholder="请使用上面身份证上的姓名" name="personName"
										onfocus="removeMsg()" />
								</div>
							</div>

							<div class="form-group">
								<label for="applyNum" class="col-lg-2 control-label">
									申请金额
								</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="applyNum"
										placeholder="贷款金额：${productVo.financingAmountFrom}-${productVo.financingAmountTo}万　单位：万元 " name="applyNum" onblur="checknum()"
										onfocus="removeMsg()" />
								</div>
							</div>
						</div>
						<label id="info" style="color: red; font-size: 15px"></label>
						<label id="msginfo" style="color: red; font-size: 15px"></label>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">
								取消
							</button>
							<input type="submit" class="btn btn-primary" value="申请" />
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 申请 -->

		<!--end-->
		<div class="footer">
			Copyright &copy; 2014 南京网博 版权所有
			<a href="mailto:cuiyi@itany.com">cuiyi@itany.com</a>
		</div>
	</body>
</html>
