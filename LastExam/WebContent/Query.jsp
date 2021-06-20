<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>查找单一用户</title>
</head>
<body>
	<form action="Query_action.jsp" method="post">
	请输入要查找的用户：<br />
	用户名：<input type="text" name="name"><br />
	<input type="submit" value="提交" id="bt" />
</form>
<a href="${pageContext.request.contextPath }/main.jsp">返回主页</a>
</body>
</html>