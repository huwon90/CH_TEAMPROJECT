<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
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

small {
	margin-left: 3px;
	font-weight: bold;
	color: gray;
}
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: auto;
  
}
</style>
</head>
<body>




	<div class="o-container">

		<div class="o-section">
			<div id="tabs" class="c-tabs no-js">
				<div class="c-tabs-nav">
					<a href="#" class="c-tabs-nav__link is-active"> <i
						class="fa fa-home"></i> <span>글 작성</span>
					</a> <a href="#" class="c-tabs-nav__link"> <i class="fa fa-book"></i>
						<span>일정 작성</span>
					</a>
				</div>


				<div class="c-tab is-active">
					<div class="c-tab__content">
				
					<!-- 	<form action="createfile.do" method="post" name="frm" enctype="multipart/form-data"> -->
					 	<form action="createfile.do"  role="form" id='registerForm' method="post"  > 
							<input type="hidden" name="mId" value="${mId }">
							<!-- 합칠 때 이거랑 sql문도 바꿔야한다 -->
							<input type="hidden" name="tId" value="${param.tId }">
							<table>
								<tr>
									<td colspan="5"><textarea id="text_file" name="bContent"
											placeholder="글을 작성해보세요." required="required"></textarea></td>
								</tr>
								<tr>
									<td><img src="" alt="파일" /></td>
									 <td><div class='uploadedList'style="width: 300px; height: 150px; background-color: greenblue;">여기에 파일을 넣으세요</div></td> 

									
                     <!-- 		    <td><input type="file" name="biName" value="이미지첨부"></td> -->
									<td class="big_write">
									<input type="submit" value="글쓰기" class="go_right"></td>
								</tr>
							</table>
							<ul class="uploadedList"> <!-- 파일업로드 하면 여기로 들어간다 -->
							</ul>
						</form>
					</div>
				</div>
				<div class="c-tab">
					<div class="c-tab__content">
						<form action="write_schedule.do" method="post" name="frm">
							<input type="hidden" name="mId" value="${mId }">
							<!-- 합칠 때 이거랑 sql문도 바꿔야한다 -->
							<input type="hidden" name="tId" value="${param.tId }">
							<table>
								<tr>
									<td colspan="5"><textarea id="text_aline" name="bTitle"
											placeholder="일정 제목을 입력하세요." required="required"></textarea></td>
								</tr>
								<tr>
									<td colspan="5"><img src="" alt="아이콘" /> <input
										type="date" name="bStart" required="required"> ~ <input
										type="date" name="bEnd" required="required"></td>
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
	

	


	<ul class="file_list">
	<li>파일1</li>
	<li>파일2</li>
	</ul>
	


	
	<button id="viewfile"> 파일보기</button>



	<a href="register.do">레지스터로 가자</a>

	<!-- 파일 뿌려주기 로직 -->
    <script src="js/jQuery-2.1.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li class="temli">
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>                
</script>   
	
	<script>


	//upload.js
		function checkImageType(fileName){
			
			var pattern = /jpg|gif|png|jpeg/i;
			
			return fileName.match(pattern);

		}

		function getFileInfo(fullName){
				
			var fileName,imgsrc, getLink;
			
			var fileLink;
			
			if(checkImageType(fullName)){
				imgsrc = "/bus1/displayFile.do?fileName="+fullName;  //왠지는 모르겠는데 /bus1 을 앞에다 붙여야함...
				fileLink = fullName.substr(14);
				
				var front = fullName.substr(0,12); // /2015/07/01/ 
				var end = fullName.substr(14);
				
				getLink = "/bus1/displayFile.do?fileName="+front + end;
				console.log(getLink);
				
			
			}else{ //이미지 파일이 아니라면 
				imgsrc ="image/file3.png";
				fileLink = fullName.substr(12);
				getLink = "/bus1/displayFile.do?fileName="+fullName;
				console.log(getLink);
			}
			fileName = fileLink.substr(fileLink.indexOf("_")+1);
			
			return  {fileName:fileName, imgsrc:imgsrc, getLink:getLink, fullName:fullName};
			
		}
		//upload end
		
			var template = Handlebars.compile($("#template").html());
		
		
		
		$(".uploadedList").on("dragenter dragover", function(event) {
			event.preventDefault();
		});

		$(".uploadedList").on("drop", function(event){
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
					  
					  var html = template(fileInfo); //템플릿에다 info 넣어서 html 코드만듬
					  
					  $(".uploadedList").append(html);  //템플릿을 append
				  }
				});	
		});
		

	//filesubmit을 누르면 ...
			$("#registerForm").submit(function(event){
				
				event.preventDefault(); //  클릭 이벤트 외에 다른 브라우저의 활동을 막는다

				console.log("submit 시작");
				
				jQuery.ajaxSettings.traditional = true;
				
				var that = $(this);
				
				var str ="";
				
/* 				var str ="<input type='text' name='bLoc' value='fiename' >"; */
				
/* 				 $(".uploadedList .delbtn").each(function(index){
					 str += "<input type='text' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
				});   
				 */
				$(".uploadedList .delbtn").each(function(){
				 	 str +="<input type='text' name='files' value='"+$(this).attr("href") +"'> ";
				});

				
				alert(str);  //문자열 확인
				
				
				that.append(str);

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