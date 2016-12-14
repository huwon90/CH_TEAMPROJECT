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
</head>
<body>
<jsp:include page="headerloginOk.jsp" />
	<div>
    	<form action="modifyMember.do" method="post" name="frm">
			<table>
			  	<caption>정보수정화면</caption>
			  	<c:if test="${msg!=null }">${msg }</c:if>
				<tr>
					<th>아이디</th>
					<td>
						${modifyMemberForm.mId }
						<input type="hidden" name="mId" value="${modifyMemberForm.mId }">
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="mPw" value="${modifyMemberForm.mPw }" required="required">
					</td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
					<td>
						<input type="password" name="mPwChk" value="${modifyMemberForm.mPw }" required="required">
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>
						${modifyMemberForm.mName }
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<select name="mPhone1" required="required">
							<option>010</option>
							<option>016</option>
							<option>017</option>
							<option>018</option>
							<option>019</option>
						</select>
						-
						<input type="tel" name="mPhone2" value="${modifyMemberForm.mPhone2 }" maxlength="4" required="required">
						-
						<input type="tel" name="mPhone3" value="${modifyMemberForm.mPhone3 }" maxlength="4" required="required">
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
						<input type="email" name="mEmail" value="${modifyMemberForm.mEmail }" required="required" placeholder="이메일을 입력하세요">
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
						<input type="text" id="sample4_postcode" name="mAddress1" value="${modifyMemberForm.mAddress1 }" placeholder="우편번호">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample4_roadAddress" name="mAddress2" value="${modifyMemberForm.mAddress2 }" placeholder="도로명주소">
						<input type="text" id="sample4_jibunAddress" name="mAddress3" value="${modifyMemberForm.mAddress3 }" placeholder="지번주소">
						<span id="guide" style="color:#999"></span>
					</td>
				<tr>
					<td colspan="2">
						
						<input type="button" value="수정" onclick="modifyInfoConfirm()" >
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>