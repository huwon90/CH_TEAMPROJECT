<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="conPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${conPath}/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="${conPath}/css/style.min.css" rel="stylesheet"
	type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
<style>
/* #board_content table {
	width: 860px;
	height: 600px;
	border: 1px solid lightgray;
	margin: 0 auto;
	margin-top: 15px;
}

#board_content td {
	border: 1px solid lightgray;
}

#board_content .profile1 {
	width: 100px;
	height: 50px;
}

#board_content .id {
	width: 250px;
	height: 50px;
}

#board_content .name {
	height: 50px;
}

#board_content .date {
	height: 50px;
}

#board_content table .con .con1 {
	min-width: 700px;
	min-height: 400px;
}

#board_content table #file td {
	border: 1px solid lightgray;
}

#board_content .file1 {
	height: 50px;
}

#board_content .image1 {
	height: 50px;
}

#board_content #chk {
	height: 10px;
}
#board_banner{
    	width:200px;
    }
    
#board_banner table tr{
		margin:20px;
		padding :20px;
		text-align:center;
	}
#board_banner table tr td{
		margin:10px;
		padding :10px;
		text-align:center;
	}
 */
 #board_content {
	margin-left: 320px;
}

#board_content table {
	width: 860px;
	height: 600px;
	border: 1px solid lightgray;
	margin: 0 auto;
	margin-top: 15px;
}

#board_content td {
	border: 1px solid lightgray;
}

#board_content .profile1 {
	width: 100px;
	height: 50px;
}

#board_content .id {
	width: 250px;
	height: 50px;
}

#board_content .name {
	height: 50px;
}

#board_content .date {
	height: 50px;
}

#board_content table .con .con1 {
	min-width: 700px;
	min-height: 400px;
}

#board_content table #file td {
	border: 1px solid lightgray;
}

#board_content .file1 {
	height: 50px;
}

#board_content .image1 {
	height: 50px;
}

#board_content #chk {
	height: 10px;
}

#board_banner {
	width: 200px;
}

#board_banner table tr {
	margin: 20px;
	padding: 20px;
	text-align: center;
}

#board_banner table tr td {
	margin: 10px;
	padding: 10px;
	text-align: center;
}

#content_wrap {
	margin-top: 80px;
	width: 100%;
}

#content_wrap {
	width: 1500px;
	margin: 0 auto;
}

#content_wrap #sub_menu {
	position: fixed;
	top: 150px;
	border: 1px solid lightgray;
	width: 310px;
	min-height: 600px;
	padding: 5px;
	text-align: center;
	margin-left: 10px;
}

#content_wrap #sub_menu a {
	text-decoration: none;
	color: black;
}

#content_wrap #sub_menu a:hover {
	color: cadetblue;
}

#sub_menu table:first-child {
	margin: 0 auto;
	margin-bottom: 25px;
	width: 100%;
	text-align: center;
}

#sub_menu .invite {
	height: 110px;
}

#sub_menu table .invite button {
	background-color: cadetblue;
	border-radius: 5px;
	padding: 25px 100px;
	font-size: 1.3em;
	color: white;
	transition: 0.45s;
}

#sub_menu table .invite button:hover {
	background-color: darkseagreen;
}

#sub_menu table.invite button:active {
	background: red;
	color: gray;
}

#sub_menu table:nth-child(2) {
	width: 100%;
	margin: 50px 0;
}

#sub_menu #participant {
	border: 2px solid lightgray;
	width: 100%;
}

#sub_menu #participant th {
	text-align: left;
	border-bottom: 1px solid lightgray;
	color: gray;
}

#sub_menu table:first-child th {
	text-align: center;
	padding: 20px 5px;
	font-size: 1.1em;
	color: black;
}

#sub_menu #participant tr:first-child td {
	margin: 10px;
}

#participant caption {
	font-weight: 800;
	font-size: 1.1em;
	margin-bottom: 5px;
	color: black;
}

#participant td:first-child {
	width: 20%;
}

#participant td:last-child {
	text-align: left;
}

#content #main {
	border: 1px solid yellow;
	width: 890px;
	height: 100%;
	position: relative;
	left: 310px;
}

#content #title_1img a {
	margin-left: 10px;
	margin-right: 10px;
}

#participant span {
	background-color: palevioletred;
	width: 30px;
	height: 30px;
	display: table-cell;
	border-radius: 15px;
	text-shadow: 0 0 7px white;
	font-size: 18px;
}

#participant .team_leader {
	background-color: cadetblue;
}

#participant .team_m {
	text-align: left;
}

.ddaam {
	height: 15px;
}

#header_imsi {
	margin-left: 320px;
}
</style>
</head>
<body>
<jsp:include page="../member/headerloginOk.jsp" />

