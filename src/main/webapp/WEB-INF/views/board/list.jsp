<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD
<%-- <link href="${conPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css"> --%>
<link href="${conPath}/css/style.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script type="text/javascript" src="js/jquery.min.js"></script>	

=======
<link href="${conPath}/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="${conPath}/css/style.min.css" rel="stylesheet"
	type="text/css">
>>>>>>> 80ef0023d75601ecb6fc6b46b58a9dd724663075
<style>
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

</style>
</head>
<body>
<jsp:include page="../member/header.jsp" />
<<<<<<< HEAD
<jsp:include page="writeForm.jsp"></jsp:include> 
	

	
=======

	<jsp:include page="writeForm.jsp"></jsp:include>
	
	<div id="board_banner">
		<table border="1">
			<caption>참여인원</caption>
			<tr><th>직책</th><th>회원ID</th><th>회원이름</th><th>연락처</th></tr>
			<c:forEach var="phone" items="${phoneList }">
				<tr>
					<c:if test="${phone.tmLeader==1 }"><td>팀장</td></c:if>
					<c:if test="${phone.tmLeader==0 }"><td>팀원</td></c:if>
					<td>${phone.mId}</td>
					<td>${phone.mName }</td>
					<td>${phone.mPhone1 }-${phone.mPhone2 }-${phone.mPhone3 }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
>>>>>>> 80ef0023d75601ecb6fc6b46b58a9dd724663075
	
	<div id="board_content">
		<c:forEach var="board" items="${list }">
			<c:if test="${board.bNo==1 }">
				<table class=table>
					<tr id="chk">
						<td colspan="3"><input type="button" value="수정" onclick="location.href='updateForm.do?bId=${board.bId}&tId=${param.tId }'" class="go_right"/> <input
							type="button" value="삭제" onclick="location.href='delete.do?bId=${board.bId}&tId=${param.tId }'" /></td>
					</tr>
					<tr id="profile">
						<td rowspan="2" class="profile1">프로필사진</td>
<<<<<<< HEAD
							<td class="scrolling" data-bId="${board.bId }"  >${board.bId }</td>
=======
						<td class="id">${board.bId }</td>
>>>>>>> 80ef0023d75601ecb6fc6b46b58a9dd724663075
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
<<<<<<< HEAD
			
    <table class="table">
=======
    			<table>
