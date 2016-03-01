<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>springmvc论坛</title>
	</head>
	<body>
		${user.userName},欢迎您进入springmvc论坛，您当前的积分为${user.credits};
	</body>
</html>