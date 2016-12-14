<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="conPath" value="<%=request.getContextPath()%>" />
<c:if test="${param.msg=='댓글삭제성공' }">
	<script>alert('댓글이 삭제되었습니다');	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${conPath}/css/font-awesome.min.css" rel="stylesheet"
   type="text/css">
<link href="${conPath}/css/style.min.css" rel="stylesheet"
   type="text/css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   
<style>
<<<<<<< HEAD
/* #board_content table {
=======
#board_content {
	margin-left: 320px;
}

#board_content table {
>>>>>>> de9a4252a7f30c2785b28274882bfd7836d686e2
	width: 860px;
	height: 600px;
	border: 2px solid lightgray;
	margin: 0 auto;
	margin-top:30px;
}

#board_content td {
}

#board_content .profile1 {
	width: 100px;
	height: 50px;
}

#board_content .id {
	width: 250px;
	height: 50px;
}

#board_content .name {
	height: 50px;
}

#board_content .date {
	height: 50px;
}

#board_content table .con .con1 {
	min-width: 700px;
	min-height: 400px;
}

#board_content table #file td {
	border: 1px solid lightgray;
	
}
#board_content td{
	border-bottom : 1px solid lightgray;
	border-right: 1px solid lightgray;
	color:black;
}

#board_content .file1 {
	height: 50px;
}

#board_content .image1 {
	height: 50px;
}

#board_content #chk {
	height: 10px;
}
<<<<<<< HEAD
#board_banner{
    	width:200px;
    }
    
#board_banner table tr{
		margin:20px;
		padding :20px;
		text-align:center;
	}
#board_banner table tr td{
		margin:10px;
		padding :10px;
		text-align:center;
	}
 */
 #board_content {
	margin-left: 320px;
}

#board_content table {
	width: 860px;
	height: 600px;
	border: 1px solid lightgray;
	margin: 0 auto;
	margin-top: 15px;
}

#board_content td {
	border: 1px solid lightgray;
}

#board_content .profile1 {
	width: 100px;
	height: 50px;
}

#board_content .id {
	width: 250px;
	height: 50px;
}

#board_content .name {
	height: 50px;
}

#board_content .date {
	height: 50px;
}

#board_content table .con .con1 {
	min-width: 700px;
	min-height: 400px;
}

#board_content table #file td {
	border: 1px solid lightgray;
}

#board_content .file1 {
	height: 50px;
}

#board_content .image1 {
	height: 50px;
}

#board_content #chk {
	height: 10px;
}

#board_banner {
	width: 200px;
}

#board_banner table tr {
	margin: 20px;
	padding: 20px;
	text-align: center;
}

#board_banner table tr td {
	margin: 10px;
	padding: 10px;
	text-align: center;
=======

#board_banner {
	width: 200px;
}

#board_banner table tr {
	margin: 20px;
	padding: 20px;
	text-align: center;
}

#board_banner table tr td {
	margin: 10px;
	padding: 10px;
	text-align: center;
}

#content_wrap {
	margin-top: 100px;
	width: 100%;
}

#content_wrap {
	width: 1500px;
	margin: 0 auto;
}

#content_wrap #sub_menu {
	position: fixed;
	top: 200px;
	border: 1px solid lightgray;
	width: 310px;
	min-height: 600px;
	padding: 5px;
	text-align: center;
	margin-left: 10px;
}

#content_wrap #sub_menu a {
	text-decoration: none;
	color: black;
}

#content_wrap #sub_menu a:hover {
	color: #9FB7CF;
}

#sub_menu table:first-child {
	margin: 0 auto;
	width: 100%;
	text-align: center;
}
#sub_menu .invite {
	height: 110px;
}

#sub_menu table .invite button {
	background-color: #28296B;
	border-radius: 5px;
	padding: 25px 100px;
	font-size: 1.3em;
	color: white;
	transition: 0.45s;
}

#sub_menu table .invite button:hover {
	background-color: #464791;
}

#sub_menu table.invite button:active {
	background: red;
	color: gray;
}

#sub_menu table:nth-child(2) {
	width: 100%;
	margin: 50px 0;
}

#sub_menu #participant {
	border: 2px solid lightgray;
	width: 100%;
}

