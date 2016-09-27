<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>productModify.html</title>

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
	<script src=" ${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/js/flat-ui.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/fwb/bootstrap-wysiwyg.js"></script>
	<script src=" ${pageContext.request.contextPath}/plugins/fwb/external/jquery.hotkeys.js" type="text/javascript"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/js/productAdd.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/js/application.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/bootstrap/js/messager.js"></script>
	<script type="text/javascript">
		$(function(){
				//查询所有的公司
				$.getJSON("${pageContext.request.contextPath}/backend/findcompany.do", function(companys){
						 document.getElementById("companyId").options.length=0;
						 $(companys).each(function(index,company){
							  var l="<option  value="+company.companyid+">"+company.companyname+"</option>";
							  var $l=$(l);
							  $("#companyId").append($l);
							  	});
						 });
						 
				//查询所有的产品类型
				$.getJSON("${pageContext.request.contextPath}/backend/findProductType.do", function(productTypes){
						document.getElementById("productTypeId").options.length=0;
						 $(productTypes).each(function(index,productType){
							  var l="<option  value="+productType.productTypeId+">"+productType.productTypeName+"</option>";
							  var $l=$(l);
							  $("#productTypeId").append($l);
							  	});
						 });
						 
				//查询所有的贷款周期
				$.getJSON("${pageContext.request.contextPath}/backend/findPeriod.do", function(periods){
						document.getElementById("lendingperiodId").options.length=0;
						 $(periods).each(function(index,period){
							  var l="<option  value="+period.lendingperiodid+">"+period.period+"</option>";
							  var $l=$(l);
							  $("#lendingperiodId").append($l);
							  	});
						 });
		});
		
		var patterns = /^[1] | [0][.][0-9]?$/;
		function rateFrom() {
				var rateFrom = parseInt($("#primeLendingRateFrom").val());
				var rateTo = parseInt($("#primeLendingRateTo").val());
				if (!(patterns.test(rateFrom))) {
					$.messager.confirm("警告!", "请输入0到1之间的数");
				}
				if (rateFrom > rateTo) {
					$.messager.confirm("警告!!", "最小利率不能高于最大利率");
				}
		}
		function rateTo() {
				var rateFrom = parseInt($("#primeLendingRateFrom").val());
				var rateTo = parseInt($("#primeLendingRateTo").val());
				if (!(patterns.test(rateTo))) {
					$.messager.confirm("警告!", "请输入0到1之间的数");
				}
				if (rateFrom > rateTo) {
					$.messager.confirm("警告!!", "最大利率不能低于最小利率");
				}
		}
			
		var amountPattern = /^[0-9]{1,}([.][0-9]{1,})?$/;
		function amountFrom() {
				var amountFrom = parseInt($("#financingAmountFrom").val());
				var amountTo = parseInt($("#financingAmountTo").val());
				if (!(amountPattern.test(amountFrom))) {
					$.messager.confirm("警告!", "请输入数字");
				}
				if (amountFrom > amountTo) {
					$.messager.confirm("警告!", "最低贷款不能高于最高贷款");
				}
		}
		function amountTo() {
				var amountFrom = parseInt($("#financingAmountFrom").val());
				var amountTo = parseInt($("#financingAmountTo").val());
				if (!(amountPattern.test(amountTo))) {
					$.messager.confirm("警告!", "请输入数字");
				}
				if (amountFrom > amountTo) {
					$.messager.confirm("警告!", "最大贷款不能低于最低贷款");
				}
		}
				
	</script>
	
	
	
	
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">融资产品修改</h3>
	  </div>
	  <div class="panel-body">
	  		
	  		<form class="form-horizontal" role="form" action="${pageContext.request.contextPath }/product/modify" method="post">
	  		
	  		<div class="form-group">
              <label for="productID" class="col-lg-2 control-label">产品编号</label>
              <div class="col-lg-10">
                <input type="text" class="form-control" id="productID" name="productId" value="${productVo.productId}" readonly="readonly">
              </div>
            </div>
	  		
            <div class="form-group">
              <label for="productName" class="col-lg-2 control-label">产品名称</label>
              <div class="col-lg-10">
                <input type="text" class="form-control" id="productName" name="productName" value="${productVo.productName}">
              </div>
            </div>
            
            <div class="form-group">
            	<label for="productRate" class="col-lg-2 control-label">贷款利率</label>
            	<div class="col-lg-10">
			        <div class="input-group col-lg-3" style="float: left;">
			            <input type="text" class="form-control" id="primeLendingRateFrom" name="primeLendingRateFrom" value="${productVo.primeLendingRateFrom * 100}" onblur="rateFrom();" />
			            <span class="input-group-addon">%</span>
			        </div>
			        <div style="float: left;margin: 0 10px;">-----</div><br/>
			        <div class="input-group col-lg-4" >
			            <input type="text" class="form-control" id="primeLendingRateTo" name="primeLendingRateTo" value="${productVo.primeLendingRateTo * 100 }" onblur="rateTo();" />
			            <span class="input-group-addon">%</span>
			        </div>
			  		<font color="red">${rmsg}</font>
			    </div>
          	</div>
            
            
            <div class="form-group">
              <label for="company" class="col-lg-2 control-label">发行单位</label>
              <div class="col-lg-10">
                   <select data-toggle="select"  id="companyId" name="companyId" class="form-control select select-default" >
		                 <option value="${productVo.companyId}">${productVo.companyName}</option>
		              </select>
              </div>
            </div>
            
             <div class="form-group">
            	<label for="loansize" class="col-lg-2 control-label">贷款规模</label>
            	<div class="col-lg-10">
			        <div class="input-group col-lg-3" style="float: left;">
			            <input type="text" class="form-control" id="financingAmountFrom" name="financingAmountFrom" value="${productVo.financingAmountFrom}" onblur="amountFrom();" />
			            <span class="input-group-addon">万</span>
			        </div>
			        <div style="float: left;margin: 0 10px;">-----</div><br/>
			        <div class="input-group col-lg-5" >
			            <input type="text" class="form-control" id="financingAmountTo" name="financingAmountTo" value="${productVo.financingAmountTo}" onblur="amountTo();" />
			            <span class="input-group-addon">万</span>
			        </div>
			    	<font color="red">${amsg}</font>
			    </div>
          	</div>
            
            <div class="form-group">
              <label for="productType" class="col-lg-2 control-label">产品类型</label>
              <div class="col-lg-10">
		              <select data-toggle="select" id="productTypeId" name="productTypeId" class="form-control select select-default">
		                 <option value="${productVo.productTypeId}">${productVo.productTypeName}</option>
		              </select>
              </div>
            </div>
            
            <div class="form-group">
              <label for="productDuration" class="col-lg-2 control-label">贷款周期</label>
              <div class="col-lg-10">
		              <select data-toggle="select" id="lendingperiodId" name="lendingperiodId" class="form-control select select-default">
		                 <option value="${productVo.lendingPeriodId}">${productVo.period}</option>
		              </select>
              </div>
            </div>
            
            
            <div class="form-group">
              <label for="linkman" class="col-lg-2 control-label">联系人</label>
              <div class="col-lg-10">
                <input type="text" class="form-control" id="linkman" name="linkMan" value="${productVo.linkMan}">
              </div>
            </div>
            
            <div class="form-group">
              <label for="bank" class="col-lg-2 control-label">联系银行</label>
              <div class="col-lg-10">
                <input type="text" class="form-control" id="bank" name="ownedBank" value="${productVo.ownedBank}">
              </div>
            </div>
            
            <div class="form-group">
              <label for="content" class="col-lg-2 control-label">内容</label>
              <div class="col-lg-10">
              	
