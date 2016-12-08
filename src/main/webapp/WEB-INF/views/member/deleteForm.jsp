<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원 탈퇴를 위해 아이디와 비밀번호를 다시 입력해주세요</h3>
<form action="deleteMember.do" method="post" name="frm">
<table>
	<tr>
		<th>ID</th>
			<td>
				<input type="text" name="mId" required="required">
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
			<input type="submit" value="회원탈퇴">
			<input type="reset" value="취소">
	</tr>
</table>
</form>
</body>
</html>