#sub_menu #participant #border_td {
	text-align: left;
	border-bottom: 1px solid lightgray;
	color: gray;
}
#sub_menu #participant #border_td1 {
	text-align: left;
	border-bottom: 1px solid lightgray;
	color: gray;
	margin-top:20px;
}
#sub_menu table:first-child td {
	text-align: center;
	padding: 20px 5px;
	font-size: 1.1em;
	color: black;
}

#participant caption {
	font-weight: 800;
	font-size: 1.1em;
	margin-bottom: 5px;
	color: black;
}

#participant td:first-child {
	width: 20%;
}

#participant td:last-child {
	text-align: left;
}

#content #main {
	width: 890px;
	height: 100%;
	position: relative;
	left: 310px;
}

#content #title_1img a {
	margin-left: 10px;
	margin-right: 10px;
}

#participant span {
	background-color: palevioletred;
	width: 30px;
	height: 30px;
	display: table-cell;
	border-radius: 15px;
	text-shadow: 0 0 7px white;
	font-size: 18px;
}

#participant .team_leader {
	background-color: cadetblue;
}

#participant .team_m {
	text-align: left;
}

.ddaam {
	height: 15px;
}

#header_imsi {
	margin-left: 320px;
}
.input_text{
	height:30px;
}
.go_right1{
	margin-top:20px;
	margin-bottom:20px;
	height:40px;
	width:180px;
	color:#ef3e50;
}
.go_right2{
	margin-top:10px;
	margin-bottom:10px;
	text-align:center;
	width:60px;
	heigth:60px;
}
#go_right3{
	margin-right:5px;
	height:30px;
	width:50px;
	color:#ef3e50;
}
.id_color a{
	margin-top:80px;
	color:#ef3e50;
	text-align:left;
}
#bRdateWidth1{
	width:100px;
}
#bRdateWidth2{
	width:90px;
}
#bRdateWidth2 a{
	margin-left:20px;
}
.btn-primary{
	padding:10px;
	width:150px;
	color:#ef3e50;
}
#center{
	text-align:center;
}
#borderX{
	height:40px;
}
   .layer {display:none; position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:100;}
      .layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50);}
      .layer .pop-layer {display:block;}

   .pop-layer {display:none; position: absolute; top: 50%; left: 50%; width: 410px; height:auto;  background-color:#fff; border: 5px solid #3571B5; z-index: 10;}   
   .pop-layer .pop-container {padding: 20px 25px;}
   .pop-layer p.ctxt {color: #666; line-height: 25px;}
   .pop-layer .btn-r {width: 100%; margin:10px 0 20px; padding-top: 10px; border-top: 1px solid #DDD; text-align:right;}

   a.cbtn {display:inline-block; height:25px; padding:0 14px 0; border:1px solid #304a8a; background-color:#3f5a9d; font-size:13px; color:#fff; line-height:25px;}   
   a.cbtn:hover {border: 1px solid #091940; background-color:#1f326a; color:#fff;}

.pop-layer .pop-container .pop-conts table tr td, th {
   padding: 3px 20px;
}

.pop-layer .pop-container .pop-conts table tr:nth-child(1){
   border-bottom: 2px solid  #667292;
}
.pop-layer .pop-container .pop-conts table tr:nth-child(2){
   background-color: #E0E0E0;
}
.pop-layer .pop-container .pop-conts table tr:nth-child(4){
   background-color: #E0E0E0;
}

#layer1{
	width:600px;
}
#layer1 table tr:nth-child(1){
	border-bottom: 2px solid  #667292;
>>>>>>> de9a4252a7f30c2785b28274882bfd7836d686e2
}

#content_wrap {
	margin-top: 80px;
	width: 100%;
}

#content_wrap {
	width: 1500px;
	margin: 0 auto;
}

#content_wrap #sub_menu {
	position: fixed;
	top: 150px;
	border: 1px solid lightgray;
	width: 310px;
	min-height: 600px;
	padding: 5px;
	text-align: center;
	margin-left: 10px;
}

#content_wrap #sub_menu a {
	text-decoration: none;
	color: black;
}

#content_wrap #sub_menu a:hover {
	color: cadetblue;
}

