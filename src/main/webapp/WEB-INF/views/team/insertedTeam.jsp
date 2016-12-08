<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>팀이 생성되었습니다.</h3>
<table>
	<tr><th>팀장ID</th><td>${teamTmConn.mId }</td></tr>
	<tr><th>팀번호</th><td>${teamTmConn.tId }</td></tr>
	<tr><th>팀이름</th><td>${teamTmConn.tName }</td></tr>
	<tr><td colspan="2"><button onclick="location.href='listTeam.do?mId=${teamTmConn.mId }'">홈화면으로</button></td></tr>
</table>
</body>
</html>