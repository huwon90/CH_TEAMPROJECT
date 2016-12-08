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
/* 	$(document).ready(function() {
		$("#c2 .dashed").click(function() {
			var submenu = $(".team_out");
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();
			}
		});
	}); */
	$(document).ready(function() {
		for (var i = 0; i < "${fn:length(listjoinTeam) }"; i++) {
/* 			$('#ee'+i).click(function() {
				var submenu = $(this).sibling();
				if (submenu.is(":visible")) {
					submenu.slideUp();
				} else {
					submenu.slideDown();
				}
			}); */
			
			
			
            $('#ee' + i).click(function () {
                $(this).children().slideToggle();
                $(this).css('cursor','pointer');
            });
			
			
		}
	}); 

	
    $(document).ready(function () {
        for (var i = 0; i < "${fn:length(listTeam) }"; i++) {

            $('#slidebottom' + i).mouseenter(function () {
                $(this).children().slideToggle();
                $(this).css('cursor','pointer');
            });

            $('#slidebottom' + i).mouseleave(function () {
                $(this).children().slideToggle();
            });
        }
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
<<<<<<< HEAD
	$(document).ready(function () {
        $('#slidebottom').hover(function () {
            $(".requestslide").slideToggle();
        });
    });

=======
>>>>>>> 4e994a27f83189ee24e8b5851a204ed585e729b9
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
<<<<<<< HEAD
		<c:forEach var="jointeam" items="${listjoinTeam }">
			<div class="dashed">
=======
		<%--  <c:set var="index" value="0"></c:set> --%>
		<c:forEach var="jointeam" items="${listjoinTeam }" varStatus="status">
			<div class="dashed"  id="ee${status.index }">
>>>>>>> 4e994a27f83189ee24e8b5851a204ed585e729b9
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
					</c:if>
				</ul>
<<<<<<< HEAD
			</div>
=======
			</div><!-- ee -->
			<%-- <c:set var="index" value="${index +1 }"></c:set> --%>
>>>>>>> 4e994a27f83189ee24e8b5851a204ed585e729b9
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

</body>
</html>