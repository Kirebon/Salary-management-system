<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加界面</title>
</head>
<body style="text-align: center;">
	<form action="Insert_action.jsp">
		请输入要添加的数据（不可为空！）<br> I D ： <input type="text" name="Id"><br>
		权限：<input type="text" name="Admin"><br> 姓名：<input
			type="text" name="Name"><br> 密码：<input type="text"
			name="Pwd"><br> 工资：<input type="text"
			name="GZ"><br> <input type="submit" value="确认添加">
		<a href="${pageContext.request.contextPath }/main.jsp">返回主页</a>
	</form>
</body>
</html>