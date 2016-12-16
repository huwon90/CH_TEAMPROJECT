<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		for (var i = 0; i < "${fn:length(searchlist) }"; i++) {
            $('#slidebottom' + i).mouseenter(function () {
                $(this).children('.requestslide').slideToggle();
                $(this).css('cursor','pointer');
            });

            $('#slidebottom' + i).mouseleave(function () {
                $(this).children('.requestslide').slideToggle();
            });
        }
	});
	
</script>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<jsp:include page="../member/headerloginOk.jsp" />
	<div id="c1">
		<ul>
			<li>팀 이름 검색 결과</li>
			<li><br>' ${param.tName } '를 검색한 결과</li>
		</ul>
	</div>
	<div id="c4">
		<c:forEach var="list" items="${searchlist }" varStatus="status">
			<div id="slidebottom${status.index }" class="dashed2">
				<a href="boardlist.do?tId=${list.tId }&mId=${mId }">${list.tName }</a>
               <div class="requestslide" onclick="location.href='requestTeam.do?mId=${mId }&tId=${list.tId }'">참여신청</div>
            </div>
		</c:forEach>
	</div>
</body>
</html>