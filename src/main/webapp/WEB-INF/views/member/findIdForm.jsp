<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<script src="${conPath}/js/chk.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="findId.do" method="post" name="frm">
			<table>
				<caption>아이디찾기화면</caption>
				<c:if test="${msg!=null }">${msg }</c:if>
				<tr>
					<th>이메일</th>
					<td>
						<input type="email" name="mEmail" required="required">
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<select name="mPhone1" required="required">
							<option>010</option>
							<option>016</option>
							<option>017</option>
							<option>018</option>
							<option>019</option>
						</select>
						-
						<input type="tel" name="mPhone2" maxlength="4" required="required">
						-
						<input type="tel" name="mPhone3" maxlength="4" required="required">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="아이디찾기" onclick="findIdInfoConfirm()">
						<input type="button" value="회원가입" onclick="location.href='joinMemberForm.do'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>