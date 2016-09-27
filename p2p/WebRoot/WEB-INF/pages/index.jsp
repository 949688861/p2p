<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>ITing金融</title>
		<link href="${pageContext.request.contextPath}/css/pagination.css"
			rel="stylesheet" type="text/css" />
		<link href=" ${pageContext.request.contextPath}/css/css.css"
			rel="stylesheet" type="text/css" />
		<script type="text/javascript"
			src=" ${pageContext.request.contextPath}/js/jquery.js">
</script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/js/jquery.pagination.js">
</script>
		<script type="text/javascript">

$(document).ready(function() {

	$("#choices tr").each(function() {
		$(this).find('a').click(function() {
			$(this).parent().find('a').removeClass('cur');
			$(this).addClass('cur');
			//TODO: 异步加载数据
			});
	});
});


</script>

<script type="text/javascript">

function getTime() {
	var date = new Date();
	document.getElementById("time").innerHTML = date;
	window.setTimeout("getTime()", 1000);
}
window.onload = getTime;

</script>


<script type="text/javascript">


var productTypeId = 0;
var lendingperiodId = 0;

var amountRateFrom = 0;
var amountRateTo = 0;

var lendRateFrom = 0;
var lendRateTo = 0;

function clickProductType(id) {
	productTypeId = id;
	ajax();

}

function clickLendingperiodPeriod(id) {
	lendingperiodId = id;
	ajax();

}

function clickAmountRate(amountFrom, amountTo) {
	amountRateFrom = amountFrom;
	amountRateTo = amountTo;
	ajax();

}


				var productTypeId ;
				var lendingperiodId ;
				
				var amountRateFrom ;
				var amountingRateTo ;
				
				var lendRateFrom ;
				var lendRateTo ;
				
				function clickProductType(id) {
					productTypeId = id;
					alert(productTypeId);
				}
				
				function clickLendingperiodPeriod(id) {
					lendingperiodId = id;	
					alert(lendingperiodId);
				}
				
				function clickAmountRate(amountFrom, amountTo) {
					amountRateFrom = amountFrom;
					amountingRateTo = amountTo;
					alert(amountRateFrom+amountingRateTo);
				}
				


function clicklendRate(lendFrom, lendTo) {
	lendRateFrom = lendFrom;
	lendRateTo = lendTo;
	ajax();

}




function ajax() {
	var url = "${pageContext.request.contextPath}/backend/showSelectProduct.do";
	$.getJSON(
					url,
					{
						"productTypeId" : productTypeId,
						"lendingperiodId" : lendingperiodId,
						"amountRateFrom" : amountRateFrom,
						"amountRateTo" : amountRateTo,
						"lendRateFrom" : lendRateFrom,
						"lendRateTo" : lendRateTo
					},
					function(products) {
						
						$("#ulcontent").children().remove();
						
						
                        $(products).each(function(i,productVo){
                        	
                          $("#ulcontent").append("<li class='clear'></li>");
                          var $div = $("#ulcontent li").eq(i);
                          $div.append('<div class="fl"><img src="${pageContext.request.contextPath}/images/jsyh.png" width="75px" height="40px" class="pr_logo" /></div>');
                          $div.append('<div class="fl"><dl>\
                                   <dt>产品名称：<span class="king">'+productVo.productName+'</span></dt>\
									<dt>所属银行：'+productVo.companyName+'</dt>\
									<dt>产品类别：'+productVo.productTypeName+'</dt>\
									<dt>放贷利率：'+productVo.primeLendingRateFrom+'~'+productVo.primeLendingRateTo+'%</dt>\
									<dt>放贷金额：'+productVo.financingAmountFrom+'~'+productVo.financingAmountTo+'</dt>\
									<dt>放贷期限：'+productVo.period+'</dt></dl></div>');
								  $div.append('<div class="view_details"><a href="${pageContext.request.contextPath}/backend/showProductDetail.do?productId='+productVo.productId+'">查看详细</a></div>');
                
});
});
}

$(function(){
	$('.M-box3').pagination({
                    jump:true,
                    coping:true,
                    homePage:'首页',
                    endPage:'末页',
                    prevContent:'上页',
                    nextContent:'下页',
                    callback:function(index){

                    	$.getJSON(
					"${pageContext.request.contextPath}/backend/showPageProduct.do",
					{
						"pageNo":index,
						"productTypeId" : productTypeId,
						"lendingperiodId" : lendingperiodId,
						"amountRateFrom" : amountRateFrom,
						"amountRateTo" : amountRateTo,
						"lendRateFrom" : lendRateFrom,
						"lendRateTo" : lendRateTo
					},
					function(products) {
						
						$("#ulcontent").children().remove();
						
						
                        $(products).each(function(i,productVo){
                        	
                          $("#ulcontent").append("<li class='clear'></li>");
                          var $div = $("#ulcontent li").eq(i);
                          $div.append('<div class="fl"><img src="${pageContext.request.contextPath}/images/jsyh.png" width="75px" height="40px" class="pr_logo" /></div>');
                          $div.append('<div class="fl"><dl>\
                                   <dt>产品名称：<span class="king">'+productVo.productName+'</span></dt>\
									<dt>所属银行：'+productVo.companyName+'</dt>\
									<dt>产品类别：'+productVo.productTypeName+'</dt>\
									<dt>放贷利率：'+productVo.primeLendingRateFrom+'~'+productVo.primeLendingRateTo+'%</dt>\
									<dt>放贷金额：'+productVo.financingAmountFrom+'~'+productVo.financingAmountTo+'</dt>\
									<dt>放贷期限：'+productVo.period+'</dt></dl></div>');
                         $div.append('<div class="view_details"><a href="${pageContext.request.contextPath}/backend/showProductDetail.do?productId='+productVo.productId+'">查看详细</a></div>');
});
});
                            	}
                            });	
                          });
	