#sub_menu table:first-child {
	margin: 0 auto;
	margin-bottom: 25px;
	width: 100%;
	text-align: center;
}

#sub_menu .invite {
	height: 110px;
}

#sub_menu table .invite button {
	background-color: cadetblue;
	border-radius: 5px;
	padding: 25px 100px;
	font-size: 1.3em;
	color: white;
	transition: 0.45s;
}

#sub_menu table .invite button:hover {
	background-color: darkseagreen;
}

#sub_menu table.invite button:active {
	background: red;
	color: gray;
}

#sub_menu table:nth-child(2) {
	width: 100%;
	margin: 50px 0;
}

#sub_menu #participant {
	border: 2px solid lightgray;
	width: 100%;
}

#sub_menu #participant th {
	text-align: left;
	border-bottom: 1px solid lightgray;
	color: gray;
}

#sub_menu table:first-child th {
	text-align: center;
	padding: 20px 5px;
	font-size: 1.1em;
	color: black;
}

#sub_menu #participant tr:first-child td {
	margin: 10px;
}

#participant caption {
	font-weight: 800;
	font-size: 1.1em;
	margin-bottom: 5px;
	color: black;
}

#participant td:first-child {
	width: 20%;
}

#participant td:last-child {
	text-align: left;
}

#content #main {
	border: 1px solid yellow;
	width: 890px;
	height: 100%;
	position: relative;
	left: 310px;
}

#content #title_1img a {
	margin-left: 10px;
	margin-right: 10px;
}

#participant span {
	background-color: palevioletred;
	width: 30px;
	height: 30px;
	display: table-cell;
	border-radius: 15px;
	text-shadow: 0 0 7px white;
	font-size: 18px;
}

#participant .team_leader {
	background-color: cadetblue;
}

#participant .team_m {
	text-align: left;
}

.ddaam {
	height: 15px;
}

#header_imsi {
	margin-left: 320px;
}
</style>
<script type="text/javascript">
   function layer_open(el){

      var temp = $('#' + el);
      var bg = temp.prev().hasClass('bg');   //dimmed 레이어를 감지하기 위한 boolean 변수

      if(bg){
         $('.layer').fadeIn();   //'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다. 
      }else{
         temp.fadeIn();
      }

      // 화면의 중앙에 레이어를 띄운다.
      if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
      else temp.css('top', '0px');
      if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
      else temp.css('left', '0px');

      temp.find('a.cbtn').click(function(e){
         if(bg){
            $('.layer').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다. 
         }else{
            temp.fadeOut();
         }
         e.preventDefault();
      });

      $('.layer .bg').click(function(e){   //배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
         $('.layer').fadeOut();
         e.preventDefault();
      });

   }            
</script>

</head>
<body>
<jsp:include page="../member/headerloginOk.jsp" />

