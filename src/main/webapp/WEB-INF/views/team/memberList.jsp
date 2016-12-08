<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:if test="${param.msg=='프로젝트 가입초대 성공' }">
	<script>
		alert('프로젝트 가입초대 성공');
	</script>
</c:if>
<c:if test="${param.msg=='이미 팀에 속해있습니다.' }">
	<script>
		alert('이미 팀에 속해있습니다.');
	</script>
</c:if>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border=1>
		<caption>회원목록</caption>
		<tr><th>아이디</th><th>이름</th><th>연락처</th><th>이메일</th><th>주소</th></tr>
		<c:forEach var="mList" items="${memberList}">
			<tr>
				<td>${mList.mId }</td>
				<td>${mList.mName }</td>
				<td>${mList.mPhone1 }-${mList.mPhone2 }-${mList.mPhone3 }</td>
				<td>${mList.mEmail }</td>
				<td>${mList.mAddress1 } / ${mList.mAddress2 } / ${mList.mAddress3 }</td>
			</tr>
		</c:forEach>
	</table><br><br>
	<form action="invite.do">
		<table border=1>
			<caption>프로젝트 초대멤버 설정</caption>
			<tr><th>회원아이디</th><th>프로젝트명</th></tr>
			<tr><td>
					<select id="mId" name="mId" required="required">
						<option></option>
						<c:forEach var="mIdList" items="${memberList }">
							<option>${mIdList.mId }</option>
						</c:forEach>
					</select>
				</td>
				<td><select id="tId" name="tId" required="required">
						<option></option>
						<c:forEach var="listTeam" items="${joinedTeam }">
							<c:if test="${listTeam.tmLeader == 1}">
									<option value="${listTeam.tId }">${listTeam.tName }</option>
							</c:if>
						</c:forEach>
					</select>
				</td>
				<td><input type="submit" value="가입초대"></td>
			</tr>
		</table>
	</form>
</body>
</html>