<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<c:if test="${param.msg=='수정 성공' }">
   <script>
      alert('정보수정에 성공하였습니다');
   </script>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
   body{
      background-color:#F2F2F2;
   }
   h2{
      text-align:center;
      margin-top:150px;
   }
   div{
      text-align:center;
   }
    #detail_btd{
       text-align:center;
       margin-top:20px;
      width:100px;
      height:30px;
      font-size:15px;
    }
</style>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
<jsp:include page="headerloginOk.jsp" />
   <div>
   <form action="loginOk.do" method="post">
      <h2>정보수정 완료</h2>
   </form>
   </div>
</body>
</html>