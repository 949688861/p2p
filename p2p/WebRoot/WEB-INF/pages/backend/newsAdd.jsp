<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>newsAdd.html</title>

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is my page">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css"
		type="text/css"></link>
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/css/flat-ui.css"
		type="text/css"></link>
	<link rel="shortcut icon" href=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/img/favicon.ico">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/css/style.css">
	<link rel="stylesheet" href=" ${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap-fileupload.css" type="text/css"></link>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap-fileupload.js"></script>
	<script src=" ${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/FlatUI/dist/js/flat-ui.js"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/plugins/fwb/bootstrap-wysiwyg.js"></script>
	<script src=" ${pageContext.request.contextPath}/plugins/fwb/external/jquery.hotkeys.js" type="text/javascript"></script>
	<script type="text/javascript" src=" ${pageContext.request.contextPath}/js/productAdd.js"></script>
		<script type="text/javascript">
		function check(){
			var newsName = $("#newsName").val();
			if(newsName == '' || newsName == null){
				$("#nname").text("不能为空");
				return false;
			}
			var content = $("#content").val();
			if(content == '' || content == null){
				$("#cont").text("不能为空");
				return false;
			}
		}
		function remname(){
			$("#nname").text("");
		}
		function remcont(){
			$("#cont").text("");
		}
	</script>
	
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">新闻添加</h3>
	  </div>
	  <div class="panel-body">
	  		<form class="form-horizontal" role="form" action="${pageContext.request.contextPath }/news/add" method="post" enctype="multipart/form-data" onsubmit="return check();">
            
            <div class="form-group">
              <label for="newsName" class="col-lg-2 control-label">新闻标题</label>
              <div class="col-lg-10">
                <input type="text" class="form-control" id="newsName" name="newsTitle" placeholder="新闻标题" onfocus="remname();">
            	<label id="nname" style="color: red"></label>
              </div>
            </div>
            
            
            <div class="form-group">
              <label for="content" class="col-lg-2 control-label">新闻正文</label>
              <div class="col-lg-10">
              	
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
			
             <textarea rows="3" cols="50" id="content" name="content" style="overflow:scroll; max-height:300px;border: 1px solid;height: 200px;" onfocus="remcont();"></textarea>
        	<br/><label id="cont" style="color: red"></label>
         </div>
     </div>
            
            
            <div class="form-group">
    			<label class="col-lg-2 control-label">缩略图</label>
                <div class="col-lg-10">
                        <div class="fileupload fileupload-new" data-provides="fileupload">
                            <div class="input-group">
                                 <div class="fileupload-new thumbnail" style="width: 130px; height: 139px;">
                                     <img src=" ${pageContext.request.contextPath}/images/nopic.gif"  alt=""/>
                                 </div>
                                 <div class="fileupload-preview fileupload-exists thumbnail"
                                                     style="max-width: 200px; max-height: 150px; line-height: 20px;">
                                 </div>
                                 <div>
                                    <span class="btn btn-default btn-file">
                                         <span class="fileupload-new">
                                         	<i class="fa fa-paper-clip"></i> 
                                         	选择文件
                                         </span>
                                         <span class="fileupload-exists">
                                         	<i class="fa fa-undo"></i>
											替换
										 </span>
                                         <input name="image" type="file" class="default"/>
                                   </span>
                                   <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">
                                   		<i class="fa fa-trash-o"></i>
                                   		移除
                                   </a>
                          		</div>
                            </div>
                       </div>
                 </div>
                	<font color='red'>${msg }</font>
				</div>
            
            
            
            
            
            <div class="form-group">
              <div class="col-lg-offset-2 col-lg-10">
               <button type="submit" class="btn btn-lg btn-success" style="padding: 15px 60px;border-radius: 0px;">添加</button>
              </div>
            </div>
          </form>
	  		
	  		
	  </div>
	</div>
	
</body>
</html>
