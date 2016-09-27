<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>ITing金融-每日新闻</title>
		<link href=" ${pageContext.request.contextPath}/css/css.css"
			rel="stylesheet" type="text/css" />
		<script type="text/javascript"
			src=" ${pageContext.request.contextPath}/js/jquery-1.4.2.min.js">
</script>

		<script type="text/javascript">
function getTime() {

	var date = new Date();
	document.getElementById("time").innerHTML = date;
	window.setTimeout("getTime()", 1000);
}
window.onload = getTime;
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
					<a href="${pageContext.request.contextPath}/backend/showProduct.do">融资产品</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/backend/showNews.do"
						target="_blank" class="cur">每日新闻</a>
				</li>
			</ul>
		</div>


		<div class="wrap font16">
			首页 >> 每日新闻
		</div>
		<div class="wrap">
			<div class="title clear">
				<h1 class="fl">
					今日头条
				</h1>
			</div>
			<p:forEach var="News" items="${newss}" end="0">
				<div class="salon_top clear">
					<div class="fl">
						<ul id="foo1">

							<li>
								<img src=" ${pageContext.request.contextPath}/images/${News.image}"
									width="613" height="459" />
							</li>
						</ul>
						<div id="pager1" class="pager"></div>
					</div>
					<div class="fr">
						<div class="bt">
							<h1>
								<a href="" title="${News.newstitle}">${News.newstitle}</a>
							</h1>
							<div class="hudongsalon_success">
								<span class="fe4800">（成功举办）</span>
							</div>
						</div>
						<div class="in clear">
							<div class="time">
								时间：${News.createat}
							</div>
						</div>
						<div class="txt">
						${News.content}
						</div>
					</div>
				</div>
		</div>
		</p:forEach>


		<div class="wrap">
			<div class="title clear">
				<h1 class="fl">
					其他新闻
				</h1>
			</div>
			<div class="salon">
				<ul>

					<p:forEach var="News" items="${newss}" begin="1">
						<li class="clear">
							<div class="fl">
								<img
									src=" ${pageContext.request.contextPath}/images/${News.image}" />
							</div>
							<div class="fl">
								<div class="salon_title clear">
									<div class="fl">
										<a href="" title="${News.newstitle}">${News.newstitle}</a><span
											class="fe4800">（已结束）</span>
									</div>
									<div class="fr">
										日期：${News.createat}
									</div>
								</div>
								<div class="salon_in">
									${News.content}
								</div>
							</div>
						</li>
					</p:forEach>
				</ul>
				<div class="newslist_text">
					<a href="#">上一页</a><a href="#" class="cur">1</a><a href="#">2</a><a
						href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a
						href="#">7</a><a href="#">...</a><a href="#">下一页</a>
				</div>
			</div>
		</div>
		<div class="footer">
			Copyright &copy; 2014 南京网博 版权所有
			<a href="mailto:cuiyi@itany.com">cuiyi@itany.com</a>
		</div>
	</body>
</html>
