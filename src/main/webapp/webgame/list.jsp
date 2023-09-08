<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
<jsp:include page="/menu/top.jsp"/>
<div class='container mt-5' id="game">
<h2>웹 게임 목록</h2>
    <table class='container mt-5' style="margin: 0 auto;">
        <tr>
            <td class="cell">
                <div class="image-container">
   					<a href="/webgame/mole.jsp"> <!-- 원하는 페이지의 URL로 href 설정 -->
        				<img src="../images/mole.png" alt="두더지 잡기">
       			 		<div class="text-overlay">두더지 잡기</div>
    				</a>
			</div>
            </td>
            <td class="cell">
                <div class="image-container">
                    <img src="../images/x.png">
                    <div class="text-overlay"></div>
                </div>
            </td>
            <td class="cell">
                <div class="image-container">
                    <img src="../images/x.png">
                    <div class="text-overlay"></div>
                </div>
            </td>
        </tr>
    </table>
</div>
<jsp:include page="/menu/bottom.jsp" />
</body>
</html>