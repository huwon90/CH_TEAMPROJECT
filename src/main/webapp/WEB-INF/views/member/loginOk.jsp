<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	if(session.getAttribute("ValidMem")==null){
	response.sendRedirect("joinOk.do");
} %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, target-densitydpi=medium-dpi">
<title>BUS</title>
<link rel="stylesheet" href="css/Style.css">
<link rel="stylesheet" href="css/simpleBanner.css">
<link rel="stylesheet" href="css/content.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="js/simpleBanner.js"></script>
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	p{
		font-size:15px;
		color:white;
		font-family: 'Jeju Gothic', serif;
	}
	#content{
		background-image: url("image/work3.jpg");
	}
</style>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
<jsp:include page="headerloginOk.jsp" />
	<div>
		<p>${mName }님</p>
		<form action="logout.do">
			
			<input type="button" value="정보보기" onclick="location.href='detailMemberForm.do?mId=${mId }'">
			<input type="submit" value="로그아웃">
			
		</form>
	</div>
	<div id="content">
        <p>프로젝트 중심 협업 매니저 'BUS'</p>
    </div>
    <table id="content1">
        <tr id="icon">
            <td><img src="image/users.png" width="80" height="80" />
            <td><img src="image/share.png" width="80" height="80" /></td>
            <td><img src="image/folder.png" width="80" height="80" /></td>
            <td><img src="image/alarm.png" width="80" height="80" /></td>
        </tr>
        <tr id="texthelp">
            <td>
                누구나 팀장이 될 수 있습니다<br />
                팀원과 함께 프로젝트를 원활하게 진행하세요
            </td>
            <td>
                자유롭게 공유할 수 있습니다<br />
                프로젝트에 필요한 파일을 업로드하세요
            </td>
            <td>
                파일을 모아볼 수 있습니다<br />
                팀원들 간에 업로드 한 파일들을 한 눈에 정리할 수 있습니다
            </td>
            <td>
                실시간 알림이 가능합니다<br />
                승인 요청 메세지를 바로 확인할 수 있습니다
            </td>
        </tr>
    </table>
    <div id="intro">
        <table>
            <tr>
                <td>
                    <ul id="intro_ul">
                        <li id="intro_ul_title">팀 프로젝트는 BUS에서!</li>
                        <br />
                        <li id="intro_ul_con"><img src="image/success.png" width="20" height="20" /> BUS는 Business Useful Service입니다</li>
                        <br />
                        <li id="intro_ul_con"><img src="image/success.png" width="20" height="20" /> 실시간으로 올라오는 글을 한 눈에 볼 수 있습니다</li>
                        <br />
                        <li id="intro_ul_con"><img src="image/success.png" width="20" height="20" /> 프로젝트를 이끌어 갈 팀원들을 초대하세요</li>
                        <br />
                        <li id="intro_ul_con"><img src="image/success.png" width="20" height="20" /> 가입하고 싶은 팀을 검색해서 승인을 요청하세요</li>
                        <br />
                        <li id="intro_ul_con"><img src="image/success.png" width="20" height="20" /> 다수의 팀원들과 연락하고 싶을 때는 연락처 모아보기를 이용하세요</li>
                        <br />
                        <li id="intro_ul_con"><img src="image/success.png" width="20" height="20" /> 프로젝트에 필요한 게시글을 마음껏 공유하세요</li>
                        <br />
                        <li id="intro_ul_con"><img src="image/success.png" width="20" height="20" /> 팀원이 업로드 한 파일, 이미지, 일정을 카테고리별로 볼 수 있습니다</li>
                        <br />
                    </ul>
                </td>
                <td>
                    <div class="simple_banner_wrap banner02" data-type="vslide" data-interval="3000">
                        <ul>
                            <li><a href="#"><img src="image/b1.jpg" width="600" height="400" /></a></li>
                            <li> <a href="#"><img src="image/b3.jpg" width="600" height="400" /></a></li>
                            <li> <a href="#"><img src="image/b4.jpg" width="600" height="400" /></a></li>
                        </ul>
                    </div>
                </td>
            </tr>
        </table>


    </div>
    <jsp:include page="../member/footer.jsp" />
<!--     <div id="footer">
        <table>
            <tr>
                <td class="bus_footer"><img src="image/footer1.png" alt="로고2" width="150" height="150" />BUS</td>
                <td>
                    <ul>
                        <li> Google Chrome에 최적화된 홈페이지입니다.</li> <br />
                        <li> Copyright © 2jo check All Rights Reserved</li> <br />
                        <li> footer는 미완성이에양</li> 
                    </ul>
                </td>
            </tr>
        </table>

    </div> -->
</body>
</html>