<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

#board_content .image1 {
	margin: 15px;
	min-width: 50px;
	max-width: 700px;
}
#text_file {
	width: 800px;
	height: 100px;
	border-style: none;
}
</style>
</head>
<body>
<div id="board_content">
	<form action="updateFile.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="bId" value="${updateForm.bId }">
		<input type="hidden" name="tId" value="${param.tId }">
		<input type="hidden" name="mId" value="${mId }">
		<table>
			<tr id="profile">
				<td rowspan="2" class="profile1">프로필사진</td>
				<td class="id">${updateForm.bId }</td>
				<td class="name">${updateForm.mId }</td>
			<tr>
				<td colspan="2" class="date">${updateForm.bDate }</td>
			</tr>
			<tr class="con">
				<td colspan="3" class="con1"><input type="text" name="bContent"
					value="${updateForm.bContent }" required="required" id="text_file"></td>
			</tr>
			<c:if test="${updateForm.bfName!=null }">
				<tr><td>첨부된 파일</td>
					<td colspan="2" class="file1">${updateForm.bfName }</td>

				</tr>
			</c:if>
			<c:if test="${updateForm.biName!=null }">
				<tr><td>첨부된 이미지</td>
					<td colspan="2" class="image1">${updateForm.biName }</td>
				</tr>
			</c:if>
			<tr><td colspan="3"><input type="submit" value="수정"><input type="button" value="취소" onclick="location.href='list.do'"></td></tr>
		</table>
	</form>
	</div>
</body>
</html>