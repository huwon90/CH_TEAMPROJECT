<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	body{
		background-color:#F2F2F2;
	}
	table{
		position:fixed;
		margin-top:150px;
		margin-left:700px;
		width:500px;
		text-align:center;
		height:600px;
		line-width:400px;
		border:1px solid #ACACAD;
	}
	tr{
		background-color:white;
		border:1px solid #ACACAD;
	}
	th{
		width:100px;
	}
	.mId_T{
		width:400px;
		height:60px;
		font-size:20px;
		margin-bottom:10px;
	}
	.mPw_T{
		width:400px;
		height:60px;
		font-size:20px;
		margin-bottom:10px;
		color:black;
	}
	.login_b{
		width:400px;
		height:50px;
		font-size:20px;
		margin-bottom:10px;
	}
	.join_b{
		width:400px;
		height:50px;
		font-size:20px;
	}
	.forgot_b{
		width:400px;
		height:40px;
		font-size:15px;
		text-decoration:none;
		color:#1E1957;
	}
	.forgot_i{
		width:400px;
		height:40px;
		font-size:15px;
		text-decoration:none;
		color:#1E1957;
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
<body>
	<jsp:include page="header_main.jsp" />
		<c:if test="${msg!=null }">${msg }</c:if>
		<form action="login.do" method="post">
		<table>
			<caption>로그인</caption>
			<tr>
				<td>
					<input type="text" class="mId_T" name="mId" value="<c:if test='${mId!=null }'>${mId }</c:if>" placeholder="아이디를 입력하세요 (6자 이상)" required="required">
					<input type="password" class="mPw_T" name="mPw" placeholder="비밀번호를 입력하세요" required="required"><br><br>
					<a href="findIdForm.do" class="forgot_i">아이디를 잊어버리셨나요?</a><br><br>
					<a href="findPwForm.do" class="forgot_b">비밀번호를 잊어버리셨나요?</a>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" class="login_b" value="로그인" >
					<input type="button" class="join_b" value="회원가입" onclick="location.href='joinMemberForm.do'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>