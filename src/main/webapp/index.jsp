<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

function section(n) {

    num = n;
    console.log(num);
    let url = 'poll.jsp?num=' + num;
    console.log(url);
    //location.href='#section2';
    location.href = url + '#section2';

}
</script>
</head>
<body>
<jsp:include page="/menu/top.jsp" />
<!--내용-->
<div class='container mt-5'>
<div class="col-md-3">
  <h3><span class="glyphicon glyphicon-leaf"></span> 게시판</h3>
  
  <p><a href="/bbs/list.jsp">게시판 목록</a></p>
  
  <p><a href="bbs/createForm.jsp">게시판 생성</a></p>
  
  <br>
  
  <h3><span class="glyphicon glyphicon-leaf"></span> 공지사항</h3>
  
  <p><a href="/notice/list.jsp">공지사항 목록</a></p>
  
  <p><a href="notice/createForm.jsp">공지사항 생성</a></p>
  
  <br>
   
</div>
  <div class="col-md-3">
  <h3><span class="glyphicon glyphicon-leaf"></span> 투표</h3>
  <p><a href="/poll/poll.jsp#section1">투표 목록</a></p>
  <p><a href="/poll/poll.jsp#section3">투표 생성</a></p>

  <br>
  
  <h3><span class="glyphicon glyphicon-leaf"></span> 웹게임</h3>
 
  <br>
   
</div>
</div>
<jsp:include page="/menu/bottom.jsp" />
</body>
</html>