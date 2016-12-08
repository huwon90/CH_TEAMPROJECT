<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insertTeam.do" method="get">
		<input type="hidden" name="mId" value="${param.mId }">
		<table>
			<%-- <tr><th>팀장</th><td><input type="text" name="mId" value=${mId }"></td> --%>
			<tr>
				<th>팀명</th><td><input type="text" name="tName"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="팀생성"></td>
			</tr>
			
		</table>
	</form>
</body>
</html>