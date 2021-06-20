<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.itcast.itcaststore.dao.DBUtilsDao"%>
<%@ page import="cn.itcast.itcaststore.domain.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>验证</title>
</head>
<body style="text-align: center;">
	<%
		request.setCharacterEncoding("utf-8");
		DBUtilsDao dao = new DBUtilsDao();
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		
		User user = dao.find(name);
		int admin = user.getAdmin();
		String password = user.getPassword();
		
		if (pwd.equals(password) && admin == 1) {
			request.getSession().setAttribute("result", admin);
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
			rd.forward(request, response);
		} else if (pwd.equals(password) && admin == 2) {
			request.getSession().setAttribute("result", admin);
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
			rd.forward(request, response);
		} else {
			out.print("用户名或密码错误！");
		}
	%>
<a href="main.jsp?name=<%=name %>"></a> 
</body>
</html>