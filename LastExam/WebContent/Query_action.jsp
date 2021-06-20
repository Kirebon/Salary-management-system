<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="cn.itcast.itcaststore.dao.DBUtilsDao"%>
<%@ page import="cn.itcast.itcaststore.domain.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>查找结果界面</title>
</head>
<body style="text-align: center;">
<pre>
	查找到用户：
	<%
	request.setCharacterEncoding("utf-8");
	DBUtilsDao dao = new DBUtilsDao();
	String name = request.getParameter("name");
	
	User user = dao.find(name);
	
	out.println("I D  |    权限     |   姓名   |  密码   |  工资");
	out.println("         "+ user.getId() + "   | " + user.getAdmin() + "   | " + user.getName() + "   |  " + user.getPassword()+ "   |  " + user.getGongzi());
	%>
<a href="${pageContext.request.contextPath }/main.jsp">返回主页</a>
</pre>
</body>
</html>