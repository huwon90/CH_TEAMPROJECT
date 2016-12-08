<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	if(session.getAttribute("ValidMem")==null){
	response.sendRedirect("joinOk.do");
} %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>${mName }님 어서오세요</h1>
		<form action="logout.do">
			
			<input type="button" value="정보보기" onclick="location.href='detailMemberForm.do?mId=${mId }'">
			<input type="submit" value="로그아웃">
			
		</form>
	</div>
</body>
</html>