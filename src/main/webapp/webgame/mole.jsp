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
<script src="game.js" defer="defer"></script>
</head>
<body>
	<jsp:include page="/menu/top.jsp" />
	<div class='container mt-5' style="text-align: center;">
	<h2>두더지 잡기</h2>
        <div>
            <span id="timer">60</span>초&nbsp;
            <span id="score">0</span>점&nbsp;
            <span id="lives"> 목숨: 3</span>&nbsp;
            <button class="btn btn-light" id="start">시작</button>
            <button class="btn btn-light" id="refresh">처음으로</button>
            <a class="btn btn-light" href="list.jsp">목록</a>
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