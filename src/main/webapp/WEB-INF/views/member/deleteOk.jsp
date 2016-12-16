<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	body{
		background-color:#F2F2F2;
	}
	h2{
		background-color:white;
		position:fixed;
		margin-top:250px;
		margin-left:650px;
		width:600px;
		text-align:center;
		height:30px;
		border:1px solid #ACACAD;
		padding:30px 0px 20px; 
 	}
</style>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<jsp:include page="header_main.jsp" />
	<div>
	<form action="main.do" method="post">
		<h2>${mId }님 회원탈퇴 완료</h2>
		<input type="submit" value="메인으로">
	</form>
	</div>
</body>
