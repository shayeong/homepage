<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="style.css">
<style>
hr.hr-3 {
  border: 0;
  height: 0;
  border-top: 1px solid #8c8c8c;
}
.card-container {
  border: 1px solid #ddd; /* 테두리 스타일 및 두께 설정 */
  border-radius: 10px; /* 모서리를 둥글게 만듭니다. */
  padding: 10px; /* 박스 내부 여백 설정 */
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
}
a.no-underline {
  text-decoration: none;
  color: #000;
  width:90px;
}
.game-table {
  float: left; /* 테이블을 왼쪽으로 정렬 */
  margin-right: 20px; /* 테이블 간격 설정 (원하는 값으로 조절) */
}
</style>

</head>
<body>
<jsp:include page="/menu/top.jsp"/>
<div class='container mt-5' id="game">
<h2>웹 게임 목록</h2>
<hr class="hr-3">
    <table class='container mt-5'>	
        <tr>
        	<td class="cell game-table">
 				<div class="card-container"> <!-- 박스를 추가하기 위한 컨테이너 -->
    			<div class="image-container">
      				<a href="/webgame/mole.jsp">
        				<img src="../images/mole.png" class="bd-placeholder-img card-img-top" alt="두더지 잡기">
        				<div><a class="no-underline">두더지 잡기</a></div>
     				</a>
    			</div>
  				</div>
			</td>
			<td class="cell game-table">
 				<div class="card-container"> <!-- 박스를 추가하기 위한 컨테이너 -->
    			<div class="image-container">
      				<a href="#">
        				<img src="../images/x.png" class="bd-placeholder-img card-img-top" alt="두더지 잡기">
        				<div><a class="no-underline">x</a></div>
     				</a>
    			</div>
  				</div>
			</td>	

        </tr>
    </table>
</div>
<jsp:include page="/menu/bottom.jsp" />
</body>
</html>
