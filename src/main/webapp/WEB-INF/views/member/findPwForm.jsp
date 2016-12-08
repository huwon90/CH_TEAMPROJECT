<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<script src="${conPath }/js/chk.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="findPw.do" method="post" name="frm">
			<table>
				<caption>비밀번호찾기화면</caption>
				<c:if test="${msg!=null }">${msg }</c:if>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="mId" required="required">
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
						<input type="email" name="mEmail" required="required">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="메일보내기" onclick="findPwInfoConfirm()">
						<input type="button" value="회원가입" onclick="location.href='joinMemberForm.do'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>