<div id="content_wrap">
		<div id="header_imsi"><jsp:include page="writeForm.jsp"></jsp:include></div>

		<div id="sub_menu">
			<table>
				<tr id="title_1">
					<th class="first_th" colspan="4">프로젝트 기능</th>
				</tr>
				<tr id="title_1img">
					<td><a href="#"><img src="image/file.png" alt="file"
							width="48" height="48" /></a></td>
					<td><a href="#"><img src="image/image.png" alt="image"
							width="52" height="52" /></a></td>
					<td><a href="#"><img src="image/cal.png" alt="cal"
							width="43" height="43 " /></a></td>
					<td><a href="#"><img src="image/phone.png" alt="phone"
							width="40" height="40" /></a></td>
				</tr>
				<tr>
					<td><a href="#">파일</a></td>
					<td><a href="#">이미지</a></td>
					<td><a href="#">일정</a></td>
					<td><a href="#">연락처</a></td>
				</tr>
			</table>
			<table>
				<tr>
					<td colspan="4" class="invite"><button class="invite_btn">초대하기</button></td>
				</tr>
			</table>

			<table id="participant">
				<caption>전체 참여자 ${memberCount }명</caption>
				<tr>
					<th colspan="3">팀장(1)</th>
				</tr>
				<c:forEach var="phone" items="${phoneList }">
					<c:if test="${phone.tmLeader==1 }">
						<tr>
							<td><span class="team_leader">${fn:substring(phone.mName, 0, 1)}</span></td>
							<td class="team_m">${phone.mName }</td>
							<td>${phone.mEmail }</td>
						</tr>
					</c:if>
				</c:forEach>
				
					<!-- <tr>
						<td class="ddaam"></td>
					</tr> -->
				
				<c:if test="${memberCount==1}">
				
					<tr>
						<th colspan="3">외부 참여자(0)</th>
					</tr>
				</c:if>
				<c:if test="${memberCount>1}">
					<tr>
						
						<th colspan="2">외부 참여자(${memberCount - 1 })</th>
					</tr>
				</c:if>
				<c:forEach var="phone" items="${phoneList }">
					<c:if test="${phone.tmLeader==0 }">
						<tr>
							<td><span>${fn:substring(phone.mName, 0, 1)}</span></td>
							<td class="team_m">${phone.mName }</td>
							<td>${phone.mEmail }</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>



		<div id="board_content">


			<c:forEach var="board" items="${list }">
				<c:if test="${board.bNo==1 }">
					<table class=table>
						<tr id="chk">
							<td colspan="3"><input type="button" value="수정"
								onclick="location.href='updateForm.do?bId=${board.bId}&tId=${param.tId }'"
								class="go_right" /> <input type="button" value="삭제"
								onclick="location.href='delete.do?bId=${board.bId}&tId=${param.tId }'" /></td>
						</tr>
						<tr id="profile">
							<td rowspan="2" class="profile1">프로필사진</td>
							<td class="id">${board.bId }</td>
							<td class="name">${board.mId }</td>
						<tr>
							<td colspan="2" class="date">${board.bDate }</td>
						</tr>
						<tr class="con">
							<td colspan="3" class="con1">${board.bContent }</td>
						</tr>
						
				<c:forEach var="fileList" items="${fileList }">
						<c:if test="${fileList.bId == board.bId }">
			
						<tr class="filelist">
							</tr>
							
		<script id="templateAttach" type="text/x-handlebars-template">

			<td data-src='{{fullName}}'>
 				<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  							<div class="mailbox-attachment-info">
							<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
							</span>
  							</div>
						</td>               
				</script>
							
							
				<script>

						var bId = ${board.bId};

						var template = Handlebars.compile($("#templateAttach").html());
						
						$.getJSON("getAttach/"+bId+".do",function(list){
							$(list).each(function(){
								
								var fileInfo = getFileInfo(this);
								
								var html = template(fileInfo);
								
								 $(".filelist").append(html);
							});
						});
						
						</script>
			
			
						</c:if>
				</c:forEach>




						</c:if>

						<c:if test="${board.bNo==2 }">
							<table>
								<tr id="chk">
									<td colspan="3"><input type="button" value="일정삭제"
										onclick="location.href='delete.do?bId=${board.bId}'"
										class="go_right" /></td>
								</tr>
								<tr id="profile">
									<td rowspan="2" class="profile1">프로필사진</td>
									<td class="id">${board.bId }</td>
									<td class="name">${board.mId }</td>
								<tr>
									<td colspan="2" class="date">${board.bDate }</td>
								</tr>
								<tr>
									<td>일정제목</td>
									<td colspan="2">${board.bTitle }</td>
								</tr>
								<tr>
									<td>일정</td>
									<td colspan="2"><fmt:parseDate value="${board.bStart }"
											pattern="yyyy-MM-dd HH:mm:ss" var="myDate"></fmt:parseDate> <fmt:parseDate
											value="${board.bEnd }" pattern="yyyy-MM-dd HH:mm:ss"
											var="myDate2"></fmt:parseDate> <fmt:formatDate
											value="${myDate }" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate
											value="${myDate2 }" pattern="yyyy-MM-dd" /></td>
								</tr>
								<tr>
									<td>장소</td>
									<td colspan="2">${board.bLoc }</td>
								</tr>
								<tr>
									<td>메모</td>
									<td colspan="2">${board.bMemo }</td>
								</tr>
								</c:if>
								<!-- 댓글 집어넣기 로직 -->
								<c:forEach var="re" items="${relist}">
									<c:if test="${re.bId == board.bId }">
										<tr>
											<td>${re.mId }</td>
											<td width="620">댓글 내용 : ${re.bRcontent } ${re.bRDate}</td>
											<td><button
													onclick="location.href='replydelte.do?brId=${re.brId}'">댓글삭제</button></td>
										</tr>
									</c:if>
								</c:forEach>
								<form action="replyinsert.do" method="post">
									<input type="hidden" name="mId" value="${mId}"> <input
										type="hidden" name="tId" value="${param.tId }"> <input
										type="hidden" name="bId" value="${board.bId }">

									<tr>
										<td colspan="2"><textarea name="bRcontent" cols="100"
												placeholder="댓글을 입력하세요" required="required"></textarea></td>
										<td><input type="submit" value="댓글쓰기"
											class="btn btn-primary"></td>
									</tr>
								</form>

							</table>

							</c:forEach>
							</div>
		</div>



</body>
</html>