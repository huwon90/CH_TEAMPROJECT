<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
		<c:if test="${msg!=null }">${msg }</c:if>
		<form action="login.do" method="post">
		<table>
			<tr>
				<th>ID</th>
				<td>
					<input type="text" name="mId" value="<c:if test='${mId!=null }'>${mId }</c:if>" required="required">
				</td>
			</tr>
			<tr>
				<th>PW</th>
				<td>
					<input type="password" name="mPw" required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인">
					<input type="button" value="회원가입" onclick="location.href='joinMemberForm.do'">
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>