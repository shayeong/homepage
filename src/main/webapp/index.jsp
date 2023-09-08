<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style>
table {
    border-collapse: collapse;
    margin: 0 auto; /* Center align horizontally */
  }
td {
    padding: 50px;
  }

a.no-underline {
  text-decoration: none;
  color: #000;
  width:90px;
}
td.section {
    margin-bottom: 20px;
}


</style>
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
  <table>
    <tr> 
      <td class="col-md-3">
        <h1><span class="glyphicon glyphicon-leaf"></span><i class="bi bi-vector-pen"></i> 게시판</h1>
        <h5><p><a href="/bbs/list.jsp" class="no-underline">게시판 목록</a></p></h5> <!-- Set text color to black here -->
        <h5><p><a href="bbs/createForm.jsp" class="no-underline">게시판 생성</a></p></h5>
      </td>
      <td class="col-md-3">
        <h1><span class="glyphicon glyphicon-leaf"></span><i class="bi bi-vector-pen"></i> 공지사항</h1>
        <h5><p><a href="/notice/list.jsp" class="no-underline">공지사항 목록</a></p></h5>
        <h5><p><a href="notice/createForm.jsp" class="no-underline">공지사항 생성</a></p></h5>
      </td>
    </tr>
    <tr>
      <td class="col-md-3">
        <h1><span class="glyphicon glyphicon-leaf"></span><i class="bi bi-vector-pen"></i> 투표</h1>
        <h5><p><a href="/poll/poll.jsp#section1" class="no-underline">투표 목록</a></p></h5>
        <h5><p><a href="/poll/poll.jsp#section3" class="no-underline">투표 생성</a></p></h5>
      </td>
      <td class="col-md-3">
        <h1><span class="glyphicon glyphicon-leaf"></span><i class="bi bi-vector-pen"></i> 웹 게임</h1>
        <h5><p><a href="/webgame/list.jsp" class="no-underline">웹 게임 목록</a></p></h5>
        <h5><p><a href="/webgame/mole.jsp" class="no-underline">두더지 잡기</a></p></h5>
      </td>
    </tr>
  </table>
</div>
<jsp:include page="/menu/bottom.jsp" />
</body>
</html>
