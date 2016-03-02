<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<title>springmvc论坛登陆</title>
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="sui-container">
		<h4>${user.userName},欢迎您进入springmvc论坛，您当前的积分为${user.credits};
		    <button type="submit" class="sui-btn btn-warning"><a href="main">全部</a></button>
			<button type="submit" class="sui-btn btn-warning"><a href="new">新增</a></button>
			<button type="submit" class="sui-btn btn-warning"><a href="loginOut">退出</a></button>			
			<br>
		
	</div>
	<div class="sui-container">
		<form class="sui-form form-search" action="searchName" method="post">
			<input type="text" class="input-medium search-query" name="userName">
			<button type="submit" class="sui-btn btn-info">查询</button>
		</form>
	</div>
	<div class="sui-container">
		<table class="sui-table table-primary">
			<thead>
				<tr>
					<th>编号</th>
					<th>用户名</th>
					<th>密码</th>
					<th>积分</th>
					<th>最后访问时间</th>
					<th>访问IP</th>
					<th>管理</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="oneuser" items="${users}">
					<tr>
						<td>${oneuser.user_id}</td>
						<td>${oneuser.user_name}</td>
						<td>${oneuser.password}</td>
						<td>${oneuser.credits}</td>
						<td>${oneuser.last_visit}</td>
						<td>${oneuser.last_ip}</td>
						<td>
							<div class="sui-btn-group">
								<button class="sui-btn btn-danger"><a href="deleteUser/${oneuser.user_id}">删除</a></button>
								<button class="sui-btn btn-success"><a href="updateUser/${oneuser.user_id}">修改</a></button>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
</html>