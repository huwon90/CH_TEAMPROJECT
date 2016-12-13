<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:if test="${param.msg=='프로젝트 가입초대 성공' }">
	<script>
		alert('프로젝트 가입초대 성공');
	</script>
</c:if>
<c:if test="${param.msg=='이미 팀에 속해있습니다.' }">
	<script>
		alert('이미 팀에 속해있습니다.');
	</script>
</c:if>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#title1 {
	    margin-top: 80px;
	    margin-left: 230px;
	    padding: 40px;
	    font-size: 20px;
	}
	
	#title2 {
    
    margin-top: 80px;
    margin-left: 230px;
    padding: 40px;
    font-size: 20px;
}

	#content { 
		margin-top:80px;
		margin-left:12%;
	}
	#content table tr{
		text-align: center;
	}
	#content table td{
		width:200px;
		height: 30px;
		text-align: center;
		/* font-size:1.2em; */
	}
	#content table td:nth-child(5){
		width:800px;
	}
	#content #invite td{
		width:478px;
	}
	#content table caption{
		margin-bottom:30px;
		margin-top:15px;
		font-size: 1.8em;
	}
	#content table{
    	width: 1000px;
    	margin-left: 260px;
    	margin-top: 30px;
    }
    
	#content table tr{
		margin:50px;
		padding : 50px;
		text-align:center;
	}
	#content table tr td{
		width: 70px;
		margin:20px;
		padding : 12px 20px;
		text-align:center;
		border-bottom: 0.5px solid  lightgray;
	}
	#content table tr th{
		border-bottom: 2px solid  #667292;
	}
    #content #mlist tr td:nth-child(3){
    	width: 300px;
    }
</style>
</head>
<body>
<jsp:include page="../member/headerloginOk.jsp" />
<div id="title1">
		회원목록
	</div>
<div id="content">
	<table id="mlist">
		<tr><th>아이디</th><th>이름</th><th>연락처</th><th>이메일</th><th>주소</th></tr>
		<c:forEach var="mList" items="${memberList}">
			<tr>
				<td>${mList.mId }</td>
				<td>${mList.mName }</td>
				<td>${mList.mPhone1 }-${mList.mPhone2 }-${mList.mPhone3 }</td>
				<td>${mList.mEmail }</td>
				<td><c:if test="${mList.mAddress1!=null }">
					( ${mList.mAddress1 } )
					 ${mList.mAddress2 }
					</c:if></td>
			</tr>
		</c:forEach>
	</table><br><br>
	
	<div id="title2">
		프로젝트 초대멤버 설정
	</div>
	<form action="invite.do">
		<table id="invite">
			<tr><th>회원아이디</th><th>프로젝트명</th><th>초대하기</th></tr>
			<tr><td>
					<select id="mId" name="mId" required="required">
						<option></option>
						<c:forEach var="mIdList" items="${memberList }">
							<option>${mIdList.mId }</option>
						</c:forEach>
					</select>
				</td>
				<td><select id="tId" name="tId" required="required">
						<option></option>
						<c:forEach var="listTeam" items="${joinedTeam }">
							<c:if test="${listTeam.tmLeader == 1}">
									<option value="${listTeam.tId }">${listTeam.tName }</option>
							</c:if>
						</c:forEach>
					</select>
				</td>
				<input type="hidden" name="leaderId" value="${param.leaderId}">
				<td><input type="submit" value="가입초대"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>