<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Style.css">
<link rel="stylesheet" href="css/loginstyle.css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="../member/header.jsp" />
	<div id="c1">
		<ul>
			<li>팀 이름 검색 결과</li>
		</ul>
	</div>
	<div id="c4">
		<c:forEach var="list" items="${searchlist }">
			<div class="dashed2">
				${list.tName }
				<button
					onclick="location.href='requestTeam.do?mId=${mId }&tId=${list.tId }'">참여신청</button>
			</div>
		</c:forEach>
	</div>
	
</body>
</html>