<div id="content_wrap">
<<<<<<< HEAD
		<div id="header_imsi"><jsp:include page="writeForm.jsp"></jsp:include></div>

		<div id="sub_menu">
			<table>
				<tr id="title_1">
					<th class="first_th" colspan="4">프로젝트 기능</th>
				</tr>
				<tr id="title_1img">
					<td><a href="#"><img src="image/file.png" alt="file"
							width="48" height="48" /></a></td>
					<td><a href="#"><img src="image/image.png" alt="image"
							width="52" height="52" /></a></td>
					<td><a href="#"><img src="image/cal.png" alt="cal"
							width="43" height="43 " /></a></td>
					<td><a href="#"><img src="image/phone.png" alt="phone"
							width="40" height="40" /></a></td>
				</tr>
				<tr>
					<td><a href="#">파일</a></td>
					<td><a href="#">이미지</a></td>
					<td><a href="#">일정</a></td>
					<td><a href="#">연락처</a></td>
				</tr>
			</table>
			<table>
				<tr>
					<td colspan="4" class="invite"><button class="invite_btn">초대하기</button></td>
				</tr>
			</table>

			<table id="participant">
				<caption>전체 참여자 ${memberCount }명</caption>
				<tr>
					<th colspan="3">팀장(1)</th>
				</tr>
				<c:forEach var="phone" items="${phoneList }">
					<c:if test="${phone.tmLeader==1 }">
						<tr>
							<td><span class="team_leader">${fn:substring(phone.mName, 0, 1)}</span></td>
							<td class="team_m">${phone.mName }</td>
							<td>${phone.mEmail }</td>
						</tr>
					</c:if>
				</c:forEach>
				
					<!-- <tr>
						<td class="ddaam"></td>
					</tr> -->
				
				<c:if test="${memberCount==1}">
				
					<tr>
						<th colspan="3">외부 참여자(0)</th>
					</tr>
				</c:if>
				<c:if test="${memberCount>1}">
					<tr>
						
						<th colspan="2">외부 참여자(${memberCount - 1 })</th>
					</tr>
				</c:if>
				<c:forEach var="phone" items="${phoneList }">
					<c:if test="${phone.tmLeader==0 }">
						<tr>
							<td><span>${fn:substring(phone.mName, 0, 1)}</span></td>
							<td class="team_m">${phone.mName }</td>
							<td>${phone.mEmail }</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>



		<div id="board_content">


			<c:forEach var="board" items="${list }">
				<c:if test="${board.bNo==1 }">
					<table class=table>
						<tr id="chk">
							<td colspan="3"><input type="button" value="수정"
								onclick="location.href='updateForm.do?bId=${board.bId}&tId=${param.tId }'"
								class="go_right" /> <input type="button" value="삭제"
								onclick="location.href='delete.do?bId=${board.bId}&tId=${param.tId }'" /></td>
						</tr>
						<tr id="profile">
							<td rowspan="2" class="profile1">프로필사진</td>
							<td class="id">${board.bId }</td>
							<td class="name">${board.mId }</td>
						<tr>
							<td colspan="2" class="date">${board.bDate }</td>
						</tr>
						<tr class="con">
							<td colspan="3" class="con1">${board.bContent }</td>
						</tr>
						
				<c:forEach var="fileList" items="${fileList }">
						<c:if test="${fileList.bId == board.bId }">
			
						<tr class="filelist">
							</tr>
							
		<script id="templateAttach" type="text/x-handlebars-template">

			<td data-src='{{fullName}}'>
 				<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  							<div class="mailbox-attachment-info">
							<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
							</span>
  							</div>
						</td>               
				</script>
							
							
				<script>

						var bId = ${board.bId};

						var template = Handlebars.compile($("#templateAttach").html());
						
						$.getJSON("getAttach/"+bId+".do",function(list){
							$(list).each(function(){
								
								var fileInfo = getFileInfo(this);
								
								var html = template(fileInfo);
								
								 $(".filelist").append(html);
							});
						});
						
						</script>
			
			
						</c:if>
				</c:forEach>




						</c:if>

						<c:if test="${board.bNo==2 }">
							<table>
								<tr id="chk">
									<td colspan="3"><input type="button" value="일정삭제"
										onclick="location.href='delete.do?bId=${board.bId}'"
										class="go_right" /></td>
								</tr>
								<tr id="profile">
									<td rowspan="2" class="profile1">프로필사진</td>
									<td class="id">${board.bId }</td>
									<td class="name">${board.mId }</td>
								<tr>
									<td colspan="2" class="date">${board.bDate }</td>
								</tr>
								<tr>
									<td>일정제목</td>
									<td colspan="2">${board.bTitle }</td>
								</tr>
								<tr>
									<td>일정</td>
									<td colspan="2"><fmt:parseDate value="${board.bStart }"
											pattern="yyyy-MM-dd HH:mm:ss" var="myDate"></fmt:parseDate> <fmt:parseDate
											value="${board.bEnd }" pattern="yyyy-MM-dd HH:mm:ss"
											var="myDate2"></fmt:parseDate> <fmt:formatDate
											value="${myDate }" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate
											value="${myDate2 }" pattern="yyyy-MM-dd" /></td>
								</tr>
								<tr>
									<td>장소</td>
									<td colspan="2">${board.bLoc }</td>
								</tr>
								<tr>
									<td>메모</td>
									<td colspan="2">${board.bMemo }</td>
								</tr>
								</c:if>
								<!-- 댓글 집어넣기 로직 -->
								<c:forEach var="re" items="${relist}">
									<c:if test="${re.bId == board.bId }">
										<tr>
											<td>${re.mId }</td>
											<td width="620">댓글 내용 : ${re.bRcontent } ${re.bRDate}</td>
											<td><button
													onclick="location.href='replydelte.do?brId=${re.brId}'">댓글삭제</button></td>
										</tr>
									</c:if>
								</c:forEach>
								<form action="replyinsert.do" method="post">
									<input type="hidden" name="mId" value="${mId}"> <input
										type="hidden" name="tId" value="${param.tId }"> <input
										type="hidden" name="bId" value="${board.bId }">

									<tr>
										<td colspan="2"><textarea name="bRcontent" cols="100"
												placeholder="댓글을 입력하세요" required="required"></textarea></td>
										<td><input type="submit" value="댓글쓰기"
											class="btn btn-primary"></td>
									</tr>
								</form>

							</table>

							</c:forEach>
							</div>
		</div>



