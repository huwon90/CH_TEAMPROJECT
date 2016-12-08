<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</style>
</head>
<body>

	<jsp:include page="writeForm.jsp"></jsp:include>
	<div id="board_content">
		<c:forEach var="board" items="${list }">
			<c:if test="${board.bNo==1 }">
				<table>
					<tr id="chk">
						<td colspan="3"><input type="button" value="수정" /> <input
							type="button" value="삭제" onclick="location.href='delete.do?bId=${board.bId}'" /></td>
					</tr>
					<tr id="profile">
						<td rowspan="2" class="profile1">프로필사진</td>
						<td class="id">${board.bId }</td>
						<td class="name">${board.mId }</td>
					<tr>
						<td colspan="2" class="date">${board.bDate }</td>
					</tr>
					</tr>
					<tr class="con">
						<td colspan="3" class="con1">${board.bContent }</td>
					</tr>
					<c:if test="${board.bfName!=null }">
						<tr>
							<td colspan="3" class="file1"><a href="${conPath}/upload/${board.bfName }">${board.bfName }</a></td>

						</tr>
					</c:if>
					<c:if test="${board.biName!=null }">
						<tr>
							<td colspan="3" class="image1">${board.biName }</td>
						</tr>
					</c:if>
				</table>
			</c:if>

			<c:if test="${board.bNo==2 }">
					<table>
						<tr id="chk">
							<td colspan="3"><input type="button" value="일정삭제" onclick="location.href='delete.do?bId=${board.bId}'" /></td>
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
							<td colspan="2">${board.bStart }~ ${board.bEnd }</td>
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
   			<td>댓글 bId : ${re.bId }</td>
    		<td>댓글 내용 : ${re.bRcontent }</td>
    		<td>댓글 작성자 : ${re.mId }</td>
 			</tr>
    		</c:if>
   				</c:forEach>
   				<tr>
				<form action="replyinsert.do" method="post">
					<input type="hidden" name="mId" value="user">
					<input type="hidden" name="bId" value="${board.bId }">
   				<td colspan="3"><textarea  name="brContent" placeholder="댓글을 입력하세요" required="required"></textarea></td>
   				<td><input type="submit" value="댓글쓰기" class="go_right"></td></td>
   				</form>
   				   <tr>
				</table>
				
		</c:forEach>
	</div>
</body>
</html>