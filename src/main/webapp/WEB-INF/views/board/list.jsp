<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="conPath" value="<%=request.getContextPath()%>" />
<c:if test="${param.msg=='댓글삭제성공' }">
	<script>alert('댓글이 삭제되었습니다');	</script>
</c:if>
<c:if test="${param.msg=='글삭제성공' }">
	<script>alert('글이 삭제되었습니다');	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BUS</title>
<link href="${conPath}/css/font-awesome.min.css" rel="stylesheet"
   type="text/css">
<link href="${conPath}/css/style.min.css" rel="stylesheet"
   type="text/css">
   
<style>
#board_content {
	margin-left: 320px;
}

#board_content table {
	width: 860px;
	height: 600px;
	border: 2px solid lightgray;
	margin: 0 auto;
	margin-top: 30px;
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
	padding-left: 10px;
}

#board_content table #file td {
	border: 1px solid lightgray;
}

#board_content td {
	border-bottom: 1px solid lightgray;
	border-right: 1px solid lightgray;
	color: black;
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
	margin-top: 20px;
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

#participant span{
	background-color: #bccad6;
	width: 30px;
	height: 30px;
	display: table-cell;
	border-radius: 15px;
	text-shadow: 0 0 7px white;
	font-size: 18px;
}
#board_content span {
	background-color: #bccad6;
	width: 30px;
	height: 30px;
	display: table-cell;
	border-radius: 80px;
	text-shadow: 0 0 7px white;
	font-size: 18px;
	vertical-align: center;
	text-align: center;
	margin: 0 auto;
	margin-left: 50px; 
}

#participant .team_leader {
	background-color: #8d9db6;
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

.input_text {
	height: 30px;
}

.go_right1 {
	margin-top: 20px;
	margin-bottom: 20px;
	height: 40px;
	width: 180px;
	color: #ef3e50;
}

.go_right2 {
	margin-top: 10px;
	margin-bottom: 10px;
	text-align: center;
	width: 60px;
	heigth: 60px;
}

#go_right3 {
	margin-right: 5px;
	height: 30px;
	width: 50px;
	color: #ef3e50;
}

.id_color a {
	margin-top: 80px;
	color: #ef3e50;
	text-align: left;
}

#bRdateWidth1 {
	width: 100px;
}

#bRdateWidth2 {
	width: 90px;
}

#bRdateWidth2 a {
	margin-left: 20px;
}

.btn-primary {
	padding: 10px;
	width: 150px;
	color: #ef3e50;
}

#center {
	text-align: center;
}

#borderX {
	height: 40px;
}

   .pop-layer {display:none; position: absolute; top: 30%; left: 45%; width: 410px; height:auto;  background-color:#fff; border: 5px solid #3571B5; z-index: 10;}   
   .pop-layer .pop-container {padding: 20px 25px;}
   .pop-layer p.ctxt {color: #666; line-height: 25px;}
   .pop-layer .btn-r {width: 100%; margin:10px 0 20px; padding-top: 10px; border-top: 1px solid #DDD; text-align:right;}

   a.cbtn {display:inline-block; height:25px; padding:0 14px 0; border:1px solid #304a8a; background-color:#3f5a9d; font-size:13px; color:#fff; line-height:25px;}   
   a.cbtn:hover {border: 1px solid #091940; background-color:#1f326a; color:#fff;}

.pop-layer .pop-container .pop-conts table tr td, th {
   padding: 3px 20px;
   border-bottom: 1px solid lightgray;
}
.pop-layer .pop-container .pop-conts table tr:nth-child(1){
	background-color: #C9C9C9;
}

#layer4 table tr:nth-child(2){
   background-color: #E0E0E0;
}
#layer4 table tr:nth-child(4){
   background-color: #E0E0E0;
}

#collect_date {
	width: 600px;
}
#layer3 {
	width:650px;
}
#layer4 table tr:nth-child(1){
	border-bottom: 2px solid  #667292;
}

</style>
<script type="text/javascript">
   function view_layer(name){ 
	   document.getElementById(name).style.display='block'; 
	 } 

	 function close_layer(name){ 
	   document.getElementById(name).style.display='none'; 
	 } 
</script>

</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
<jsp:include page="../member/headerloginOk.jsp" />

