<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>显示登录的用户信息</title>
</head>
<body style="text-align: center;">
<%  
        //获得number  
        String str=request.getParameter("name");   
 %>
    <br />
    	<h3>欢迎你，<%out.print(str); %></h3>
	<br />
	<br />

	
	<c:set var="user" value="${result}"/>
	<c:if test="${user==1 }">
		<%out.print("您是管理员用户！"); %><br />
		<a href="${pageContext.request.contextPath }/Insert.jsp">添加记录</a>
		<a href="${pageContext.request.contextPath }/Delete.jsp">删除记录</a>
		<a href="${pageContext.request.contextPath }/QueryAll.jsp">查询所有记录</a>
		<a href="${pageContext.request.contextPath }/Query.jsp">查询单一记录</a>
		<a href="${pageContext.request.contextPath }/Update.jsp">修改记录</a>
	</c:if>
	<c:if test="${user==2 }">
		<%out.print("您是普通用户！"); %><br />
		<a href="${pageContext.request.contextPath }/QueryAll.jsp">查询所有记录</a>
		<a href="${pageContext.request.contextPath }/Query.jsp">查询单一记录</a>
	</c:if>
	<br />

	<a href="${pageContext.request.contextPath }/Login.jsp">注销</a>
	<br />
</body>
</html>