<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/upload.js"></script>
     <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> 
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<style>

small {
	margin-left: 3px;
	font-weight: bold;
	color: gray;
}

ul li {list-style:none}

 .mailbox-attachments li {
	float: left;
	width: 150px;
	border: 1px solid #eee;
	margin-bottom: 10px;
	margin-right: 10px
}

.mailbox-attachment-name {
	font-weight: bold;
	color: #666
}

.mailbox-attachment-icon, .mailbox-attachment-info,
	.mailbox-attachment-size {
	display: block
}

.mailbox-attachment-info {
	padding: 10px;
	background: #f4f4f4
}

.mailbox-attachment-size {
	color: #999;
	font-size: 12px
}

.mailbox-attachment-icon {
	text-align: center;
	font-size: 65px;
	color: #666;
	padding: 20px 10px
}

.mailbox-attachment-icon.has-img {
	padding: 0
}

.mailbox-attachment-icon.has-img>img {
	max-width: 100%;
	height: auto
}
 

.o-container {
	margin-top: 200px;
}

.o-container #text_file {
	width: 800px;
	height: 100px;
	border-style: none;
}

.o-container #text_aline {
	width: 800px;
	height: 30px;
	margin-bottom:10px;
	border-style: none;
}

.o-container .big_write {
	width: 210px;
}

.o-container .go_right {
	float: right;
	margin: 5px;
	padding: 15px 45px;
}
.mainpanimage{
	margin-bottom:8px;
}
.subpanimage{
	margin-right:10px;
}
.subpanimage2{
	margin-top:9px;
	margin-right:10px;
}
#date_1{
	margin-bottom:17px;
	height:30px;
}
span{
	text-decoration:none;
}
 .uploadedList {
  width: 80%;
  height: 100px;
    margin: 10px auto auto auto;
} 

</style>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<div class="o-container">
		<div class="o-section">
			<div id="tabs" class="c-tabs no-js">
				<div class="c-tabs-nav">
					<a href="#" class="c-tabs-nav__link is-active"><img src="image/board_mainfile.png" class="mainpanimage" alt="image" width="25" height="25">
					<span>글 작성</span></a> 
					<a href="#" class="c-tabs-nav__link"><img src="image/board_calendar.png" class="mainpanimage" alt="image" width="25" height="25">
					<span>일정 작성</span></a>
				</div>


				<div class="c-tab is-active">
					<div class="c-tab__content">					
					<!--<form action="createfile.do" method="post" name="frm" enctype="multipart/form-data"> -->
					 	<form action="createfile.do"  role="form" id='registerForm' method="post"  > 
							<input type="hidden" name="mId" value="${mId }">
							<input type="hidden" name="tId" value="${param.tId }">
<!-- 							<input type="hidden" name="oriName" value=""> -->
							<table>
								<tr>
									<td colspan="5"><textarea id="text_file" name="bContent"
											placeholder="글을 작성해보세요." required="required" wrap="hard"></textarea></td>
								</tr>
								<tr>
									<td><img src="image/board_file.png" class="subpanimage"
										width="25" height="25" alt="파일" /></td>
									<td class='filebox' style="width: 1000px; height: 180px; border: solid 1px black;" >
									이곳에 파일을 넣으세요			
<!-- 									<div class='filebox' style="width: 500px; height: 180px; border: solid 1px black;">
									여기에 파일을 넣으세요
											</div> 
											<a href="register.do">레기스트로</a> -->
										
											
								<ul class="mailbox-attachments clearfix uploadedList">	
								</ul>
											</td>	
									<td class="big_write"><input type="submit" value="글쓰기"
										class="go_right"></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
				<div class="c-tab">
					<div class="c-tab__content">
						<form action="write_schedule.do" method="post" name="frm">
							<input type="hidden" name="mId" value="${mId }">
							<input type="hidden" name="tId" value="${param.tId }">
							<table>
								<tr>
									<td colspan="5"><textarea id="text_aline" name="bTitle"
											placeholder="일정 제목을 입력하세요." required="required"></textarea></td>
								</tr>
								<tr>
									<td colspan="5"><img src="image/board_date.png" class="subpanimage2" alt="아이콘" width="20" height="20" />
									<input type="date" id="date_1" name="bStart" required="required"> ~ <input type="date" id="date_1" name="bEnd" required="required"></td>
								</tr>
								<tr>
									<td colspan="5"><textarea id="text_aline" name="bLoc"
											placeholder="장소를 입력하세요." required="required"></textarea></td>
								</tr>
								<tr>
									<td colspan="5"><textarea id="text_aline" name="bMemo"
											placeholder="메모를 입력하세요." required="required"></textarea></td>
								</tr>
								<tr>
									<td colspan="5"><input type="submit" value="글쓰기"
										class="go_right"></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	

	<!-- 파일 뿌려주기 로직 -->
    <script src="js/jQuery-2.1.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li class="box">
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info"  data-src="{{fileName}}">
	<a href="{{getLink}}" data-src="{{fileName}}" class="mailbox-attachment-name">{{fileName}}</a>
	<small data-src="{{fullName}}" class="delbtn"> <i class="fa fa-fw fa-remove"></i> </small>

	</span>
  </div>
