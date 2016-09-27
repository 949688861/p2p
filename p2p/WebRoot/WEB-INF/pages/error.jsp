<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>error</title>
		<link href=" ${pageContext.request.contextPath}/css/css.css"
			rel="stylesheet" type="text/css" />
		<script type="text/javascript"
			src=" ${pageContext.request.contextPath}/js/jquery-1.4.2.min.js">
</script>

	</head>
	<body style="padding: 5px 10px;">
			<h3 style="color:red ">${msg }</h3>
	</body>
</html>
