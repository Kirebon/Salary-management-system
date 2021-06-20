<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body style="text-align: center;">
<br />
    	<h3>欢迎来到工资管理系统，请登录</h3>
	<br />
	<br />
<form action="check_action.jsp" method="post">
	用户名：<input type="text" name="name"><br />
	密码：<input type="password" name="pwd"><br />
	<input type="submit" value="提交" id="bt" />
</form>
</body>
</html>