<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="logout.do" method="POST">
		<input type="button" value="팀 검색" onclick="location.href='searchForm.do'">
		<input type="button" value="아이디찾기" onclick="location.href='findIdForm.do'">
		<input type="submit" value="로그인">
		<input type="button" value="회원가입" onclick="location.href='joinMemberForm.do'">
		<input type="button" value="게시판" onclick="location.href='boardlist.do?tId=1'">
		<input type="button" value="테스트" onclick="location.href='test.do'">
	</form>
</body>
</html>