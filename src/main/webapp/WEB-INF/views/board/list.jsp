<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${conPath}/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="${conPath}/css/style.min.css" rel="stylesheet"
	type="text/css">
<style>
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

</style>
</head>
<body>
<jsp:include page="../member/header.jsp" />

	<jsp:include page="writeForm.jsp"></jsp:include>
	
	<div id="board_banner">
		<table border="1">
			<caption>참여인원</caption>
			<tr><th>직책</th><th>회원ID</th><th>회원이름</th><th>연락처</th></tr>
			<c:forEach var="phone" items="${phoneList }">
				<tr>
					<c:if test="${phone.tmLeader==1 }"><td>팀장</td></c:if>
					<c:if test="${phone.tmLeader==0 }"><td>팀원</td></c:if>
					<td>${phone.mId}</td>
					<td>${phone.mName }</td>
					<td>${phone.mPhone1 }-${phone.mPhone2 }-${phone.mPhone3 }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<div id="board_content">
		<c:forEach var="board" items="${list }">
			<c:if test="${board.bNo==1 }">
				<table class=table>
					<tr id="chk">
						<td colspan="3"><input type="button" value="수정" onclick="location.href='updateForm.do?bId=${board.bId}&tId=${param.tId }'" class="go_right"/> <input
							type="button" value="삭제" onclick="location.href='delete.do?bId=${board.bId}&tId=${param.tId }'" /></td>
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
					<c:if test="${board.bfName!=null }">
						<tr>
							<td>첨부된 파일</td>
					<td colspan="2" class="file1"><a href="${conPath}/upload/${board.bfName }">${board.bfName }</a></td>

						</tr>
					</c:if>
					<c:if test="${board.biName!=null }">
						<tr><td>첨부된 이미지</td>
					<td colspan="2" class="image1"><a href="${conPath}/upload/${board.biName }"><img src="${conPath}/upload/${board.biName }"></a></td>
						</tr>
					</c:if>
			</c:if>

			<c:if test="${board.bNo==2 }">
    			<table>
						<tr id="chk">
							<td colspan="3"><input type="button" value="일정삭제" onclick="location.href='delete.do?bId=${board.bId}'" class="go_right" /></td>
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
							<td colspan="2">
							<fmt:parseDate value="${board.bStart }" pattern="yyyy-MM-dd HH:mm:ss" var="myDate"></fmt:parseDate>
							<fmt:parseDate value="${board.bEnd }" pattern="yyyy-MM-dd HH:mm:ss" var="myDate2"></fmt:parseDate>
							<fmt:formatDate value="${myDate }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${myDate2 }" pattern="yyyy-MM-dd"/></td>
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
    				<tr><td> ${re.mId }  </td>
    					<td width="620">댓글 내용 : ${re.bRcontent }          ${re.bRDate}</td>
    					<td><button onclick="location.href='replydelte.do?brId=${re.brId}'" >댓글삭제</button></td>
 					</tr>
    			</c:if>
			</c:forEach>
				<form action="replyinsert.do" method="post">
					<input type="hidden" name="mId" value="${mId}">
					<input type="hidden" name="tId" value="${param.tId }">
					<input type="hidden" name="bId" value="${board.bId }">
					
   				<tr>
   				<td colspan="2"><textarea  name="bRcontent"  cols="100" placeholder="댓글을 입력하세요" required="required"></textarea></td>
   				<td><input   type="submit" value="댓글쓰기" class="btn btn-primary"></td></tr>
   				</form>
   				   
				</table>
				
		</c:forEach>
	</div>
</body>
</html>