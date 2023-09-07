<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi_notice.jsp" %> 
<jsp:useBean  id="nao" class="com.notice.NoticeDAO"/>  
<jsp:useBean id="nto" class="com.notice.NoticeDTO" /> 
<jsp:setProperty name="nto" property="*"/>
<%
   
Map map = new HashMap();
map.put("noticeno", nto.getNoticeno());
map.put("passwd", nto.getPasswd());

boolean pflag = nao.passCheck(map);

boolean flag = false;
if(pflag)
	flag = nao.delete(nto.getNoticeno());
    
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function list(){
	let url = "list.jsp";
	url += "?nowPage=<%=request.getParameter("nowPage")%>";
	url += "&col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	
	location.href= url;
}
</script>
</head>
<body>
<jsp:include page="/menu/top.jsp" />
<div class="container">
<div class="container p-5 my-5 border">
	<%
		if(!pflag){
			out.println("패스워드 오류 입니다.");
		}else if(flag){
			out.println("글 삭제 성공 입니다.");
		}else{
			out.println("글 삭제 실패 입니다.");
		}
	%>
</div>
    <% if(!pflag) %> <button class="btn btn-light" onclick="history.back()">다시시도</button>
	<button class="btn btn-outline-dark" onclick="location.href='createForm.jsp'">다시등록</button>
	<button class="btn btn-outline-dark" onclick="list()">목록</button>
</div>
<jsp:include page="/menu/bottom.jsp" />
</body>
</html>