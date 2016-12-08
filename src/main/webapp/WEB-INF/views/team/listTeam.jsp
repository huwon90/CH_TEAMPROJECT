<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:if test="${param.msg=='가입승인대기중'}">
	<script>
		alert('팀 가입이 요청되었습니다');
	</script>
</c:if>
<c:if test="${param.msg=='이미가입요청'}">
	<script>
		alert('이미 가입이 요청된 팀입니다');
	</script>
</c:if>
<c:if test="${param.msg=='이미가입'}">
	<script>
		alert('이미 가입이 완료된 팀입니다');
	</script>
</c:if>
<c:if test="${param.msg=='팀 탈퇴 성공'}">
	<script>
		alert('팀이 탈퇴되었습니다');
	</script>
</c:if>
<c:if test="${param.msg=='팀해체성공' }">
	<script>
		alert('팀이 해체되었습니다.');
	</script>
</c:if>
<%
	if (session.getAttribute("ValidMem") == null) {
		response.sendRedirect("joinOk.do");
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>Team Project</title>
<link rel="stylesheet" href="css/Style.css">
<link rel="stylesheet" href="css/loginstyle.css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#c2 .dashed").click(function() {
			var submenu = $(".team_out");
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();
			}
		});
	});

	/* $(document).ready(function(){
		$("#c2 .dashed").each(function(index){
			$(this).click(function(){
				var submenu = $(".team_out");
	            if (submenu.is(":visible")) {
	                submenu.slideUp();
	            } else {
	                submenu.slideDown();
	            }
			})
		});
	}); */

	/* $(document).ready(function () {
	    $("dashed0").click(function () {
	        var submenu = $(".team_out");
	        if (submenu.is(":visible")) {
	            submenu.slideUp();
	        } else {
	            submenu.slideDown();
	        }
	    });
	}); */

	function insertTeam() {
		var tName = prompt('생성할 팀의 이름을 입력하세요', '팀 이름');
		if (tName) {
			location.href = 'insertTeam.do?mId=${mId }&tName=' + tName;
		}
	}
</script>
</head>
<body>

<jsp:include page="../member/header.jsp" />

	<div id="c1">
		<ul>
			<li>내가 가입한 팀</li>
		</ul>
	</div>

	<div id="c2">
		<div class="dashed" onclick="insertTeam();">새 프로젝트 생성</div>
		<%--  <c:set var="index" value="0"></c:set> --%>
		<c:forEach var="jointeam" items="${listjoinTeam }">
			<div class="dashed">
				<%-- <a href="mainpage.do?tId=${jointeam.tId }&mId=${jointeam.mId}">팀원연락처</a> --%>
				<a href="boardlist.do?tId=${jointeam.tId }">${jointeam.tName }</a> ▼
				<ul class="team_out">
					<c:if test="${jointeam.tmLeader == 0 }">
						<li><a href='outTeam.do?mId=${mId }&tId=${jointeam.tId }'">팀
								탈퇴</a></li>
					</c:if>
					<c:if test="${jointeam.tmLeader == 1 }">
						<li><a
							href='removeTeam.do?tId=${jointeam.tId }&mId=${jointeam.mId}&tmLeader=${jointeam.tmLeader }'">팀
								해체</a></li>
						<%-- <li><a href="leaderTeamList.do?mId=${mId }">참여요청 목록</a></li> --%>
					</c:if>
				</ul>
			</div>
			<%-- <c:set var="index" value="${index +1 }"></c:set> --%>
		</c:forEach>

	</div>

	<div id="c3">
		<ul>
			<li>전체 팀 목록</li>
		</ul>
	</div>
	<div id="c4">
		<c:forEach var="team" items="${listTeam }">
			<div class="dashed2">
				<a href="boardlist.do?tId=${team.tId }">${team.tName }</a>
				<button
					onclick="location.href='requestTeam.do?mId=${mId }&tId=${team.tId }'">참여신청</button>
			</div>
		</c:forEach>
	</div>



	<%-- 팀목록
	<table border="1">
		<tr><th>팀번호</th><th>팀이름</th><th>참여버튼</th></tr>
		<c:forEach var="team" items="${listTeam }">
			<tr><td>${team.tId }
				<td>${team.tName }</td>
				<td><button onclick="location.href='requestTeam.do?mId=${mId }&tId=${team.tId }'">참여</button></td></tr>
		</c:forEach>
	</table> --%>

	<%-- 내가 참여한 팀목록
	<table border="1">
		<tr><th>팀번호</th><th>팀이름</th><th>탈퇴</th><th>팀장여부</th><th>팀해체</th><th>팀선택</th></tr>
		<c:if test="${empty listjoinTeam}">
			<tr><td colspan="6">참여하고 있는 팀이 없습니다</td></tr>
		</c:if>
		<c:forEach var="jointeam" items="${listjoinTeam }">
			<tr><td>${jointeam.tId }
				<td>${jointeam.tName }</td>
				<td>
					<c:if test="${jointeam.tmLeader == 0 }">
						<button onclick="location.href='outTeam.do?mId=${mId }&tId=${jointeam.tId }'">탈퇴</button>
					</c:if>
				</td>
				<td>
					<c:if test="${jointeam.tmLeader == 1 }">Y</c:if>
					<c:if test="${jointeam.tmLeader == 0 }">N</c:if>
				</td>
				<td>
					<c:if test="${jointeam.tmLeader == 1 }">
						<button onclick="location.href='removeTeam.do?tId=${jointeam.tId }&mId=${jointeam.mId}&tmLeader=${jointeam.tmLeader }'">팀해체</button>
					</c:if>
				</td>
				<td>
					<a href="mainpage.do?tId=${jointeam.tId }&mId=${jointeam.mId}">팀선택</a>
				</td>
			</tr>
		</c:forEach>
	</table> --%>
	<%-- <a href="insertTeamForm.do?mId=${mId }">팀생성</a> <br>
	<a href="leaderTeamList.do?mId=${mId }">팀 참여요청리스트</a> <br>
	<button onclick="location.href='index.jsp'">홈화면으로</button> --%>
</body>
</html>