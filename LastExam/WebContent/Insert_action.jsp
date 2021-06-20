<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="cn.itcast.itcaststore.dao.DBUtilsDao"%>
<%@ page import="cn.itcast.itcaststore.domain.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>插入结果</title>
</head>
<body style="text-align: center;">
<% 
	request.setCharacterEncoding("utf-8");
	DBUtilsDao dao = new DBUtilsDao();
	
	int id = 0;
	int admin = 0;
	String id1 = request.getParameter("Id");
	try {
	    id = Integer.parseInt(id1);
	} catch (NumberFormatException e) {
	    e.printStackTrace();
	}
	String admin1 = request.getParameter("Admin");
	try {
	    admin = Integer.parseInt(admin1);
	} catch (NumberFormatException e) {
	    e.printStackTrace();
	}
	String name = request.getParameter("Name");
	String password = request.getParameter("Pwd");
	String gz = request.getParameter("GZ");
	User user = new User();
	user.setId(id);
	user.setAdmin(admin);
	user.setName(name);
	user.setPassword(password);
	user.setGongzi(gz);
	dao.insert(user);
	out.print("添加成功！");
%>
<a href="${pageContext.request.contextPath }/main.jsp">返回主页</a>
</body>
</html>