<!-- 			asdjalkj dlkajsdkl asjdlkaj sdkl asd -->
			<div class="btn-toolbar" data-role="editor-toolbar"	data-target="#content">
				<div class="btn-group">
					<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)">
						<b>加粗</b>
					</a> 
					<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)">
						<i>倾斜</i>
					</a> 
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="insertunorderedlist" title="Bullet list">
						列表
					</a>
					<a class="btn" data-edit="insertorderedlist" title="Number list">
						有序列表
					</a> 
					<a class="btn" data-edit="indent" title="Indent (Tab)">
						Tab缩进
					</a>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="justifyleft"
						title="Align Left (Ctrl/Cmd+L)">
						左对齐
					</a> 
					<a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)">
						居中
					</a> 
					<a class="btn" data-edit="justifyright"
						title="Align Right (Ctrl/Cmd+R)">
						右对齐
					</a> 
					<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)">
						自动调整
					</a>
				</div>
		
		 		<div class="btn-group">
					<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)">
						撤销
					</a> 
					<a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)">
						恢复
					</a>
				</div>
				
			</div>
<!--               	asdalksdjklasj -->
              	
            <div id="content" style="overflow:scroll; max-height:300px;border: 1px solid;height: 200px;">
            	<textarea rows="8" cols="95" name="productDescription" >${productVo.productDescription}</textarea>
            </div>
         </div>
     </div>
            
            
            
            <div class="form-group">
              <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-lg btn-info" style="padding: 15px 60px;border-radius: 0px;">修改</button>
              </div>
            </div>
          </form>
	  		
	  		
	  		
	  </div>
	</div>
	
</body>
</html>