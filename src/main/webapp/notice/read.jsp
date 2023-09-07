<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi_notice.jsp" %>
<jsp:useBean id="nao" class="com.notice.NoticeDAO" />
<%
	int noticeno = Integer.parseInt(request.getParameter("noticeno"));
	String nowPage = request.getParameter("nowPage");
	String col = request.getParameter("col");
	String word = request.getParameter("word");
	
	nao.upcnt(noticeno);//조회수 증가
    NoticeDTO nto = nao.read(noticeno); //한건 데이터 조회
    
    String content = nto.getContent().replaceAll("\r\n", "<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function list(){
	let url = "list.jsp";
	url += "?nowPage=<%=nowPage%>";
	url += "&col=<%=col%>";
	url += "&word=<%=word%>";
	
	location.href= url;
}

function reply(){
	let url = "replyForm.jsp";
	url += "?nowPage=<%=nowPage%>";
	url += "&col=<%=col%>";
	url += "&word=<%=word%>";
	url += "&noticeno=<%=noticeno%>";
	
	location.href= url;
}

function update(){
	let url = "updateForm.jsp";
	url += "?nowPage=<%=nowPage%>";
	url += "&col=<%=col%>";
	url += "&word=<%=word%>";
	url += "&noticeno=<%=noticeno%>";
	
	location.href= url;
}

function del(){
	let url = "deleteForm.jsp";
	url += "?nowPage=<%=nowPage%>";
	url += "&col=<%=col%>";
	url += "&word=<%=word%>";
	url += "&noticeno=<%=noticeno%>";
	
	location.href= url;
}
</script>

</head>
<body>
<jsp:include page="/menu/top.jsp"/>
<div class="container mt-5 mb-5">
  <h3>조회</h3>
  <ul class="list-group">
    <li class="list-group-item">작성자 : <%=nto.getWname() %></li>
    <li class="list-group-item">제목 : <%=nto.getTitle() %></li>
    <li class="list-group-item" style="height:250px;overflow-y:scroll"><%=content %></li>
    <li class="list-group-item">조회수 : <%=nto.getCnt() %></li>
    <li class="list-group-item">등록일 : <%=nto.getRdate() %></li>
  </ul>
  <br>
  <button class="btn btn-outline-dark" onclick="location='createForm.jsp'">등록</button>
  <button class="btn btn-outline-dark" onclick="del()">삭제</button>
  <button class="btn btn-outline-dark" onclick="update()">수정</button>
  <button class="btn btn-outline-dark" onclick="list()">목록</button>
</div>
<jsp:include page="/menu/bottom.jsp" />
</body>
</html>