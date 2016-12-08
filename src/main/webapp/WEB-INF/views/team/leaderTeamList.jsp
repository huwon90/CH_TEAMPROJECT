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
<<<<<<< HEAD
<<<<<<< HEAD
			<li>초대받은 프로젝트 목록</li>
		</ul>
	</div>
	
	<div id="c2">
		<table border="1">
			<tr><th>팀번호</th><th>팀이름</th><th>승인</th></tr>
			<c:if test="${empty invited}">
				<tr><td colspan="3">초대받은 팀이 없습니다</td></tr>
			</c:if>
			<c:forEach var="inList" items="${invited }">
				<c:if test="${inList.tmOk ==0 }">
				<tr>
					<td>${inList.tId }</td>
					<td>${inList.tName }</td>
					<td><button onclick="location.href='invitedOk.do?mId=${param.mId }&tId=${inList.tId }'">Y</button>
						<button onclick="location.href='invitedNo.do?mId=${param.mId }&tId=${inList.tId }'">N</button>
					</td>	
				</tr>
				</c:if>
			</c:forEach>
		</table>
	</div>
	
	
	<div id="c3">
		<ul>
=======
>>>>>>> 55cacded731ce211b0932dee5eb0a4f667c31a58
=======
>>>>>>> 4e994a27f83189ee24e8b5851a204ed585e729b9
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
	
	
	
</body>
</html>