<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp study</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
	th,td{
		text-align:center
	}	
</style>
</head>
<body>
	<!--상단메뉴-->
	<div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a href="/index.jsp" class="navbar-brand">
				<i class="bi bi-house-door-fill"></i></a>
			<button class="navbar-toggler collapsed" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="navbar-collapse collapse" id="navbarResponsive" style="">
				<ul class="navbar-nav ms-md-auto">
					<li class="nav-item dropdown" data-bs-theme="light"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						href="#" id="themes" aria-expanded="false">게시판</a>
						<div class="dropdown-menu" aria-labelledby="themes">
							<a class="dropdown-item" href="/bbs/list.jsp">게시판 목록</a> <a
								class="dropdown-item" href="/bbs/createForm.jsp">게시판 생성</a>
						</div></li>

					<li class="nav-item dropdown" data-bs-theme="light"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						href="#" id="themes" aria-expanded="false">공지사항</a>
						<div class="dropdown-menu" aria-labelledby="themes">
							<a class="dropdown-item" href="/notice/list.jsp">공지사항 목록</a> <a
								class="dropdown-item" href="/notice/createForm.jsp">공지사항 생성</a>
						</div></li>
	
					<li class="nav-item dropdown" data-bs-theme="light"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						href="#" id="themes" aria-expanded="false">투표</a>
					<div class="dropdown-menu" aria-labelledby="themes">
							<a class="dropdown-item" href="/poll/poll.jsp#section1">투표 목록</a> 
							<a class="dropdown-item" href="/poll/poll.jsp#section3">투표 생성</a> 
						</div></li>
										
					<li class="nav-item dropdown" data-bs-theme="light"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						href="#" id="themes" aria-expanded="false">웹 게임</a>
					<div class="dropdown-menu" aria-labelledby="themes">
							<a class="dropdown-item" href="/webgame/list.jsp">웹게임 목록</a> 
							<a class="dropdown-item" href="/webgame/mole.jsp">두더지 잡기</a> 
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
	</div>
</body>
</html>