<div id="content_wrap">
      <div id="header_imsi"><jsp:include page="writeForm.jsp"></jsp:include></div>

      <div id="sub_menu">
         <table id="table1">
            <tr id="title_1">
               <th class="first_th" colspan="4">프로젝트 기능</th>
            </tr>
            <tr id="title_1img">
               <td><a href="#" class="btn-example" onclick="view_layer('layer1');"><img src="image/file.png" alt="file"
                     width="48" height="48" /></a></td>
               <td><a href="#" class="btn-example" onclick="view_layer('layer2');"><img src="image/image.png" alt="image"
                     width="52" height="52" /></a></td>
               <td><a href="#" class="btn-example" onclick="view_layer('layer3');"><img src="image/cal.png" alt="cal"
                     width="43" height="43 " /></a></td>
               <td><a href="#" class="btn-example" onclick="view_layer('layer4');"><img src="image/phone.png" alt="phone"
                     width="40" height="40" /></a></td>
            </tr>
            <tr id="submenu_tr">
               <td><a href="#" class="btn-example" onclick="view_layer('layer1');">파일</a></td>
               <td><a href="#" class="btn-example" onclick="view_layer('layer2');">이미지</a></td>
               <td><a href="#" class="btn-example" onclick="view_layer('layer3');">일정</a></td>
               <td><a href="#" class="btn-example" onclick="view_layer('layer4');">연락처</a></td>
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
                  <th colspan="3" id="border_td1">외부 참여자(0)</th>
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
      
      <!-- 파일 모아보기 -->
      <div id="layer1" class="pop-layer">
           <div class="pop-container">
              <div class="pop-conts">
                 <table id="collect_image" width="100%">
                    <caption>파일 모아보기</caption>
                    <tr><td>파일명</td></tr>
                    <c:if test="${empty fileList}">
						<tr><td>파일이 없습니다</td></tr>
					</c:if>
                    <c:forEach var="fileList" items="${fileList }">
                       <tr>
                             <td><a href="${conPath}/upload/${fileList.bfName }">${fileList.bfName }</a></td></tr>
                    </c:forEach>
                 </table>
                 <div class="btn-r">
                    <a href="#" onclick="close_layer('layer1');">Close</a>
                 </div>
              </div>
           </div>
        </div>

		<!-- 이미지 모아보기 -->
        <div id="layer2" class="pop-layer">
           <div class="pop-container">
              <div class="pop-conts">
                 <table id="collect_image">
                    <caption>이미지 모아보기</caption>
                    <tr><td>파일명</td><td>이미지</td></tr>
                    <c:if test="${empty imageList}">
						<tr><td colspan="2">이미지가 없습니다</td></tr>
					</c:if>
                    <c:forEach var="imageList" items="${imageList }">
                       <tr>
                       		<td>${imageList.biName }</td>
                       		<td><img src="${conPath}/upload/${imageList.biName }"></td></tr>
                    </c:forEach>
                 </table>
                 <div class="btn-r">
                    <a href="#" onclick="close_layer('layer2');">Close</a>
                 </div>
              </div>
           </div>
        </div>
   
   		<!-- 일정 모아보기 -->
	   <div id="layer3" class="pop-layer">
	      <div class="bg"></div>
		      <div class="pop-container" id="collect_date_wrap">
		         <div class="pop-conts" id="collect_date_wrap">
		            <!--일정모아보기-->
		            <table id="collect_date">
			            <tr><td>작성자</td><td>일정제목</td><td>일정날짜</td><td>일정장소</td><td>메모</td></tr>
			             <c:if test="${empty list}">
							<tr><td colspan="5">일정이 없습니다</td></tr>
						</c:if>
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
		                  <a href="#" onclick="close_layer('layer3');">Close</a>
		               </div>
		          </div>
		      </div>
		  </div>
	  
	  	  <!-- 연락처 모아보기 -->
	      <div id="layer4" class="pop-layer">
	         <div class="pop-container">
	            <div class="pop-conts">
	               <table id="phone_list">
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
	                  <a href="#" onclick="close_layer('layer4');">Close</a>
	               </div>
	               <!--// content-->
	            </div>
	         </div>
	      </div>

      <div id="board_content">
         <c:forEach var="board" items="${list }">
            <c:if test="${board.bNo==1 }">
               <table class="table">
               <c:if test="${board.mId==mId }">
                  <tr id="chk">
                  <td class="go_right2" colspan="4">
                  	
							<input type="button" id="go_right3" value="수정"
								onclick="location.href='updateForm.do?bId=${board.bId}&tId=${param.tId }&mId=${mId }'" />
							<input type="button" id="go_right3" value="삭제"
								onclick="location.href='delete.do?bId=${board.bId}&tId=${param.tId }&mId=${mId }'" /></td>
					
                  </tr>
                  </c:if>
                  <tr id="profile" class="id" data-bId="${board.bId}">
                     <td rowspan="2"  class="profile1" id="center"><center><span class="team_leader" id="profile_photo">${fn:substring(board.mId, 0, 1)}</span></center></td>
                     <td colspan="3" class="name">${board.mId }/${board.bId}</td>
                  <tr>
                     <td colspan="3" class="date">${board.bDate }</td>
                  </tr>
                  <tr class="con">
                     <td colspan="4" class="con1">${board.bContent }</td>
                  </tr>
                  <c:if test="${board.bfName!=null }">
                     <tr>
                        <td id="center">첨부된 파일</td>
                        <td colspan="3" class="file1"><a
                           href="${conPath}/upload/${board.bfName }">${board.bfName }</a></td>

                     </tr>
                  </c:if>
                  <c:if test="${board.biName!=null }">
                     <tr>
                        <td id="center">첨부된 이미지</td>
                        <td colspan="3" class="image1"><a
                           href="${conPath}/upload/${board.biName }"><img
                              src="${conPath}/upload/${board.biName }"></a></td>
                     </tr>
                  </c:if>
                </c:if>

                <c:if test="${board.bNo==2 }">
                     <table>
                     <c:if test="${board.mId==mId }">
                        <tr id="chk">
                           <td id="center" colspan="4">
                           <input type="button" value="일정삭제"
                              onclick="location.href='delete.do?bId=${board.bId}'"
                              class="go_right1" /></td>
                        </tr></c:if>
                        <tr id="profile" class="id" data-bId="${board.bId}">
                           <td id="center" rowspan="2" class="profile1"><center><span class="team_leader" id="profile_photo">${fn:substring(board.mId, 0, 1)}</span></center></td>
                           <td colspan="3" class="name">${board.mId } ${board.bId}</td>
                        <tr>
                           <td colspan="4" class="date">${board.bDate }</td>
                        </tr>
                        <tr>
                           <td id="center">일정제목</td>
                           <td colspan="3">${board.bTitle }</td>
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


