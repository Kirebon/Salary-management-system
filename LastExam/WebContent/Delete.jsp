<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>删除界面</title>
</head>
<body style="text-align: center;">
<form action="Delete_action.jsp">
	请输入要删除的用户的ID：<br>
	I D ：  <input type="text" name="Id" ><br>
	<input type="submit" value="确认删除">
    <a href="${pageContext.request.contextPath }/main.jsp">返回主页</a>
</form>
</body>
</html>