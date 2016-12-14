<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:if test="${param.msg=='거절성공'}">
	<script>
		alert('프로젝트 초대가 거절되었습니다.');
	</script>
</c:if>
<c:if test="${param.msg=='초대 승낙성공'}">
	<script>
		alert('프로젝트 초대를 승낙하였습니다.');
	</script>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../member/headerloginOk.jsp" />
	<div id="c5">
		<ul>
			<li>초대받은 프로젝트 목록</li>
		</ul>
	</div>
	
	<div id="c6">
		<table>
			<tr><th>팀번호</th><th>팀이름</th><th>승인</th></th>
			<c:if test="${empty invited}">
				<tr><td colspan="3">초대받은 팀이 없습니다</td></tr>
			</c:if>
			<c:forEach var="inList" items="${invited }">
				<c:if test="${inList.tmOk ==2 }">
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
	<div id="c1">
		<ul>
			<li>참여요청 목록</li>
		</ul>
	</div>
	<div id="c4">
		<table>
		<tr><th>회원아이디</th><th>회원이름</th><th>회원이메일</th><th>팀 번호</th><th>승인</th></tr>
		<c:if test="${empty listRequest}">
			<tr><td colspan="5">참여요청이 없습니다</td></tr>
		</c:if>
		<c:forEach var="member" items="${listRequest }">
			<tr><td>${member.mId }</td>
				<td>${member.mName }</td>
				<td>${member.mEmail }</td>
				<td>${member.tId }</td>
				<td><button onclick="location.href='okTeam.do?mId=${member.mId }&tId=${member.tId }&leaderId=${mId }'">Y</button>  
					<button onclick="location.href='noTeam.do?mId=${member.mId }&tId=${member.tId }&leaderId=${mId }'">N</button></td></tr>
		</c:forEach> 
		</table>
	</div>
	
	
	
</body>
</html>