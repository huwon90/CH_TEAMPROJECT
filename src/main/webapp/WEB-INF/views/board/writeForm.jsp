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
						<form action="write_file.do" method="post" name="frm" enctype="multipart/form-data">
							<input type="hidden" name="mId" value="${mId }">
							<input type="hidden" name="tId" value="${param.tId }">
							<table>
								<tr>
									<td colspan="5"><textarea id="text_file" name="bContent"
											placeholder="글을 작성해보세요." required="required" wrap="hard"></textarea></td>
								</tr>
								<tr>
									<td><img src="image/board_file.png" class="subpanimage" width="25" height="25" alt="파일" /></td>
									<td><input type="file" name="bfName" value="파일첨부">
									</td>
									<td><img src="image/board_picture.png" class="subpanimage" width="25" height="25" alt="사진" /></td>
									<td><input type="file" name="biName" value="이미지첨부"></td>
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