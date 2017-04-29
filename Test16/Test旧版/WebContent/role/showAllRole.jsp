<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showAllRole.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	角色管理
    	<hr>
    	<table>
    		<tr><td>角色名字</td><td>操作</td></tr>
    		<c:forEach var="r" items="${list}">
    		<tr><td>${r.roleName }</td><td><a href="deleteRole?role.rid=${r.rid}">删除</a>|修改|<a href="setRoleModules?role.rid=${r.rid }">设置权限</a></td></tr>
    		</c:forEach>
    	</table>
  </body>
</html>
