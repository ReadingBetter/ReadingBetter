<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!doctype html>
<html>
<head>
<title>ReadingBetter</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/readingbetter/assets/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="/readingbetter/assets/css/mypage.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="container-fluid">
		<c:import url='/WEB-INF/views/include/header.jsp' />
		<div class="row asideWrap">
			<div id="navigation" class="col-lg-2"></div>
			<div id="content" class="col-lg-10">
				<div id="findjoin">
					<div class="small-menu">
						<a href="/readingbetter/main">홈</a> > 아이디 비밀번호 찾기
					</div>
					<p class="menu-title">아이디/비밀번호 찾기</p>
					
					<div id="radio-group">
						<form class="form-horizontal" action="" method="POST">
							<br>
							<p>아이디 찾기</p>
							<div class="form-group">
								<label class="col-sm-3 control-label">이름</label>
								<div class="col-sm-6">
									<input type="text" name="name" class="form-control" placeholder="Name">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label">이메일</label>
								<div class="col-sm-6">
									<input type="Email" name="email" class="form-control" placeholder="Email">
								</div>
							</div>
							<p>당신의 아이디는 :</p>
						</form>
					</div>

					<div id="radio-group">
						<form class="form-horizontal"  action="" method="POST">
							<br>
							<p>비밀 번호 찾기</p>
							<div class="form-group">
								<label for="inputID" class="col-sm-3 control-label">아이디</label>
								<div class="col-sm-6">
									<input type="text" name="id" class="form-control" id="inputID" placeholder="ID">
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputName" class="col-sm-3 control-label">이름</label>
								<div class="col-sm-6">
									<input type="text" name="name" class="form-control" id="inputPassword" placeholder="Name">
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputEmail" class="col-sm-3 control-label">이메일</label>
								<div class="col-sm-6">
									<input type="Email" name="email" class="form-control" id="inputEmail" placeholder="Email">
								</div>
							</div>
							<p>당신의 비밀번호는 :</p>
						</form>
					</div>
				</div>
			</div>
		</div>

		<c:import url='/WEB-INF/views/include/footer.jsp' />
	</div>
</body>
</html>