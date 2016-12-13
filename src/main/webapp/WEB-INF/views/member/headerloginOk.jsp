<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script>
$(document).ready(function() {
	$("#header .mypage").click(function() {
		var submenu = $(".mypage_list");
		if (submenu.is(":visible")) {
			submenu.slideUp();
		} else {
			submenu.slideDown();
		}
	});
});
</script>
<style>
.noooooo {
	text-align: center;
	margin-top: 22px;
	margin-right: 20px;
	margin-left: 0px;
	position: relative;
	display: inline-block;
	overflow: hidden; /* 불필요한 부분 가리기 */
	padding: 1px;

}

.alert1 {
	position: relative;
	display: inline-block;
	overflow: hidden; /* 불필요한 부분 가리기 */
	padding: 1px;
}

.alert1:after {
	position: absolute;
	padding: 3px;
	z-index: 99;
	background: red;
	content: "${requestCount}";
	text-align: center;
	font-size: 2px;
	color: white;
	border-radius: 50px;
	height: 6px;
	line-height: 6px;
	top: 15px;
	left: 20px;
}
</style>
<title>BUS</title>
</head>
<body>
	<div id="header">
		<div id="header2">
			<ul id="logo">
				<li onclick="location.href='listTeam.do?mId=${mId }'"><img src="image/4.png" alt="로고2" width="70" height="70" /></li>
                <li class="bus_text" onclick="location.href='listTeam.do?mId=${mId }'"><font color="#9FB7CF" size="7">B</font>US</li>
				<%-- <li onclick="location.href='listTeam.do?mId=${mId }'"><img src="image/4.png" alt="로고2" width="50" height="50"/>
					Team Project</li> --%>
					
			</ul>
			<form action="search.do" id="frm">
			<ul id="search">
                <li><input type="hidden" name="mId" value="${mId }">
                	<input type="text" name="tName" alt="검색창" class="input_text" /></li>
                <li><a href="javascript:document.getElementById('frm').submit();"><img src="image/search.png" alt="검색" width="30" height="30" /></a></li>
            </ul>
            </form>
			<ul id="text">
				<li><a href="#">${mName }</a></li>
				<c:if test="${requestCount!=0 }">
					<li class="alert1"><img src="image/alarm.png" alt="로고2"
						width="30" height="30"
						onclick="location.href='leaderTeamList.do?mId=${mId }'" />
				</c:if>
				<c:if test="${requestCount==0 }">
					<li class="noooooo"><img src="image/alarm.png" alt="로고2"
						width="30" height="30"
						onclick="location.href='leaderTeamList.do?mId=${mId }'" />
				</c:if>
				<li class="mypage">▼
					<ul class="mypage_list">
						<li><a href="detailMemberForm.do?mId=${mId }">정보보기</a></li>
						<li><a href="logout.do">로그아웃</a></li>
					</ul>
				</li>

			</ul>
		</div>
	</div>
</body>
</html>