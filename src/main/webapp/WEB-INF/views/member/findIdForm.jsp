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
	.text_1{
		width:400px;
		height:50px;
		font-size:18px;
		margin-bottom:20px;
	}
	table th{
		width:120px;
		height:40px;
		margin-bottom:10px;
		text-align:center;
	}
	.phone_txt1{
		width:120px;
		height:40px;
		font-size:20px;
	}
	.id_btn{
		margin-top:20px;
		width:80px;
		height:40px;
		font-size:15px;
	}
	#findid_txt{
		text-align:center;
		width:110px;
		height:50px;
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
		<form action="findId.do" method="post" name="frm">
			<table>
			<caption>아이디 찾기</caption>
				<tr><th colspan=2><c:if test="${msg!=null }">${msg }</c:if></th></tr>
				<tr>
					<th id=findid_txt>이메일</th>
					<td>
						<input type="email" placeholder="이메일을 입력하세요" class="text_1" name="mEmail" required="required">
					</td>
				</tr>
				<tr>
					<th id=findid_txt>연락처</th>
					<td>
						<select name="mPhone1" class="phone_txt1" required="required">
							<option>010</option>
							<option>011</option>
							<option>012</option>
							<option>013</option>
							<option>014</option>
							<option>015</option>
							<option>016</option>
							<option>017</option>
							<option>018</option>
							<option>019</option>
						</select>
						-
						<input type="tel" name="mPhone2" class="phone_txt1" maxlength="4" required="required">
						-
						<input type="tel" name="mPhone3" class="phone_txt1" maxlength="4" required="required">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" class="id_btn" value="아이디찾기" onclick="findIdInfoConfirm()">
						<input type="button" class="id_btn" value="회원가입" onclick="location.href='joinMemberForm.do'">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>