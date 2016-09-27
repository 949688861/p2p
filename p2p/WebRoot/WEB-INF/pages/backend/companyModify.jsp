<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>companyModify.html</title>

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is my page">
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
	
	<script type="text/javascript">
			function check(){
					var companyName = $("#companyName").val();
					if(companyName == '' || companyName==null){
							$("#cname").text("不能为空");
							return false;
					}
					
					var financinginreturn = $("#financinginreturn").val();
					if(financinginreturn == '' || financinginreturn==null){
							$("#freturn").text("不能为空");
							return false;
					}
			
			}
			function remname(){
					$("#cname").text("");
			}
			function remreturn(){
					$("#freturn").text("");
			}
	</script>
	
	
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">企业修改</h3>
	  </div>
	  <div class="panel-body">
	  		
	  		<form class="form-horizontal" role="form" action="${pageContext.request.contextPath }/company/modify" method="post" onsubmit="return check();" >
	  		
	  		<div class="form-group">
              <label for="companyId" class="col-lg-2 control-label">企业编号</label>
              <div class="col-lg-10">
                <input type="text" class="form-control" id="companyId" name="companyId" value="${company.companyId }" readonly="readonly">
              </div>
            </div>
	  		
            <div class="form-group">
              <label for="companyName" class="col-lg-2 control-label">企业名称</label>
              <div class="col-lg-10">
                <input type="text" class="form-control" id="companyName" name="companyName"  value="${company.companyName }" placeholder="产品名称" onfocus="remname();" >
              	 <label id="cname" style="color: red"></label>
              </div>
            </div>
            
            <div class="form-group">
            	<label for="productRate" class="col-lg-2 control-label">融资佣金</label>
            	<div class="col-lg-10">
			        <div class="input-group col-lg-3" style="float: left;">
			            <input type="text" class="form-control" id="financinginreturn" name="financingInReturn" value="${company.financingInReturn }"  placeholder="佣金数" onfocus="remreturn();">
			            <span class="input-group-addon">%</span>
			        </div>
			        <label id="freturn" style="color: red"></label>
			    </div>
          	</div>
            
            <div class="form-group">
              <label for="content" class="col-lg-2 control-label">内容</label>
              <div class="col-lg-10">
              	
<!-- 			asdjalkj dlkajsdkl asjdlkaj sdkl asd -->
			<div class="btn-toolbar" data-role="editor-toolbar"	data-target="#content">
				<div class="btn-group">
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
				<textarea rows="3" cols="50" id="content" name="companyDetail"  style="overflow:scroll; max-height:300px;border: 1px solid;height: 200px;">${company.companyDetail }</textarea>
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
