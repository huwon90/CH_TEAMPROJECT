<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:if test="${param.msg=='가입승인성공'}">
	<script>alert('가입이 승인되었습니다');</script>
</c:if>
<c:if test="${param.msg=='승인거부성공'}">
	<script>alert('가입 승인을 거부했습니다');</script>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	팀 참여 요청 목록
	<table border="1">
		<tr><th>회원아이디</th><th>회원이름</th><th>회원이메일</th><th>팀ID</th><th>승인</th></tr>
		<c:forEach var="member" items="${listRequest }">
			<tr><td>${member.mId }</td>
				<td>${member.mName }</td>
				<td>${member.mEmail }</td>
				<td>${member.tId }</td>
				<td><button onclick="location.href='okTeam.do?mId=${member.mId }&tId=${member.tId }'">Y</button>  
					<button onclick="location.href='noTeam.do?mId=${member.mId }&tId=${member.tId }'">N</button></td></tr>
		</c:forEach>
		
	</table>
	<button onclick="location.href='leaderTeamList.do?mId=${mId }'">이전으로</button>
	<button onclick="location.href='listTeam.do?mId=${mId}'">홈화면으로</button>
</body>
</html>