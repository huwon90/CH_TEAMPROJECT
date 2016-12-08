<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script>
<<<<<<< HEAD
	$(document).ready(function() {
		for (var i = 0; i < "${fn:length(listjoinTeam) }"; i++) {
=======
   $(document).ready(function() {
      for (var i = 0; i < "${fn:length(listjoinTeam) }"; i++) {
>>>>>>> face97c5e35fe2810335766c00b5bf6a6c03127c
            $('#ee' + i).click(function () {
               $(this).children('.team_out').slideToggle();
                $(this).css('cursor','pointer');
            });
<<<<<<< HEAD
		}
	}); 
=======
      }
   }); 
>>>>>>> face97c5e35fe2810335766c00b5bf6a6c03127c

   
    $(document).ready(function () {
        for (var i = 0; i < "${fn:length(listTeam) }"; i++) {
            $('#slidebottom' + i).mouseenter(function () {
                $(this).children('.requestslide').slideToggle();
                $(this).css('cursor','pointer');
            });

            $('#slidebottom' + i).mouseleave(function () {
                $(this).children('.requestslide').slideToggle();
            });
        }
    });

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

<<<<<<< HEAD
	<div id="c1">
		<ul>
			<li>내가 가입한 팀</li>
		</ul>
	</div>

	<div id="c2">
		<div class="dashed" onclick="insertTeam();">새 프로젝트 생성</div>
		<%--  <c:set var="index" value="0"></c:set> --%>
		<c:forEach var="jointeam" items="${listjoinTeam }" varStatus="status">
			<div class="dashed" id="ee${status.index }">
				<%-- <a href="mainpage.do?tId=${jointeam.tId }&mId=${jointeam.mId}">팀원연락처</a> --%>
				<a href="boardlist.do?tId=${jointeam.tId }">${jointeam.tName }</a> 
				<span>▼</span>
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
			</div><!-- ee -->
			<%-- <c:set var="index" value="${index +1 }"></c:set> --%>
		</c:forEach>

	</div>

	<div id="c3">
		<ul>
			<li>전체 팀 목록</li>
		</ul>
	</div>
	<div id="c4">
		<c:forEach var="team" items="${listTeam }" varStatus="status">
				<div id="slidebottom${status.index }" class="dashed2">
					<a href="boardlist.do?tId=${team.tId }">${team.tName }</a>
					<div class="requestslide" onclick="location.href='requestTeam.do?mId=${mId }&tId=${team.tId }'">참여신청</div>
				</div>
		</c:forEach>
	</div>
	

=======
   <div id="c1">
      <ul>
         <li>내가 가입한 팀</li>
      </ul>
   </div>
>>>>>>> face97c5e35fe2810335766c00b5bf6a6c03127c

   <div id="c2">
      <div class="dashed" onclick="insertTeam();">새 프로젝트 생성</div>
      <%--  <c:set var="index" value="0"></c:set> --%>
      <c:forEach var="jointeam" items="${listjoinTeam }" varStatus="status">
         <div class="dashed" id="ee${status.index }">
            <%-- <a href="mainpage.do?tId=${jointeam.tId }&mId=${jointeam.mId}">팀원연락처</a> --%>
            <a href="boardlist.do?tId=${jointeam.tId }">${jointeam.tName }</a> 
            <span>▼</span>
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
         </div><!-- ee -->
         <%-- <c:set var="index" value="${index +1 }"></c:set> --%>
      </c:forEach>

   </div>

   <div id="c3">
      <ul>
         <li>전체 팀 목록</li>
         <li><button onclick="location.href='listMember.do?mId=${mId}'">회원가입된 멤버목록</button></li>
      </ul>
   </div>
   <div id="c4">
      <c:forEach var="team" items="${listTeam }" varStatus="status">
            <div id="slidebottom${status.index }" class="dashed2">
               <a href="boardlist.do?tId=${team.tId }">${team.tName }</a>
               <div class="requestslide" onclick="location.href='requestTeam.do?mId=${mId }&tId=${team.tId }'">참여신청</div>
            </div>
      </c:forEach>
   </div>
</body>
</html>