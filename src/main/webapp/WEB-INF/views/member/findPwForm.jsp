<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<script src="${conPath }/js/chk.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	body{
		background-color:#F2F2F2;
	}
	table{
		background-color:white;
		position:fixed;
		margin-top:250px;
		margin-left:650px;
		width:600px;
		text-align:center;
		height:300px;
		border:1px solid #ACACAD;
		padding:30px 0px 20px;
	}
	#pw_mail_ok{
		width:10px;
		height:40px;
		margin-bottom:20px;
		text-align:center;
	}
	.txt_blank{
		width:400px;
		height:50px;
		font-size:18px;
		margin-bottom:8px;
	}
	#txt_blank1{
		text-align:center;
	}
	th{
		width:100px;
	}
	.findpw_btn1{
		margin-top:20px;
		font-size:15px;
		width:80px;
		height:40px;
	}
	caption{
		font-size:20px;
		color:black;
		margin-bottom:20px;
		text-align:left;
		padding-bottom:5px;
		border-bottom:2px solid black;
	}
</style>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
<jsp:include page="header_main.jsp" />
	<div>
		<form action="findPw.do" method="post" name="frm">
			<table>
				<caption>비밀번호 찾기</caption>
				<tr><th colspan=2 id=pw_mail_ok><c:if test="${msg!=null }">${msg }</c:if></th></th>
				<tr>
					<th id=txt_blank1>아이디</th>
					<td>
						<input type="text" class="txt_blank" name="mId" required="required">
					</td>
				</tr>
				<tr>
					<th id=txt_blank1>이메일</th>
					<td>
						<input type="email" placeholder="a@a.com 형식으로 입력하세요" class="txt_blank" name="mEmail" required="required">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" class="findpw_btn1" value="메일전송">
						<input type="button" class="findpw_btn1" value="회원가입" onclick="location.href='joinMemberForm.do'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>