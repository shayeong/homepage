<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="game.js" defer="defer"></script>
<style>
.card-container {
	border: 3px solid #7d4f45; /* 테두리 스타일 및 두께 설정 */
	border-radius: 10px; /* 모서리를 둥글게 만듭니다. */
	padding: 10px; /* 박스 내부 여백 설정 */
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
}
.red-color {
	color: red;
}
</style>
</head>
<body>
	<jsp:include page="/menu/top.jsp" />
	<div class='container mt-5 card-container' style="text-align: center;">
		<h2>두더지 잡기</h2>
		<div>
			<button class="btn btn-outline-dark" id="start">시작</button>
			<button class="btn btn-outline-dark" id="refresh">처음으로</button>
			<a class="btn btn-outline-dark" href="list.jsp">목록</a>
		</div>
		<div>
			<h3 style="text-align: center;">
				<i class="bi bi-clock"></i><span id="timer">60</span>초
			</h3>
		</div>
		<div>
			<h3 style="display: inline-block; margin-right: 330px;">
				<i class="bi bi-heart-fill red-color"></i><span id="lives">목숨: 3</span>
			</h3>
			<h3 style="display: inline-block; margin-right: 10px;">
				Score: <span id="score">0</span>점
			</h3>
		</div>
		<div id="game">
			<table style="margin: 0 auto;">
				<tr>
					<td class="cell">
						<div class="hole"></div>
						<div class="gopher hidden"></div>
						<div class="bomb hidden"></div>
						<div class="hole-front"></div>
					</td>
					<td class="cell">
						<div class="hole"></div>
						<div class="gopher hidden"></div>
						<div class="bomb hidden"></div>
						<div class="hole-front"></div>
					</td>
					<td class="cell">
						<div class="hole"></div>
						<div class="gopher hidden"></div>
						<div class="bomb hidden"></div>
						<div class="hole-front"></div>
					</td>
				</tr>
				<tr>
					<td class="cell">
						<div class="hole"></div>
						<div class="gopher hidden"></div>
						<div class="bomb hidden"></div>
						<div class="hole-front"></div>
					</td>
					<td class="cell">
						<div class="hole"></div>
						<div class="gopher hidden"></div>
						<div class="bomb hidden"></div>
						<div class="hole-front"></div>
					</td>
					<td class="cell">
						<div class="hole"></div>
						<div class="gopher hidden"></div>
						<div class="bomb hidden"></div>
						<div class="hole-front"></div>
					</td>
				</tr>
				<tr>
					<td class="cell">
						<div class="hole"></div>
						<div class="gopher hidden"></div>
						<div class="bomb hidden"></div>
						<div class="hole-front"></div>
					</td>
					<td class="cell">
						<div class="hole"></div>
						<div class="gopher hidden"></div>
						<div class="bomb hidden"></div>
						<div class="hole-front"></div>
					</td>
					<td class="cell">
						<div class="hole"></div>
						<div class="gopher hidden"></div>
						<div class="bomb hidden"></div>
						<div class="hole-front"></div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<jsp:include page="/menu/bottom.jsp" />
</body>
</body>
</html>
