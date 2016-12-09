<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl forEach  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jstl 날짜 fotmat -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>​
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
                
                
                <c:forEach items="${list}" var="boardVO">
                    <tr class="listToChange">
                        <td class="scrolling" data-bno="${boardVO.bno}">
                            ${boardVO.bno}
                        </td>
                        <td>${boardVO.title}</td>
                        <td>${boardVO.writer}</td>
                        <td>${boardVO.regdate}</td>
                        <td>${boardVO.viewcnt}</td>
                    </tr> 
                </c:forEach>
 
                
              </tbody></table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
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
            console.log("down-scroll");
             
            // 2. 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
            if ($(window).scrollTop() >= ($(document).height() - $(window).height()) ){ //② 현재스크롤의 위치가 화면의 보이는 위치보다 크다면
                 
                // 3. class가 scrolling인 것의 요소 중 마지막인 요소를 선택한 다음 그것의 data-bno속성 값을 받아온다.
                //      즉, 현재 뿌려진 게시글의 마지막 bno값을 읽어오는 것이다.( 이 다음의 게시글들을 가져오기 위해 필요한 데이터이다.)
                var lastbno = $(".scrolling:last").attr("data-bno");
                 
                // 4. ajax를 이용하여 현재 뿌려진 게시글의 마지막 bno를 서버로 보내어 그 다음 20개의 게시물 데이터를 받아온다. 
                $.ajax({
                    type : 'post',  // 요청 method 방식 
                    url : 'InfiniteScrollDown',// 요청할 서버의 url
                    headers : { 
                        "Content-Type" : "application/json",
                        "X-HTTP-Method-Override" : "POST"
                    },
                    dataType : 'json', // 서버로부터 되돌려받는 데이터의 타입을 명시하는 것이다.
                    data : JSON.stringify({ // 서버로 보낼 데이터 명시 
                        bno : lastbno
                    }),
                    success : function(data){// ajax 가 성공했을시에 수행될 function이다. 이 function의 파라미터는 서버로 부터 return받은 데이터이다.
                         
                        var str = "";
                         
                        // 5. 받아온 데이터가 ""이거나 null이 아닌 경우에 DOM handling을 해준다.
                        if(data != ""){
                            //6. 서버로부터 받아온 data가 list이므로 이 각각의 원소에 접근하려면 each문을 사용한다.
                            $(data).each(
                                // 7. 새로운 데이터를 갖고 html코드형태의 문자열을 만들어준다.
                                function(){
                                    console.log(this);      
                                    str +=  "<tr class=" + "'listToChange'" + ">"
                                        +       "<td class=" +  "'scrolling'" + " data-bno='" + this.bno +"'>"
                                        +           this.bno
                                        +       "</td>"
                                        +       "<td>" + this.title + "</td>"      
                                        +       "<td>" + this.writer + "</td>"
                                        +       "<td>" + this.regdate + "</td>"
                                        +       "<td>" + this.viewcnt + "</td>"
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
                var firstbno = $(".scrolling:first").attr("data-bno");
                 
                // 4. ajax를 이용하여 현재 뿌려진 게시글의 첫 번째 bno를 서버로 보내어 그 이전의 20개의 게시물 데이터를 받아온다. 
                $.ajax({
                    type : 'post',  // 요청 method 방식 
                    url : 'infiniteScrollUp',// 요청할 서버의 url
                    headers : { 
                        "Content-Type" : "application/json",
                        "X-HTTP-Method-Override" : "POST"
                    },
                    dataType : 'json', // 서버로부터 되돌려받는 데이터의 타입을 명시하는 것이다.
                    data : JSON.stringify({ // 서버로 보낼 데이터 명시 
                        bno : firstbno
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
                                        +       "<td class=" +  "'scrolling'" + " data-bno='" + this.bno +"'>"
                                        +           this.bno
                                        +       "</td>"
                                        +       "<td>" + this.title + "</td>"      
                                        +       "<td>" + this.writer + "</td>"
                                        +       "<td>" + this.regdate + "</td>"
                                        +       "<td>" + this.viewcnt + "</td>"
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