</script>
	</head>

	<body>
		<div class="wrap header oauto clear">
			<div class="fr">
				<a href="#"> 当前时间：<label id="time"></label> </a>
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
					<a href="index.html" class="cur">融资产品</a>
				</li>
				<li>
					<a href=" ${pageContext.request.contextPath}/backend/showNews.do"
						target="_blank">每日新闻</a>
				</li>
			</ul>
		</div>


		<div class="wrap bank_list">
			<div class="title clear">
				<h1 class="fl">
					产品分类
				</h1>
			</div>
			<div class="bank_list_tp">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					id="choices">
					<tr class="bank_list_tp1">
						<td width="10%" align="right">
							产品类型：
						</td>

						<td width="78%" class="txt clear">
							<a href="javascript:;" class="cur" onclick="clickProductType(0)">全部</a>
							<p:forEach items="${alltypename}" var="ProductType">
								<a href="javascript:;" id="${ProductType.productTypeId}"
									onclick="clickProductType('${ProductType.productTypeId}')">${ProductType.productTypeName}</a>
							</p:forEach>
					
						</td>
						<td width="12%" align="center" valign="top" class="qb">
						</td>
					</tr>
					<tr class="bank_list_tp2">
						<td align="right">
							贷款周期：
						</td>

						<td class="txt clear">
							<a href="javascript:;" class="cur"
								onclick="clickLendingperiodPeriod(0)">全部</a>
							<p:forEach items="${allPeriod}" var="Lendingperiod">
								<a href="javascript:;" id="${Lendingperiod.lendingperiodid}"
									onclick="clickLendingperiodPeriod( '${Lendingperiod.lendingperiodid}')">${Lendingperiod.period}</a>
							</p:forEach>
						
						</td>
						<td align="center" valign="top" class="qb">
						</td>
					</tr>
					<tr class="bank_list_tp3">
						<td align="right">
							贷款利率：
						</td>

						<td class="txt clear">
							<a href="javascript:;" class="cur" onclick="clicklendRate(0,0)">全部</a>
							<a href="javascript:;" onclick="clicklendRate(1,6)">6%以下</a><a
								href="javascript:;" onclick="clicklendRate(6,8)">6%-8%</a><a
								href="javascript:;" onclick="clicklendRate(8,10)">8%-10%</a><a
								href="javascript:;" onclick="clicklendRate(10,12)">10%-12%</a><a
								href="javascript:;" onclick="clicklendRate(12,14)">12%-14%</a><a
								href="javascript:;" onclick="clicklendRate(14,-1)">14%以上</a>
						</td>
						<td align="center" valign="top" class="qb">
						</td>
					</tr>
					<tr class="bank_list_tp4">
						<td align="right">
							贷款规模：
						</td>

						<td class="txt clear">
							<a href="javascript:;" class="cur"
								onclick="clickAmountRate(0,0)">全部</a>
							<a href="javascript:;" onclick="clickAmountRate(1,99)">100万以下</a><a
								href="javascript:;" onclick="clickAmountRate(100,200)">100万-200万</a><a
								href="javascript:;" onclick="clickAmountRate(200,300)">200万-300万</a><a
								href="javascript:;" onclick="clickAmountRate(300,500)">300万-500万</a><a
								href="javascript:;" onclick="clickAmountRate(500,1000)">500万-1000万</a><a
								href="javascript:;" onclick="clickAmountRate(1000,-1)">1000万以上</a>
						</td>
						<td align="center" valign="top" class="qb">
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="wrap project_release">
			<div class="project_release_tp">
				融资产品
			</div>
			<div class="project_release_bt">
				<ul id="ulcontent"  >
					<p:forEach items="${allProduct}" var="productVo">

						<li class="clear" >
							<div class="fl">
								<img src=" ${pageContext.request.contextPath}/images/jsyh.png"
									width="75px" height="40px" class="pr_logo" />
							</div>
							<div class="fl">
								<dl>
									<dt>
										产品名称：
										<span class="king">${productVo.productName}</span>
									</dt>
									<dt>
										所属银行：${productVo.companyName}
									</dt>
									<dt>
										产品类别：${productVo.productTypeName}
									</dt>
									<dt>
										放贷利率：${productVo.primeLendingRateFrom}~${productVo.primeLendingRateTo}%
									</dt>
									<dt>
										放贷金额：${productVo.financingAmountFrom}~${productVo.financingAmountTo}
									</dt>
									<dt>
										放贷期限：${productVo.period}
									</dt>
								</dl>
							</div>
							<div class="view_details">
								<a
									href="${pageContext.request.contextPath}/backend/showProductDetail.do?productId=${productVo.productId}">查看详细</a>
							</div>
						</li>
					</p:forEach>
				</ul>
			</div>
			<%--
			<div class="newslist_text">
				<a href="#">上一页</a><a href="#" class="cur">1</a><a href="#">2</a><a
					href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a
					href="#">7</a><a href="#">...</a><a href="#">下一页</a>
			</div>
		--%>

			<div class="M-box3" style="margin-top: 50px; margin-left: 20%"></div>

		</div>


		<div class="footer">
			Copyright &copy; 2014 南京网博 版权所有
			<a href="mailto:cuiyi@itany.com">cuiyi@itany.com</a>
		</div>
	</body>
</html>
