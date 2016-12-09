<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>


<div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">LIST ALL PAGE</h3>
 
              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">
 
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
        <img src="http://ncc.phinf.naver.net/20141224_185/1419389123819bkD1W_JPEG/main00.jpg?type=w646">
         <img src="http://ncc.phinf.naver.net/20141224_185/1419389123819bkD1W_JPEG/main00.jpg?type=w646">
        <img src="http://ncc.phinf.naver.net/20141224_185/1419389123819bkD1W_JPEG/main00.jpg?type=w646">     
      
 <script >
   
    var lastScrollTop = 0;
    var easeEffect = 'easeInQuint';
    
		console.log("test");	
    
    // 1. 스크롤 이벤트 발생
    $(window).scroll(function(){ // ① 스크롤 이벤트 최초 발생
         
        var currentScrollTop = $(window).scrollTop();   
    
        if( currentScrollTop - lastScrollTop > 0 ){
            // down-scroll : 현재 게시글 다음의 글을 불러온다.
            console.log("down-scroll");
            // 2. 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
            if ($(window).scrollTop() >= ($(document).height() - $(window).height()) ){ //② 현재스크롤의 위치가 화면의 보이는 위치보다 크다면
        		console.log("허원");	
            }
            }
        });	
            
 
    
 </script>
 
 
</body>
</html>