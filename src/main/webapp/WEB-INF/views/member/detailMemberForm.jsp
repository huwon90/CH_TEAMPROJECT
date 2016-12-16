<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="conPath" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=f9140c2a61ea78900086516e1dfc9de9&libraries=services"></script>

<style>
   body{
      background-color:#F2F2F2;
   }
   table{
      overflow:fixed;
      margin-top:150px;
      margin-left:550px;
      width:860px;
      height:600px;
      border:1px solid #ACACAD;
   }
   caption{
      font-size:20px;
      color:black;
      margin-bottom:20px;
      text-align:left;
      padding-bottom:5px;
      border-bottom:2px solid black;
   }
   .detail_b{
      margin-top:20px;
      width:80px;
      height:40px;
      font-size:15px;
    }
    #detail_btd{
       text-align:center;
    }
    td{
       font-size:20px;
    }
    .modify_b1{
      margin-top:20px;
      width:80px;
      height:40px;
      font-size:15px;
    }
    #modify_btd1{
       text-align:center;
    }
</style>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
<jsp:include page="headerloginOk.jsp" />
   <div>
        <table>
           <caption>정보보기화면</caption>
           <tr>
              <th>아이디</th>
              <td>
                 ${detailMember.mId }
              </td>
           </tr>
           <tr>
              <th>이름</th>
              <td>
                 ${detailMember.mName }
              </td>
           </tr>
           <tr>
              <th>연락처</th>
              <td>
                 ${detailMember.mPhone1 }
                 -
                 ${detailMember.mPhone2 }
                 -
                 ${detailMember.mPhone3 }
              </td>
           </tr>
           <tr>
              <th>이메일</th>
              <td>
                 ${detailMember.mEmail }
              </td>
           </tr>
           <tr>
              <th>주소</th>
              <td>
                 우편번호 : ${detailMember.mAddress1 }<br>
                 도로명주소 : ${detailMember.mAddress2 }<br>
                 <form name="frm">
                    <input type="hidden" name="mapAddress" value="${detailMember.mAddress2 }">
                 </form>
                 지번주소 : ${detailMember.mAddress3 }<br>
                        
               <div id="map" style="width:300px; height:200px;"></div>
               <script src="${conPath }/js/map.js"></script>
              </td>
           </tr>
           <tr>
            <td colspan="2" id="modify_btd1">
               <input type="button" class="modify_b1" value="정보수정" onclick="location.href='modifyMemberForm.do?mId=${detailMember.mId }'">
               <input type="button" class="modify_b1" value="로그아웃" onclick="location.href='logout.do'">
               <input type="button" class="modify_b1" value="회원탈퇴" onclick="location.href='deleteOk.do'">
            </td>
           </tr>
        </table>   
   </div>
   
</body>
</html>