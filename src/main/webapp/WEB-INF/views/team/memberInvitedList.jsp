<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="conPath" value="<%=request.getContextPath() %>"></c:set>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:if test="${param.msg=='거절성공'}">
	<script>
		alert('프로젝트 초대가 거절되었습니다.');
	</script>
</c:if>
<c:if test="${param.msg=='초대 승낙성공'}">
	<script>
		alert('프로젝트 초대를 승낙하였습니다.');
	</script>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table border="1">
		<tr><th>팀번호</th><th>팀이름</th><th>승인</th></tr>
		<c:if test="${empty invited}">
			<tr><td colspan="3">초대받은 팀이 없습니다</td></tr>
		</c:if>
		
		<c:forEach var="inList" items="${invited }">
			<c:if test="${inList.tmOk ==0 }">
			<tr>
				<td>${inList.tId }</td>
				<td>${inList.tName }</td>
				<td><button onclick="location.href='invitedOk.do?mId=${param.mId }&tId=${inList.tId }'">Y</button>
					<button onclick="location.href='${conPath }/invitedNo.do?mId=${param.mId }&tId=${inList.tId }'">N</button>
			</tr>
			</c:if>
		</c:forEach>
	</table>
	
</body>
</html>