=======
      <div id="header_imsi"><jsp:include page="writeForm.jsp"></jsp:include></div>

      <div id="sub_menu">
         <table>
            <tr id="title_1">
               <th class="first_th" colspan="4">프로젝트 기능</th>
            </tr>
            <tr id="title_1img">
               <td><a href="#"><img src="image/file.png" alt="file"
                     width="48" height="48" /></a></td>
               <td><a href="#"><img src="image/image.png" alt="image"
                     width="52" height="52" /></a></td>
               <td><a href="#"><img src="image/cal.png" alt="cal"
                     width="43" height="43 " /></a></td>
               <td><a href="#"><img src="image/phone.png" alt="phone"
                     width="40" height="40" /></a></td>
            </tr>
            <tr id=submenu_tr>
               <td><a href="#">파일</a></td>
               <td><a href="#">이미지</a></td>
               <td><a href="#" class="btn-example" onclick="layer_open('layer1');return false;">일정</a></td>
               <td><a href="#" class="btn-example" onclick="layer_open('layer2');return false;">연락처</a></td>
            </tr>
         </table>
         <table>
            <tr>
               <td colspan="4" class="invite"><button class="invite_btn" onclick="location.href='listMember.do?leaderId=${mId}'">초대하기</button></td>
            </tr>
         </table>

         <table id="participant">
            <caption>전체 참여자 ${memberCount }명</caption>
            <tr>
               <th colspan="3" id="border_td">팀장(1)</th>
            </tr>
            <c:forEach var="phone" items="${phoneList }">
               <c:if test="${phone.tmLeader==1 }">
                  <tr>
                     <td><span class="team_leader">${fn:substring(phone.mName, 0, 1)}</span></td>
                     <td class="team_m">${phone.mName }</td>
                     <td>${phone.mEmail }</td>
                  </tr>
               </c:if>
            </c:forEach>
            
            <c:if test="${memberCount==1}">
               <tr>
                  <th colspan="3">외부 참여자(0)</th>
               </tr>
            </c:if>
            <c:if test="${memberCount>1}">
               <tr>
                  
                  <th colspan="3" id="border_td1">외부 참여자(${memberCount - 1 })</th>
               </tr>
            </c:if>
            <c:forEach var="phone" items="${phoneList }">
               <c:if test="${phone.tmLeader==0 }">
                  <tr id="leadertr1">
                     <td><span>${fn:substring(phone.mName, 0, 1)}</span></td>
                     <td class="team_m">${phone.mName }</td>
                     <td>${phone.mEmail }</td>
                  </tr>
               </c:if>
            </c:forEach>
         </table>
      </div>
      <%--    <div id="board_banner">
      <table border="1">
         <caption>전체참여자 : ${memberCount }명</caption>
         <tr><th>직책</th><th>회원이름</th><th>이메일</th></tr>
         <c:forEach var="phone" items="${phoneList }">
            <tr>
               <c:if test="${phone.tmLeader==1 }"><td>팀장( 1 )</td></c:if>
               <c:if test="${phone.tmLeader==0 }"><td>팀원( ${memberCount - 1 } )</td></c:if>
               
               <td>${fn:substring(phone.mName, 0, 1)} / ${phone.mName }</td>
               <td> ${phone.mName }</td>
               <%-- <td>${phone.mPhone1 }-${phone.mPhone2 }-${phone.mPhone3 }</td>
      </tr>
      </c:forEach>
      </table>
   </div>
   --%>
   
   <div class="layer">
      <div class="bg"></div>
      <div id="layer2" class="pop-layer">
         <div class="pop-container">
            <div class="pop-conts">
               <table>
               <tr><th>회원이름</th><th>이메일</th><th>전화번호</th></tr>
               <tr>
                  <th colspan="3">팀장</th>
               </tr>
               <c:forEach var="phone" items="${phoneList }">
                  <c:if test="${phone.tmLeader==1 }">
                     <tr>
                        <td>${phone.mName }</td>
                        <td>${phone.mEmail }</td>
                        <td>${phone.mPhone1 }-${phone.mPhone2 }-${phone.mPhone3 }</td>
                     </tr>
                  </c:if>
               </c:forEach>
                  <tr>
                  <th colspan="3">외부 참여자</th>
                  </tr>
                  <c:forEach var="phone" items="${phoneList }">
                  <c:if test="${phone.tmLeader==0 }">
                     <tr>
                        <td>${phone.mName }</td>
                        <td>${phone.mEmail }</td>
                        <td>${phone.mPhone1 }-${phone.mPhone2 }-${phone.mPhone3 }</td>
                     </tr>
                  </c:if>
               </c:forEach>
               </table>
               <div class="btn-r">
                  <a href="#" class="cbtn">Close</a>
               </div>
               <!--// content-->
            </div>
         </div>
      </div>
   </div>
   
   <div id="layer1" class="pop-layer">
      <div class="bg"></div>
	      <div class="pop-container">
	         <div class="pop-conts">
	            <!--일정모아보기-->
	            <table>
		            <tr><td>작성자</td><td>일정제목</td><td>일정날짜</td><td>일정장소</td><td>메모</td></tr>
		            <c:forEach var="board" items="${list }">
	            		<c:if test="${board.bNo==2 }">
	            	 		<tr>
	                        	<td >${board.mId }</td>
	                        	<td >${board.bTitle }</td>
	                           	<td ><fmt:parseDate value="${board.bStart }"
	                                 pattern="yyyy-MM-dd HH:mm:ss" var="myDate"></fmt:parseDate> <fmt:parseDate
	                                 value="${board.bEnd }" pattern="yyyy-MM-dd HH:mm:ss"
	                                 var="myDate2"></fmt:parseDate> <fmt:formatDate
	                                 value="${myDate }" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate
	                                 value="${myDate2 }" pattern="yyyy-MM-dd" /></td>
	                           	<td >${board.bLoc }</td>
	                           	<td >${board.bMemo }</td>
	                        </tr>
	                     </c:if>
	                  </c:forEach>   
	               </table>
	
	               <div class="btn-r">
	                  <a href="#" class="cbtn">Close</a>
	               </div>
	          </div>
	      </div>
	  </div>
	    

      <div id="board_content">

         <c:forEach var="board" items="${list }">
            <c:if test="${board.bNo==1 }">
               <table class="table">
                  <tr id="chk">
                  <td class="go_right2" colspan="4">
                  	<c:if test="${board.mId==mId }">
							<input type="button" id="go_right3" value="수정"
								onclick="location.href='updateForm.do?bId=${board.bId}&tId=${param.tId }'" />
							<input type="button" id="go_right3" value="삭제"
								onclick="location.href='delete.do?bId=${board.bId}&tId=${param.tId }'" /></td>
					</c:if>
                  </tr>
                  <tr id="profile">
                     <td rowspan="3" class="profile1">프로필사진</td>
                     <td colspan="1" class="id">${board.bId }</td>
                     <td colspan="2" class="name">${board.mId }</td>
                  <tr>
                     <td colspan="3" class="date">${board.bDate }</td>
                  </tr>
                  <tr class="con">
                     <td colspan="4" class="con1">${board.bContent }</td>
                  </tr>
                  <c:if test="${board.bfName!=null }">
                     <tr>
                        <td>첨부된 파일</td>
                        <td colspan="3" class="file1"><a
                           href="${conPath}/upload/${board.bfName }">${board.bfName }</a></td>

                     </tr>
                  </c:if>
                  <c:if test="${board.biName!=null }">
                     <tr>
                        <td>첨부된 이미지</td>
                        <td colspan="2" class="image1"><a
                           href="${conPath}/upload/${board.biName }"><img
                              src="${conPath}/upload/${board.biName }"></a></td>
                     </tr>
                  </c:if>
                </c:if>

                <c:if test="${board.bNo==2 }">
                     <table>
                        <tr id="chk">
                           <td id="center" colspan="4">
                           <c:if test="${board.mId==mId }"><input type="button" value="일정삭제"
                              onclick="location.href='delete.do?bId=${board.bId}'"
                              class="go_right1" /></c:if></td>
                        </tr>
                        <tr id="profile">
                           <td id="center" rowspan="3" class="profile1">프로필사진</td>
                           <td class="id">${board.bId }</td>
                           <td colspan="2" class="name">${board.mId }</td>
                        <tr>
                           <td colspan="3" class="date">${board.bDate }</td>
                        </tr>
                        <tr>
                           <td>일정제목</td>
                           <td colspan="2">${board.bTitle }</td>
                        </tr>
                        <tr>
                           <td id="center">일정</td>
                           <td colspan="3"><fmt:parseDate value="${board.bStart }"
                                 pattern="yyyy-MM-dd HH:mm:ss" var="myDate"></fmt:parseDate> <fmt:parseDate
                                 value="${board.bEnd }" pattern="yyyy-MM-dd HH:mm:ss"
                                 var="myDate2"></fmt:parseDate> <fmt:formatDate
                                 value="${myDate }" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate
                                 value="${myDate2 }" pattern="yyyy-MM-dd" /></td>
                        </tr>
                        <tr>
                           <td id="center">장소</td>
                           <td colspan="3">${board.bLoc }</td>
                        </tr>
                        <tr>
                           <td id="center">메모</td>
                           <td colspan="3">${board.bMemo }</td>
                        </tr>
                        </c:if>
                        <!-- 댓글 집어넣기 로직 -->
                        <tr><td colspan="4" class="id_color"><a>댓글</a></td></tr>
                        <c:forEach var="re" items="${relist}">
                           <c:if test="${re.bId == board.bId }">
                              <tr>
                                 <td id="center">${re.mId }</td>
                                 <td>${re.bRcontent }</td>
                                 <td id="bRdateWidth1"> ${re.bRDate}</td>
                                 <td id="bRdateWidth2">
                                 	<c:if test="${re.mId==mId }">
                                 		<a href='replydelete.do?brId=${re.brId}&tId=${param.tId}&mId=${mId}'>삭제</a></c:if></td>
                              </tr>
                           </c:if>
                        </c:forEach>
                        <form action="replyinsert.do" method="post">
                           <input type="hidden" name="mId" value="${mId}"> 
                           <input type="hidden" name="tId" value="${param.tId }"> 
                           <input type="hidden" name="bId" value="${board.bId }">
                           <tr>
                              <td colspan="2"><textarea name="bRcontent" cols="100" id="borderX"
                                    placeholder="댓글을 입력하세요" required="required"></textarea></td>
                              <td colspan="2"><input type="submit" value="댓글쓰기"
                                 class="btn btn-primary"></td>
                           </tr>
                        </form>

                     </table>

                     </c:forEach>
                     </div>
      </div>



   <%-- <jsp:include page="writeForm.jsp"></jsp:include>
   
   <div id="board_banner">
      <table border="1">
         <caption>전체참여자 : ${memberCount }명</caption>
         <tr><th>직책</th><th>회원이름</th><th>이메일</th></tr>
         <c:forEach var="phone" items="${phoneList }">
            <tr>
               <c:if test="${phone.tmLeader==1 }"><td>팀장( 1 )</td></c:if>
               <c:if test="${phone.tmLeader==0 }"><td>팀원( ${memberCount - 1 } )</td></c:if>
               
               <td>${fn:substring(phone.mName, 0, 1)} / ${phone.mName }</td>
               <td>${phone.mEmail }</td>
               <td>${phone.mPhone1 }-${phone.mPhone2 }-${phone.mPhone3 }</td>
            </tr>
         </c:forEach>
      </table>
   </div>
   
   <div id="board_content">
      <c:forEach var="board" items="${list }">
         <c:if test="${board.bNo==1 }">
            <table class=table>
               <tr id="chk">
                  <td colspan="3"><input type="button" value="수정" onclick="location.href='updateForm.do?bId=${board.bId}&tId=${param.tId }&mId=${mId }'" class="go_right"/> <input
                     type="button" value="삭제" onclick="location.href='delete.do?bId=${board.bId}&tId=${param.tId }&mId=${mId }'" /></td>
               </tr>
               <tr id="profile">
                  <td rowspan="2" class="profile1">프로필사진</td>
                  <td class="id">${board.bId }</td>
                  <td class="name">${board.mId }</td>
               <tr>
                  <td colspan="2" class="date">${board.bDate }</td>
               </tr>
               <tr class="con">
                  <td colspan="3" class="con1">${board.bContent }</td>
               </tr>
               <c:if test="${board.bfName!=null }">
                  <tr>
                     <td>첨부된 파일</td>
               <td colspan="2" class="file1"><a href="${conPath}/upload/${board.bfName }">${board.bfName }</a></td>

                  </tr>
               </c:if>
               <c:if test="${board.biName!=null }">
                  <tr><td>첨부된 이미지</td>
               <td colspan="2" class="image1"><a href="${conPath}/upload/${board.biName }"><img src="${conPath}/upload/${board.biName }"></a></td>
                  </tr>
               </c:if>
         </c:if>

         <c:if test="${board.bNo==2 }">
             <table>
                  <tr id="chk">
                     <td colspan="3"><input type="button" value="일정삭제" onclick="location.href='delete.do?bId=${board.bId}'" class="go_right" /></td>
                  </tr>
                  <tr id="profile">
                     <td rowspan="2" class="profile1">프로필사진</td>
                     <td class="id">${board.bId }</td>
                     <td class="name">${board.mId }</td>
                  <tr>
                     <td colspan="2" class="date">${board.bDate }</td>
                  </tr>
                  <tr>
                     <td>일정제목</td>
                     <td colspan="2">${board.bTitle }</td>
                  </tr>
                  <tr>
                     <td>일정</td>
                     <td colspan="2">
                     <fmt:parseDate value="${board.bStart }" pattern="yyyy-MM-dd HH:mm:ss" var="myDate"></fmt:parseDate>
                     <fmt:parseDate value="${board.bEnd }" pattern="yyyy-MM-dd HH:mm:ss" var="myDate2"></fmt:parseDate>
                     <fmt:formatDate value="${myDate }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${myDate2 }" pattern="yyyy-MM-dd"/></td>
                  </tr>
                  <tr>
                     <td>장소</td>
                     <td colspan="2">${board.bLoc }</td>
                  </tr>
                  <tr>
                     <td>메모</td>
                     <td colspan="2">${board.bMemo }</td>
                  </tr>
         </c:if>
         <!-- 댓글 집어넣기 로직 -->
         <c:forEach var="re" items="${relist}">
               <c:if test="${re.bId == board.bId }">
                <tr><td> ${re.mId }  </td>
                   <td width="620">댓글 내용 : ${re.bRcontent }          ${re.bRDate}</td>
                   <td><button onclick="location.href='replydelte.do?brId=${re.brId}'" >댓글삭제</button></td>
                </tr>
             </c:if>
         </c:forEach>
            <form action="replyinsert.do" method="post">
               <input type="hidden" name="mId" value="${mId}">
               <input type="hidden" name="tId" value="${param.tId }">
               <input type="hidden" name="bId" value="${board.bId }">
               
               <tr>
               <td colspan="2"><textarea  name="bRcontent"  cols="100" placeholder="댓글을 입력하세요" required="required"></textarea></td>
               <td><input   type="submit" value="댓글쓰기" class="btn btn-primary"></td></td>
               </form>
                  <tr>
            </table>
            
      </c:forEach>
   </div> --%>
>>>>>>> de9a4252a7f30c2785b28274882bfd7836d686e2
</body>
</html>