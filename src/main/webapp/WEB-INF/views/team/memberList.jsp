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
<style>
	#content { 
 		margin-top:180px;
		margin-left:17%;
	}
	#content table tr{
		text-align: center;
	}
	#content table td{
		width:200px;
		height: 30px;
		text-align: center;
		font-size:1.2em;
	}
	#content #invite td{
		width:435px;
	}
	#content table caption{
		margin-bottom:30px;
		margin-top:30px;
		font-size: 1.8em;
	}
	#content table td:nth-child(5) {
		width: 500px;
	}
</style>
</head>
<body>
<jsp:include page="../member/headerloginOk.jsp" />
<div id="content">

	<table border=1>
		<caption>회원목록</caption>
		<tr><td>아이디</td><td>이름</td><td>연락처</td><td>이메일</td><td>주소</td></tr>
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
		<table border=1 id="invite">
			<caption>프로젝트 초대멤버 설정</caption>
			<tr><td>회원아이디</td><td>프로젝트명</td><td>초대하기</td></tr>
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
				<input type="hidden" name="leaderId" value="${param.leaderId}">
				<td><input type="submit" value="가입초대"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>