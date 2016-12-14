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
	table{
		overflow:fixed;
		margin-top:150px;
		margin-left:550px;
		width:860px;
		height:600px;
		border:1px solid #ACACAD;
	}
	caption{
		font-size:20px;
		color:black;
		margin-bottom:20px;
		text-align:left;
		padding-bottom:5px;
		border-bottom:2px solid black;
	}
<<<<<<< HEAD
=======
	.detail_b{
		margin-top:20px;
		width:80px;
		height:40px;
		font-size:15px;
	 }
	 #detail_btd{
	 	text-align:center;
	 }
	 td{
	 	font-size:20px;
	 }
>>>>>>> de9a4252a7f30c2785b28274882bfd7836d686e2
</style>
</head>
<body>
<jsp:include page="headerloginOk.jsp" />
	<div>
  		<table>
  			<caption>정보보기화면</caption>
  			<tr>
  				<th>아이디</th>
  				<td>
  					${detailMember.mId }
  				</td>
  			</tr>
  			<tr>
  				<th>이름</th>
  				<td>
  					${detailMember.mName }
  				</td>
  			</tr>
  			<tr>
  				<th>연락처</th>
  				<td>
  					${detailMember.mPhone1 }
  					-
  					${detailMember.mPhone2 }
  					-
  					${detailMember.mPhone3 }
  				</td>
  			</tr>
  			<tr>
  				<th>이메일</th>
  				<td>
  					${detailMember.mEmail }
  				</td>
  			</tr>
  			<tr>
  				<th>주소</th>
  				<td>
  					${detailMember.mAddress1 }<br>
  					${detailMember.mAddress2 }${detailMember.mAddress3 }
  				</td>
  			</tr>
  			<tr>
<<<<<<< HEAD
				<td colspan="2">
					<input type="button" value="정보수정" onclick="location.href='modifyMemberForm.do?mId=${detailMember.mId }'">
					<input type="button" value="로그아웃" onclick="location.href='logout.do'">
					<input type="button" value="회원탈퇴" onclick="location.href='deleteOk.do'">
=======
				<td colspan="2" id="detail_btd">
					<input type="button" class="detail_b" value="정보수정" onclick="location.href='modifyMemberForm.do?mId=${detailMember.mId }'">
					<input type="button" class="detail_b" value="로그아웃" onclick="location.href='logout.do'">
					<input type="button" class="detail_b" value="회원탈퇴" onclick="location.href='deleteOk.do'">
>>>>>>> de9a4252a7f30c2785b28274882bfd7836d686e2
				</td>
  			</tr>
  		</table>	
	</div>
</body>
</html>