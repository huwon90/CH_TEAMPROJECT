<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
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
<c:if test="${param.msg=='참여팀아님' }">
	<script>
		alert('참여하시는 팀이 아닙니다. 참여신청을 해주세요!');
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
<title>BUS</title>
<link rel="stylesheet" href="css/Style.css">
<link rel="stylesheet" href="css/loginstyle.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script>
	$(document).ready(function() {
	    for (var i = 0; i < "${fn:length(listjoinTeam) }"; i++) {
			$('#ee' + i).click(function () {
			   $(this).siblings('.team_out').slideToggle();
			    $(this).css('cursor','pointer');
			});
	    }
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
<style>
.solid {
	float: left;
	margin-left: 30px;
	margin-top: 30px;
	margin-bottom: 30px;
	width: 150px;
	height: 100px;
	padding: 50px;
	border-radius: 2px;
	margin-left: 30px;
	list-style: none;
	line-height: 100px;
}

.solid a {
	text-decoration: none;
	color: black;
}

.solid:nth-child(8n-7) {
	background-color: #cfe0e8;
}

.solid:nth-child(8n-6) {
	background-color: #b7d7e8;
}

.solid:nth-child(8n-5) {
	background-color: #87bdd8;
}

.solid:nth-child(8n-4) {
	background-color: #daebe8;
}

.solid:nth-child(8n-3) {
	background-color: #bccad6;
}

.solid:nth-child(8n-2) {
	background-color: #8d9db6;
}

.solid:nth-child(8n-1) {
	background-color: #667292;
}

.solid:nth-child(8n) {
	background-color: #f1e3dd;
}

.solid:nth-child(9) {
	background-color: #999999;
}

#c2 span:HOVER {
	transition: 0.15s;
	color: #fff;
	cursor: pointer;
}
#c2 .solid a:HOVER {
	transition: 0.15s;
	color: #fff;
	cursor: pointer;
}
</style>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<jsp:include page="../member/headerloginOk.jsp" />


   <div id="c1">
      <ul>
         <li>내가 가입한 팀</li>
      </ul>
   </div>

   <div id="c2">
      <div class="dashed" onclick="insertTeam();">새 프로젝트 생성</div>
      <c:forEach var="jointeam" items="${listjoinTeam }" varStatus="status">
         <div class="solid">
            
            <a href="boardlist.do?tId=${jointeam.tId }&mId=${mId }">${jointeam.tName }</a> 
            <span id="ee${status.index }">▼</span>
            <ul class="team_out">
               <c:if test="${jointeam.tmLeader == 0 }">
                  <li><a href='outTeam.do?mId=${mId }&tId=${jointeam.tId }'">팀
                        탈퇴</a></li>
               </c:if>
               <c:if test="${jointeam.tmLeader == 1 }">
                  <li><a
                     href='removeTeam.do?tId=${jointeam.tId }&mId=${jointeam.mId}&tmLeader=${jointeam.tmLeader }'">팀
                        해체</a></li>
               </c:if>
            </ul>
         </div><!-- ee -->
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
               <a href="boardlist.do?tId=${team.tId }&mId=${mId }">${team.tName }</a>
               <div class="requestslide" onclick="location.href='requestTeam.do?mId=${mId }&tId=${team.tId }'">참여신청</div>
            </div>
      </c:forEach>
   </div>
</body>
</html>