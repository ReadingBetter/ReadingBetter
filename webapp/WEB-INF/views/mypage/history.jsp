<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!doctype html>
<html>
<head>
<title>이번 달 학년 순위</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/readingbetter/assets/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="/readingbetter/assets/css/mypage.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="container-fluid">
		<c:import url='/WEB-INF/views/include/header.jsp' />
		<div class="row asideWrap">
			<div id="navigation" class="col-lg-2">
				<c:import url='/WEB-INF/views/include/navi_mypage.jsp' />
			</div>
			<div id="content" class="col-lg-10">
				<div id="history">
					<div class="small-menu">
						<a href="/readingbetter/main">홈</a> > <a
							href="/readingbetter/mypage/info">내 정보</a> > 나의 활동
					</div>
					<p class="menu-title">나의 활동</p>
					<br>

					<div class="col-lg-6">
						<div id="profile">
							<img id="img" class="img-circle"
								src="http://ec2-52-34-170-68.us-west-2.compute.amazonaws.com/images/pikachu.png">
							<br> <br>
							<p id="idtext">NAME :${ memberVo.name }</p>
							<br> <br>
						</div>
					</div>

					<div class="col-lg-6">
						<table id="info-table" class="table">
							<tr>
								<th>보유 캔디 수 :</th>
								<td>${scoresVo.point }</td>
							</tr>
							<tr>
								<th>누적 점수 :</th>
								<td>${scoresVo.totalScore }점</td>
							</tr>
							<tr>
								<th>이번 달 점수 :</th>
								<td>${scoresVo.score }점</td>
							</tr>
						</table>
					</div>

					<br> <br>
					<table id="history-table" class="table table-striped">
						<tr>
							<th>번호</th>
							<th>활동</th>
							<th>상세 내용</th>
							<th>점수</th>
							<th>캔디</th>
							<th>인증</th>
							<th>날짜</th>
						</tr>
						<c:forEach var='vo' items='${historylist}' varStatus='s'>
					
						<tr>
							<td>${vo.no}</td>
							<td>
								<c:choose>
                       				 <c:when test="${vo.identity == 0}">문제풀기</c:when>
                       				 <c:when test="${vo.identity == 1}">상점</c:when>
              					 </c:choose>
							</td>
							<td>
							${vo.title }</td>
							<td>${vo.score }</td>
							<td>
							<c:choose>
                       				 <c:when test="${vo.identity == 0}">+${vo.point }</c:when>
                       				 <c:when test="${vo.identity == 1}">-${vo.point }</c:when>
              				</c:choose>
							</td>
							
							<td>
							성공
							</td>
							<td>${vo.regDate}</td>
						</tr>
						</c:forEach>
					</table>
					<br>
				</div>
			</div>
		</div>
		<c:import url='/WEB-INF/views/include/footer.jsp' />
	</div>
</body>
</html>