</li>                
</script>    


	<script>
	//filesubmit을 누르면 ...
	$("#registerForm").submit(function(event){		
		event.preventDefault(); //  클릭 이벤트 외에 다른 브라우저의 활동을 막는다
		console.log("submit 시작");		
		jQuery.ajaxSettings.traditional = true;		
		var that = $(this);			
		var str ="";
		var str2= "";
		$(".uploadedList .mailbox-attachment-info").each(function(){
			 str2 +="<input type='text' name='oriName' value='"+$(this).attr("data-src")+"'> ";
		});
/* 		var fileno=	$(mailbox-attachment-info).attr("data-src"); */

		$(".uploadedList .delbtn").each(function(){
		 	 str +="<input type='text' name='files' value='"+$(this).attr("data-src") +"'> ";
			 alert(str);
		});
	

		that.append(str);
		that.append(str2);
		that.get(0).submit();  
	});

	$("#viewfile").click(function(){
		var that = $("#registerForm");
		var str ="";
		$(".uploadedList .delbtn").each(function(index){
			 str += "<input type='hidden' name='files["+index+"]' value='"+$("#registerForm").attr("href") +"'> ";
		});
		console.log(str);
		that.append(str);
         
        });
	
	//파일 삭제하는 로직
	$(".uploadedList").on("click", "small", function(event){
		
		var fullName = $(this).attr("data-src")
		 var that = $(this);
		 
		 
		 fileName = $(this).attr("data-src")
		  console.log(fileName);
		 
	   $.ajax({
		   url:"deleteFile.do",
		   type:"post",
		   data: {fileName:$(this).attr("data-src")},
		   dataType:"text",
		   success:function(result){
			   if(result == 'deleted'){
				   that.parent().parent().remove();
			   }
		   }
	   });
});
	
	var template1 = Handlebars.compile($("#template").html());

	
		$(".filebox").on("dragenter dragover", function(event) {
			event.preventDefault();
		});

		$(".filebox").on("drop", function(event){
			event.preventDefault();
			
			var files = event.originalEvent.dataTransfer.files;
			
			var file = files[0];

			var formData = new FormData();
			
			formData.append("file", file);
			
			  console.log("에이작스 시도");
			
			$.ajax({
				  url: 'uploadAjax.do',
				  data: formData,
				  dataType:'text',
				  processData: false,
				  contentType: false,
				  type: 'POST',
				  success: function(data){
					  
					  console.log("에이작스 성공");
					  var fileInfo = getFileInfo(data);
					  
					  var html = template1(fileInfo); //템플릿에다 info 넣어서 html 코드만듬
					  
					  $(".uploadedList").append(html);  //템플릿을 append
				  }
				});	
		});
		
	
	
			//upload.js
			function checkImageType(fileName){
				
				var pattern = /jpg|gif|png|jpeg/i;
				
				return fileName.match(pattern);

			}

			function getFileInfo(fullName){
					
				var fileName,imgsrc, getLink;
				
				var fileLink;
				
				if(checkImageType(fullName)){
					imgsrc = "/teampro123/displayFile.do?fileName="+fullName;  //왠지는 모르겠는데 /bus1 을 앞에다 붙여야함...
					fileLink = fullName.substr(14);
					
					var front = fullName.substr(0,12); // /2015/07/01/ 
					var end = fullName.substr(14);
					
					getLink = "/teampro123/displayFile.do?fileName="+front + end;
					console.log(getLink);
					
				
				}else{ //이미지 파일이 아니라면 
					imgsrc ="image/file3.png";
					fileLink = fullName.substr(12);
					getLink = "/teampro123/displayFile.do?fileName="+fullName;
					console.log(getLink);
				}
				fileName = fileLink.substr(fileLink.indexOf("_")+1);
				
				return  {fileName:fileName, imgsrc:imgsrc, getLink:getLink, fullName:fullName};
				
			}
			//upload end
	</script>


	<script src="js/tabs.js"></script>
	<script>
		var myTabs = tabs({
			el : '#tabs',
			tabNavigationLinks : '.c-tabs-nav__link',
			tabContentContainers : '.c-tab'
		});

		myTabs.init();
	</script>
</body>
</html>