>>>>>>> 80ef0023d75601ecb6fc6b46b58a9dd724663075
						<tr id="chk">
							<td colspan="3"><input type="button" value="일정삭제" onclick="location.href='delete.do?bId=${board.bId}'" class="go_right" /></td>
						</tr>
						<tr id="profile">
							<td rowspan="2" class="profile1">프로필사진</td>
						<td class="scrolling" data-bId="${board.bId }"  >${board.bId }</td>
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
   				<td><input   type="submit" value="댓글쓰기" class="btn btn-primary"></td></tr>
   				</form>
   				   
				</table>
				
		</c:forEach>
		

 

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody>
                <tr class="scrollLocation">
                  <th>BNO</th>
                  <th>TITLE</th>
                  <th>WRITER</th>
                  <th>REGDATE</th>
                  <th>VIEWCNT</th>
                </tr>
                
                
 
                
              </tbody></table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
	</div>
	
	<script>
 
    /*var result = '${msg}';
     
     if(result="success"){
        alert(result);
        console.log(result);
    } */
     
     
     
    var lastScrollTop = 0;
    var easeEffect = 'easeInQuint';
     
    // 1. 스크롤 이벤트 발생
    $(window).scroll(function(){ // ① 스크롤 이벤트 최초 발생
         
        var currentScrollTop = $(window).scrollTop();
         
        /*  
            =================   다운 스크롤인 상태  ================
        */
        if( currentScrollTop - lastScrollTop > 0 ){
        	
            // down-scroll : 현재 게시글 다음의 글을 불러온다.
            console.log("스크롤 down");
             
            // 2. 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
            if ($(window).scrollTop() >= ($(document).height() - $(window).height()) ){ //② 현재스크롤의 위치가 화면의 보이는 위치보다 크다면
                
            	console.log("스크롤 완전 down");
                // 3. class가 scrolling인 것의 요소 중 마지막인 요소를 선택한 다음 그것의 data-bno속성 값을 받아온다.
                //      즉, 현재 뿌려진 게시글의 마지막 bno값을 읽어오는 것이다.( 이 다음의 게시글들을 가져오기 위해 필요한 데이터이다.)
/*                 var lastbId = $(".scrolling:last").attr("data-bId"); */
                var lastbId = $(".scrolling:last").attr("data-bId");
                // 4. ajax를 이용하여 현재 뿌려진 게시글의 마지막 bId를 서버로 보내어 그 다음 20개의 게시물 데이터를 받아온다. 
                $.ajax({
                    type : 'post',  // 요청 method 방식 
                    
                    url : 'infiniteScrollDown.do',// 요청할 서버의 url
                    headers : { 
                        "Content-Type" :  'application/json; charset=utf-8',
                        "X-HTTP-Method-Override" : "POST"
                    },
                    dataType : 'json',
                    data : JSON.stringify({ // 서버로 보낼 데이터 명시 
                    	bId : lastbId
                    }),
                    success : function(data){// ajax 가 성공했을시에 수행될 function이다. 이 function의 파라미터는 서버로 부터 return받은 데이터이다.
                         
                        var str = "";
                         
                        // 5. 받아온 데이터가 ""이거나 null이 아닌 경우에 DOM handling을 해준다.
                        if(data != ""){
                            //6. 서버로부터 받아온 data가 list이므로 이 각각의 원소에 접근하려면 each문을 사용한다.
                            $(data).each( //data의 숫자만큼 반복
                                // 7. 새로운 데이터를 갖고 html코드형태의 문자열을 만들어준다.
                                    function(){
                                        console.log(this);      
                                        str +=  "<tr class=" + "'listToChange'" + ">"
                                            +       "<td class=" +  "'scrolling'" + " data-bno='" + this.bId +"'>"
                                            +           this.bId
                                            +       "</td>"
                                            +       "<td>" + this.bTitle + "</td>"      
                                            +       "<td>" + this.mId + "</td>"
                                            +       "<td>" + this.bDate + "</td>"
                                            +       "<td>" + this.bContent + "</td>"
                                            +   "</tr>";
                                             
                                });// each
                            // 8. 이전까지 뿌려졌던 데이터를 비워주고, <th>헤더 바로 밑에 위에서 만든 str을  뿌려준다.
                            $(".listToChange").empty();// 셀렉터 태그 안의 모든 텍스트를 지운다.                        
                            $(".scrollLocation").after(str);
                                 
                        }// if : data!=null
                        else{ // 9. 만약 서버로 부터 받아온 데이터가 없으면 그냥 아무것도 하지말까..
                            alert("더 불러올 데이터가 없습니다.");
                        }// else
         
                    }// success
                });// ajax
                 
                // 여기서 class가 listToChange인 것중 가장 처음인 것을 찾아서 그 위치로 이동하자.
                var position = $(".listToChange:first").offset();// 위치 값
                 
                // 이동  위로 부터 position.top px 위치로 스크롤 하는 것이다. 그걸 500ms 동안 애니메이션이 이루어짐.
                $('html,body').stop().animate({scrollTop : position.top }, 600, easeEffect);
     
            }//if : 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
             
            // lastScrollTop을 현재 currentScrollTop으로 갱신해준다.
            lastScrollTop = currentScrollTop;
        }// 다운스크롤인 상태
         
        /*  
            =================   업 스크롤인 상태   ================
        */
        else{
            // up- scroll : 현재 게시글 이전의 글을 불러온다.
            console.log("up-scroll");           
 
            // 2. 현재 스크롤의 top 좌표가  <= 0 되는 순간
            if ($(window).scrollTop() <= 0 ){ // 
                 
                // 3. class가 scrolling인 것의 요소 중 첫 번째 요소를 선택한 다음 그것의 data-bno속성 값을 받아온다.
                //      즉, 현재 뿌려진 게시글의 첫 번째 bno값을 읽어오는 것이다.( 이 전의 게시글들을 가져오기 위해 필요한 데이터이다.)
                var firstbId = $(".scrolling:first").attr("data-bId");
                 
                // 4. ajax를 이용하여 현재 뿌려진 게시글의 첫 번째 bno를 서버로 보내어 그 이전의 20개의 게시물 데이터를 받아온다. 
                $.ajax({
                    type : 'post',  // 요청 method 방식 
                    url : 'infiniteScrollUp.do',// 요청할 서버의 url
                    headers : { 
                        "Content-Type" : "application/json",
                        "X-HTTP-Method-Override" : "POST"
                    },
                    dataType : 'json', // 서버로부터 되돌려받는 데이터의 타입을 명시하는 것이다.
                    data : JSON.stringify({ // 서버로 보낼 데이터 명시 
                        bId : firstbId
                    }),
                    success : function(data){// ajax 가 성공했을시에 수행될 function이다. 이 function의 파라미터는 서버로 부터 return받은 데이터이다.
                         
                        var str = "";
                         
                        // 5. 받아온 데이터가 ""이거나 null이 아닌 경우에 DOM handling을 해준다.
                        // 이때 서버에서 값이 없으면 null을 던질줄 알았는데 ""를 던진다. 따라서 (data != null) 이라는 체크를 해주면 안되고, (data != "") 만 해주어야한다.
                        // 이건아마 컨트롤러의 리턴타입이 @ResponseBody로 json형태로 던져지는데 이때 아마 아무것도 없는게 ""로 명시되어 날아오는것 같다.
                        if(data != ""){
                             
                            //6. 서버로부터 받아온 data가 list이므로 이 각각의 원소에 접근하려면 each문을 사용한다.
                            $(data).each(
                                // 7. 새로운 데이터를 갖고 html코드형태의 문자열을 만들어준다.
                                function(){
                                    console.log(this);      
                                    str +=  "<tr class=" + "'listToChange'" + ">"
                                        +       "<td class=" +  "'scrolling'" + " data-bId='" + this.bId +"'>"
                                        +           this.bId
                                        +       "</td>"
                                        +   "</tr>";
                                         
                            });// each
                            // 8. 이전까지 뿌려졌던 데이터를 비워주고, <th>헤더 바로 밑에 위에서 만든 str을  뿌려준다.
                            $(".listToChange").empty();// 셀렉터 태그 안의 모든 텍스트를 지운다.                        
                            $(".scrollLocation").after(str);
                                 
                        }//if : data != ""
                        else{ // 9. 만약 서버로 부터 받아온 데이터가 없으면 그냥 아무것도 하지말까..??
                             
                            alert("더 불러올 데이터가 없습니다.");
                        }// else
     
                    }// success
                });// ajax
                 
                // 스크롤 다운이벤트 때  ajax통신이 발생하지 않을때 까지의 좌표까지 스크롤을 내려가주기. 
                var position =($(document).height() - $(window).height()) -10;
                 
                // 이동  위로 부터 position.top px 위치로 스크롤 하는 것이다. 그걸 500ms 동안 애니메이션이 이루어짐.
                $('html,body').stop().animate({scrollTop : position}, 600, easeEffect);
                 
            }//if : 현재 스크롤의 top 좌표가  <= 0 되는 순간
         
            // lastScrollTop을 현재 currentScrollTop으로 갱신해준다.
            lastScrollTop = currentScrollTop;
        }// else : 업 스크롤인 상태
         
});// scroll event
 
</script>
	
	
</body>
</html>