<script>

var easeEffect = 'easeInQuint';

var tId = ${param.tId};
/* var mId = ${mId} */

var lastScrollTop = 0; //이전 스크롤 좌표

$(window).scroll(function(){ // 1. 스크롤이벤트가 발생하면
	
    var currentScrollTop = $(window).scrollTop();   //현재 스크롤 좌표
    
    if( currentScrollTop - lastScrollTop > 0 ){
        // down-scroll : 현재 게시글 다음의 글을 불러온다.
			console.log("scroll down");
        // 2. 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
        if ($(window).scrollTop() >= ($(document).height() - $(window).height()) ){ //② 현재스크롤의 위치가 화면의 보이는 위치보다 크다면
        	console.log("scroll down");
        	var lastbId = $(".id:last").attr("data-bId");
    		console.log(lastbId+"마지막 bId");	
     		location.href = "boardlist2.do?tId="+tId+"&mId=user&bId="+lastbId; 
/*     		location.href = "boardlist2.do?tId="+tId+"&mId="+ mId+"&bId="+lastbId; */
        }
    }
    //업스크롤
    else{
    	console.log("scroll up");
        	 if ($(window).scrollTop() <= 1 ){ 
        		 var firstbId = $(".id:first").attr("data-bId");
        		 console.log(firstbId+"첫번쨰 bId");
         		location.href = "boardlist3.do?tId="+tId+"&mId=user&bId="+firstbId;
/*          		location.href = "boardlist2.do?tId="+tId+"&mId="+ mId+"&bId="+firstbId; */
        	 }
        }
       
    });	
        
</script>

</body>
</html>