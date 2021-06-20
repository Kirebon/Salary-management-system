<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>查询所有界面</title>
</head>
<body style="text-align: center;">
	<pre>
	<%
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = null;
		try {
			//1．注册数据库的驱动
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2.通过 DriverManager获取数据库连接
			String url = "jdbc:mysql://localhost:3306/jdbc?serverTimezone=GMT%2B8";
			String username = "root";
			String password = "123456";
			conn = DriverManager.getConnection(url, username, password);
			//3.通过Connection对象获取Statement对象
			stmt = conn.createStatement();
			//4.使用Statement执行sQL语句。
			String sql = "select * from user";
			rs = stmt.executeQuery(sql);
			// 5．操作ResultSet结果集
			out.println("I D  |    权限     |   姓名   |  密码    |  工资");
			while (rs.next()) {
				int id = rs.getInt("id");//通过列名获取指定字段的值
				String name = rs.getString("name");
				String psw = rs.getString("password");
				String gz = rs.getString("gongzi");
				int a = 0;
				String adm1 = rs.getString("admin");
				try {
				    a = Integer.parseInt(adm1);
				} catch (NumberFormatException e) {
				    e.printStackTrace();
				}
				
				if(a == 1){
					adm1 = "管理员用户";
				}else{
					adm1 = " 普通用户 ";
				}
				out.println("         "+ id + "   | " + adm1 + "   | " + name + "   |  " + psw + "   |  " + gz);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			//16.回收数据库资源
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				rs = null;
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				stmt = null;
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				conn = null;
			}
		}
	%>
	</pre>
<a href="${pageContext.request.contextPath }/main.jsp">返回主页</a>
</body>
</html>