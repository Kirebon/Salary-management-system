<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="cn.itcast.itcaststore.dao.DBUtilsDao"%>
<%@ page import="cn.itcast.itcaststore.domain.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>删除结果</title>
</head>
<body style="text-align: center;">
	<%
		DBUtilsDao dao = new DBUtilsDao();

		int id = 0;
		int admin = 0;
		String id1 = request.getParameter("Id");
		try {
			id = Integer.parseInt(id1);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		dao.delete(id);
		out.print("删除成功！");
	%>
<a href="${pageContext.request.contextPath }/main.jsp">返回主页</a>
</body>
</html>