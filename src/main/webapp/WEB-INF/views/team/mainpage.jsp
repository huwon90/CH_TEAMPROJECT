<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">

		<tr><th>팀명</th><th>회원ID</th><th>회원이름</th><th>연락처</th></tr>
		<c:forEach var="phone" items="${phoneList }">
			<tr>
				<td>${phone.tName }</td>
				<td>${phone.mId}</td>
				<td>${phone.mName }</td>
				<td>${phone.mPhone1 }-${phone.mPhone2 }-${phone.mPhone3 }</td>
			</tr>
			
		</c:forEach>
		
</table>


</body>
</html>