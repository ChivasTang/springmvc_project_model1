<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head><title>springmvc论坛登陆</title></head>
	<body>
		<c:if test="${!empty error}">
			<font color="red"><c:out value="${error}"></c:out></font>
		</c:if>
		<form action="<c:url value="/loginCheck"/>" method="post">
			用户名：
			<input type="text" name="userName">
			<br>
			密 码：
			<input type="password" name="password">
			<br>
			<input type="submit" value="登陆">
			<input type="reset" value="重置">
		</form>
	</body>
</html>