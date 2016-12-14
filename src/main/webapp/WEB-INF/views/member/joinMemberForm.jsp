<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="conPath" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${conPath }/js/address.js"></script>
<script src="${conPath }/js/chk.js"></script>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	body{
		background-color:#F2F2F2;
	}
	table{
		overflow:fixed;
		margin-top:180px;
		margin-left:550px;
		width:860px;
		height:600px;
		border:1px solid #ACACAD;
	}
	tr{
		background-color:white;
	}
	th{
		width:150px;
	}
	td{
		color:black;
		width:600px;
		height:30px;
	}
	.text_box{
		margin-right:5px;
		width:480px;
		height:40px;
	} 
	.text_box_phone{
		width:200px;
		height:40px;
	} 
	.button_box{
		width:100px;
		height:44px;
	}
	.text_box1{
		margin-right:5px;
		width:600px;
		height:40px;
	} 
	.sub_b_td{
		margin-left:300px;
		text-align:center;
	}
	.sub_b{
		width:100px;
		height:50px;
		font-size: 1em;
		border-radius:8px;
		background-color: #Fff;
	}
	.sub_b1{
		background-color:#9FB7CF;
		width:100px;
		height:50px;
		font-size: 1.1em;
		border-radius:8px;
	}
	.sub_b1:active{
		color: white;
	}
	caption{
		font-size:20px;
		color:black;
		margin-bottom:20px;
		text-align:left;
		padding-bottom:5px;
		border-bottom:2px solid black;
	}
	.buttons{
		margin-top:20px;
		margin-left:900px;
	}
</style>
</head>
<body>
<jsp:include page="header_main.jsp" /> 
	
    	<form action="joinMember.do" method="post" name="frm">
			<table>
			  	<c:if test="${msg!=null }">${msg }</c:if>
			  	<caption>회원가입</caption>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" class="text_box" name="mId" required="required" value="${mId }" placeholder="아이디를 입력하세요">
						<input type="button" class="button_box" value="중복확인" onclick="idConfirm()"><br>
						<c:if test="${chkMsg!=null }">${chkMsg }</c:if>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" class="text_box"  name="mPw" required="required">
					</td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
					<td>
						<input type="password" class="text_box"  name="mPwChk" required="required">
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>
						<input type="text" class="text_box"  name="mName" required="required">
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<select name="mPhone1" class="text_box_phone" required="required">
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
						<input type="tel" name="mPhone2" class="text_box_phone" maxlength="4" required="required">
						-
						<input type="tel" name="mPhone3" class="text_box_phone" maxlength="4" required="required">
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
<<<<<<< HEAD
						<input type="email" name="mEmail" class="text_box"  required="required" placeholder="이메일을 입력하세요">
=======
						<input type="email" name="mEmail" class="text_box" required="required" placeholder="이메일을 입력하세요">
>>>>>>> de9a4252a7f30c2785b28274882bfd7836d686e2
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
						<input type="text" id="sample4_postcode" name="mAddress1" class="text_box"  placeholder="우편번호">
						<input type="button" onclick="sample4_execDaumPostcode()" class="button_box" value="우편번호 찾기"><br><br>
						<input type="text" id="sample4_roadAddress" name="mAddress2" class="text_box1"  placeholder="도로명주소">
						<input type="text" id="sample4_jibunAddress" name="mAddress3" class="text_box1"  placeholder="지번주소">
						<span id="guide" style="color:#999"></span>
					</td>
			</table>
			<div class="buttons"><input type="button" class="sub_b1" value="회원가입" onclick="joinInfoConfirm()">
<<<<<<< HEAD
						<input type="reset" class="sub_b" value="취소"></div>
=======
				<input type="reset" class="sub_b" value="취소"></div>
>>>>>>> de9a4252a7f30c2785b28274882bfd7836d686e2
		</form>
	
</body>
</html>