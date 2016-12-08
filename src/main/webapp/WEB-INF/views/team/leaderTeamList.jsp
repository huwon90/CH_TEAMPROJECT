<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../member/header.jsp" />
	<div id="c1">
		<ul>
			<li>참여요청 목록</li>
		</ul>
	</div>
	<div id="c4">
		<c:if test="${empty leaderTeamList}">
			<div class="dashed2">
				생성한 팀이 없습니다
			</div>
		</c:if>
		<c:forEach var="team" items="${leaderTeamList }">
			<div class="dashed2">
				${team.tName }
				<button onclick="location.href='listRequest.do?tId=${team.tId }&leaderId=${param.mId }'">참여요청리스트</button>
			</div>
		</c:forEach>
	</div>

<%-- 	참여요청 목록
	<table border="1">
		<tr><th>팀번호</th><th>팀이름</th><th></th></tr>
		<c:if test="${empty leaderTeamList}">
			<tr><td colspan="2">생성한 팀이 없습니다</td></tr>
		</c:if>
		<c:forEach var="team" items="${leaderTeamList }">
			<tr><td>${team.tId }</td>
				<td>${team.tName }</td>
				<td><button onclick="location.href='listRequest.do?tId=${team.tId }&leaderId=${param.mId }'">참여요청리스트</button></td></tr>
		</c:forEach>
	</table>
	<button onclick="location.href='listTeam.do?mId=${mId }'">홈화면으로</button> --%>
</body>
</html>